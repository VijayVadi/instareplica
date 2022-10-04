//
//  FirebaseClient.swift
//  Pictopage
//
//  Created by Grewon on 09/09/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseStorage
import FirebaseAuth

typealias SQLiteResponseSuccess = (_ Status: Any?) -> Void
typealias SQLiteResponseError = (_ Status: Error) -> Void
typealias SQLiteResponseStatus = (_ Status: Bool) -> Void

private let _sharedInstance = FirebaseClient()

class FirebaseClient: NSObject {

    @objc class var sharedInstance: FirebaseClient {
        return _sharedInstance
    }
    
    var firebaseCurrentUser: userData?
    
    var firebaseTimestamp: Int64{
        return FirebaseFirestore.Timestamp().seconds
    }

    

    // Upload Image Function
    
    func uploadUserProfileImage(image: UIImage, completionSuccess: @escaping SQLiteResponseSuccess, completionError: @escaping SQLiteResponseError){
        
        guard let uploadData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
        let deviceID = UIDevice.current.identifierForVendor!.uuidString
        print(deviceID)
        
        let storageRef = Storage.storage().reference().child("pages").child(deviceID).child("userProfileImage").child(filename)
        storageRef.putData(uploadData, metadata: nil) { (metadata, err) in
            
            if let err = err {
                print("Failed to upload post image:", err)
                completionError(err)
            }
            
            storageRef.downloadURL(completion: { (downloadURL, err) in
                if let err = err {
                    print("Failed to retrieve downloadURL:", err)
                    completionError(err)
                }
                guard let imageUrl = downloadURL?.absoluteString else { return }
                print("Successfully uploaded post image:", imageUrl)
                completionSuccess(imageUrl)
            })
        }
        
    }
    
    // MARK:- UPDATE USER DATA
    
    func updateUserData(params: [String: Any], completionStatus: @escaping SQLiteResponseStatus, completionError: @escaping SQLiteResponseError){
        let db = Firestore.firestore()
        let washingtonRef = db.collection("users").document(Auth.auth().currentUser!.uid)
        washingtonRef.updateData(params) { err in
            if let err = err {
                print("Error updating document: \(err)")
                completionError(err)
            } else {
                print("Document successfully updated")
                completionStatus(true)
            }
        }
    }
    
    func updateUserActiveOnTime(){
        
        let params = [userData.UserKeys.lastActiveOn.rawValue: self.firebaseTimestamp]
        
        let db = Firestore.firestore()
        let washingtonRef = db.collection("users").document(Auth.auth().currentUser!.uid)
        washingtonRef.updateData(params) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
            }
        }
    }
    
    
    
    func adduserCountry(country: String){
        
        let ref = Firestore.firestore().collection("country")
        
        ref.whereField("country", isEqualTo: country).getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                if let documents = querySnapshot?.documents, documents.count != 0{
                    print("update/remove")
                }else{
                    print("add")
                    let params = [userData.UserKeys.country.rawValue: country]
                    
                    ref.document().setData(params) { (err) in
                        if let err = err {
                            print("Error updating document: \(err)")
                        } else {
                            print("Document successfully addedd")
                        }
                    }
                }
            }
        }
    }
    
    // MARK:- Get Function
    
    func getCurrentUserDataInAppDelegate(controller: UIViewController){
        let db = Firestore.firestore()
        
        var u_id = String()
        
        if let c_user = Auth.auth().currentUser{
            u_id = c_user.uid
            
            db.collection("users").document(u_id).getDocument() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    if let data = querySnapshot?.data(), data.count != 0{
                        let user = userData(uID: Auth.auth().currentUser!.uid, dictionary: data)
                        print(user)
                        self.firebaseCurrentUser = user
                    }
                }
            }
        }else{
            controller.naivgationToLoginScreen()
        }
    }
    
    
    func getCurrentUserData(controller: UIViewController, completionSuccess: @escaping SQLiteResponseSuccess)
    {
        let db = Firestore.firestore()
        
        var u_id = String()
        
        if let c_user = Auth.auth().currentUser{
            u_id = c_user.uid
        }else{
            controller.naivgationToLoginScreen()
        }
        
        db.collection("users").document(u_id).getDocument() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
                
            } else {
                if let data = querySnapshot?.data(), data.count != 0{
                    let user = userData(uID: Auth.auth().currentUser!.uid, dictionary: data)
                    print(user)
                    
                    completionSuccess(user)
                }
            }
        }
    }
    
    func getAllUserData(completionSuccess: @escaping SQLiteResponseSuccess)
    {
        let db = Firestore.firestore()
        db.collection("users").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                if let data = querySnapshot?.documents, data.count != 0{
                    completionSuccess(data)
                }
            }
        }
    }
    
    
    func getUserDataAboutUID(userID: String, completionSuccess: @escaping SQLiteResponseSuccess)
    {
        let db = Firestore.firestore()
        db.collection("users").document(userID).getDocument() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                if let data = querySnapshot?.data(), data.count != 0{
                    let user = userData(uID: userID, dictionary: data)
                    completionSuccess(user)
                }
            }
        }
    }
    
    func getPageData(pageID: String, completionSuccess: @escaping SQLiteResponseSuccess){
        let db = Firestore.firestore()
        
        if pageID.count != 0{
            db.collection("Pages").document(pageID).getDocument() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {

                    if let data = querySnapshot?.data(), data.count != 0{
                        let page = PageList(pageMainID: querySnapshot!.documentID, dictionary: data)
                        completionSuccess(page)
                    }
                }
            }
        }
    }
    
    
    func getAllPageList(completionSuccess: @escaping SQLiteResponseSuccess, completionError: @escaping SQLiteResponseError){
        
        let db = Firestore.firestore()
        db.collection("Pages").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
                completionError(err)
            } else {
                if let data = querySnapshot?.documents, data.count != 0{
                    completionSuccess(data)
                }
            }
        }
    }
    
    
    func getUserPagesPost(pageIDArr: [String], completionSuccess: @escaping SQLiteResponseSuccess){
        let db = Firestore.firestore()
        let citiesRef = db.collection("Posts")
        citiesRef.whereField("postedPagesId", in: pageIDArr).getDocuments { (querySnapshot, error) in
            if let err = error{
                print("Error getting documents: \(err)")
            }else{
                completionSuccess(querySnapshot?.documents)
            }
        }
    }
    
    func getUserOwnAndBookMarksPageList(userId: String, completionSuccess: @escaping SQLiteResponseSuccess){
        
        if userId.count != 0{
            
            let ref = Firestore.firestore().collection("Pages")
            
            ref.whereField("BookmarkUsers", arrayContains: userId).getDocuments { (snapshot, error) in
                if let err = error{
                    print("Error getting documents: \(err)")
                    completionSuccess(snapshot?.documents)
                }else{
                    completionSuccess(snapshot?.documents)
                }
            }
        }
    }
    
    // MARK:- GetBookMarkPageUser
    
    func GetBookMarkPageUser(pageId: String, completionSuccess: @escaping SQLiteResponseSuccess){
        
        if pageId.count != 0{
            
            let ref = Firestore.firestore().collection("users")
            
            ref.whereField("AllPages", arrayContains: pageId).getDocuments { (snapshot, error) in
                if let err = error{
                    print("Error getting documents: \(err)")
                    completionSuccess(snapshot?.documents)
                }else{
                    completionSuccess(snapshot?.documents)
                }
            }
        }
    }
    
    
    
    // MARK:- Get Total paticuler user post on particuler page.
    
    func getPostByPageIDAndUserID(pageID: String, userId: String, completionSuccess: @escaping SQLiteResponseSuccess, completionError: @escaping SQLiteResponseError){
        Firestore.firestore().collection("Posts").whereField("postedPagesId", isEqualTo: pageID).whereField("postCreatedUserID", isEqualTo: userId)
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                    completionError(err)
                } else {
                    completionSuccess(querySnapshot!.documents)
                }
        }
    }
    
    // MARK:- update Function
    
    func updateOwnPageDataInUserTable(pageId: String, completionStatus: @escaping SQLiteResponseStatus){
        
        guard let uid = Auth.auth().currentUser?.uid else {
            completionStatus(false)
            return
        }
        var ref: DocumentReference? = nil
        let para = [
            "myPages" : FieldValue.arrayUnion([pageId])
        ]
        ref = Firestore.firestore().collection("users").document(uid)
        ref?.updateData(para, completion: { (err) in
            if let err = err {
                print("Error adding document: \(err)")
                completionStatus(false)
            } else {
                completionStatus(true)
            }
        })
    }
    
    
    func updateAllPageDataInUserTable(pageId: String, isAdd: Bool, completionStatus: @escaping SQLiteResponseStatus){
        
        guard let uid = Auth.auth().currentUser?.uid else {
            completionStatus(false)
            return
        }
        
        var para = [String: Any]()
        
        if isAdd{
            para = [
                "AllPages" : FieldValue.arrayUnion([pageId])
            ]
        }else{
            para = [
                "AllPages": FieldValue.arrayRemove([pageId]),
            ]
        }
        
        
        Firestore.firestore().collection("users").document(uid).updateData(para, completion: { (err) in
            if let err = err {
                print("Error adding document: \(err)")
                completionStatus(false)
            } else {
                completionStatus(true)
            }
        })
    }
    
    func updatePageDataInPosTable(pageID: String, pageName: String, completionStatus: @escaping SQLiteResponseStatus){
        
        Firestore.firestore().collection("Posts").whereField("postedPagesId", isEqualTo: pageID)
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                    completionStatus(true)
                } else {
                    if let documents = querySnapshot?.documents, documents.count != 0{
                        for doc in documents{
                            doc.reference.updateData([
                                "postedPagesName": pageName
                            ], completion: { (error) in
                                if let err = error {
                                    print("Error adding document: \(err)")
                                    completionStatus(false)
                                }
                            })
                        }
                        completionStatus(true)
                    }else{
                        completionStatus(true)
                    }
                }
        }
    }
    
    func deletePostWhenPageDelete(pageID: String, completionStatus: @escaping SQLiteResponseStatus){
        Firestore.firestore().collection("Posts").whereField("postedPagesId", isEqualTo: pageID)
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                    completionStatus(true)
                } else {
                    if let documents = querySnapshot?.documents, documents.count != 0{
                        for doc in documents{
                            doc.reference.delete() { err in
                                completionStatus(true)
                            }
                        }
                    }else{
                        completionStatus(true)
                    }
                }
        }
    }
    
    func updateBookmarkTableData(pageId: String, userID: String, userType: String, isAlreadyType: String, isChange: Bool, completionStatus: @escaping SQLiteResponseStatus){
        
        
        /*"Owner", "Admin", "Viewer", "Member"*/
        
        if isChange{
            var setpara = [String: Any]()
            var removepara = [String: Any]()
            
            if userType == "Owner"{
                setpara = ["OwnerArr": FieldValue.arrayUnion([userID])]
            }else if userType == "Admin"{
                setpara = ["AdminArr": FieldValue.arrayUnion([userID])]
            }else if userType == "Member"{
                setpara = ["MemberArr": FieldValue.arrayUnion([userID])]
            }else{
                setpara = ["ViewerArr": FieldValue.arrayUnion([userID])]
            }
            
            if isAlreadyType == "Owner"{
                removepara = ["OwnerArr": FieldValue.arrayRemove([userID])]
            }else if isAlreadyType == "Admin"{
                removepara = ["AdminArr": FieldValue.arrayRemove([userID])]
            }else if isAlreadyType == "Member"{
                removepara = ["MemberArr": FieldValue.arrayRemove([userID])]
            }else{
                removepara = ["ViewerArr": FieldValue.arrayRemove([userID])]
            }
            
            
            let washingtonRef = Firestore.firestore().collection("Pages").document(pageId)
            washingtonRef.updateData(setpara) { (err) in
                if let err = err {
                    print("Error adding document: \(err)")
                    completionStatus(false)
                } else {
                    if isAlreadyType.count != 0{
                        washingtonRef.updateData(removepara) { (err) in
                            if let err = err {
                                print("Error adding document: \(err)")
                                completionStatus(false)
                            } else {
                                completionStatus(true)
                            }
                        }
                    }else{
                        completionStatus(true)
                    }
                }
            }
        }else{
            var removepara = [String: Any]()
            
            if isAlreadyType == "Owner"{
                removepara = ["OwnerArr": FieldValue.arrayRemove([userID])]
            }else if isAlreadyType == "Admin"{
                removepara = ["AdminArr": FieldValue.arrayRemove([userID])]
            }else if isAlreadyType == "Member"{
                removepara = ["MemberArr": FieldValue.arrayRemove([userID])]
            }else{
                removepara = ["ViewerArr": FieldValue.arrayRemove([userID])]
            }
            
            let washingtonRef = Firestore.firestore().collection("Pages").document(pageId)
            washingtonRef.updateData(removepara) { (err) in
                if let err = err {
                    print("Error adding document: \(err)")
                    completionStatus(false)
                } else {
                    completionStatus(true)
                }
            }
        }
    }
    
    // MARK:- Add/Remove BookMark Page
    
    func setBookMarkPage(pageId: String, userID: String, isBookMark: Bool, completionStatus: @escaping SQLiteResponseStatus){

        let washingtonRef = Firestore.firestore().collection("Pages").document(pageId)

        var para = [String: Any]()
        if isBookMark{
            para = ["BookmarkUsers": FieldValue.arrayUnion([userID])]
        }else{
            para = ["BookmarkUsers": FieldValue.arrayRemove([userID])]
        }
        
        washingtonRef.updateData(para) { (err) in
            if let err = err {
                print("Error adding document: \(err)")
                completionStatus(false)
            } else {
                completionStatus(true)
            }
        }
    }
    
    
    // MARK:- Post Like
    
    func setLikePost(postId: String, isLike: Bool, completionStatus: @escaping SQLiteResponseStatus){
        var para = [String: Any]()
        guard let uid = Auth.auth().currentUser?.uid else {
            completionStatus(false)
            return
        }
        
        
        if isLike{
            para = [
                "postLikeUsers" : FieldValue.arrayUnion([uid])
            ]
        }else{
            para = [
                "postLikeUsers": FieldValue.arrayRemove([uid]),
            ]
        }
        
        Firestore.firestore().collection("Posts").document(postId).updateData(para, completion: { (err) in
            if let err = err {
                print("Error adding document: \(err)")
                completionStatus(false)
            } else {
                completionStatus(true)
            }
        })
    }
    
    // MARK:- Add commmet
    
    func setComment(postID: String, commentData: [String:Any], completionStatus: @escaping SQLiteResponseStatus){
        var ref: DocumentReference? = nil
        
        ref = Firestore.firestore().collection("Posts").document(postID).collection("Comments").document()
        ref?.setData(commentData, completion: { (err) in
            if let err = err {
                print("Error adding document: \(err)")
                completionStatus(false)
            } else {
                completionStatus(true)
            }
        })
    }
    
    // MARK:- Get Comment
    
    func getCommentAboutPostID(postID: String, completionSuccess: @escaping SQLiteResponseSuccess){
        
        Firestore.firestore().collection("Posts").document(postID).collection("Comments").getDocuments(completion: { (snapshot, error) in
            
            if snapshot?.documents.count != 0{
                if let err = error {
                    print("Error getting documents: \(err)")
                    completionSuccess(snapshot?.documents)
                } else {
                    completionSuccess(snapshot?.documents)
                }
            }else{
                print("No data found")
                completionSuccess(snapshot?.documents)
            }
        })
    }
    
    // MARK:- setSub Comment
    
    func setSubComment(postID: String, commentID: String, commentData: [String:Any], completionStatus: @escaping SQLiteResponseStatus){
        var ref: DocumentReference? = nil
        
        ref = Firestore.firestore().collection("Posts").document(postID).collection("Comments").document(commentID).collection("subComments").document()
        ref?.setData(commentData, completion: { (err) in
            if let err = err {
                print("Error adding document: \(err)")
                completionStatus(false)
            } else {
                completionStatus(true)
            }
        })
    }
    
    // MARK:- Get subComment
    
    func getsubCommentAboutCommentID(postID: String, commentID: String, completionSuccess: @escaping SQLiteResponseSuccess){
        
        Firestore.firestore().collection("Posts").document(postID).collection("Comments").document(commentID).collection("subComments").getDocuments(completion: { (snapshot, error) in
            
            if snapshot?.documents.count != 0{
                if let err = error {
                    print("Error getting documents: \(err)")
                    completionSuccess(snapshot?.documents)
                } else {
                    completionSuccess(snapshot?.documents)
                }
            }else{
                print("No data found")
                completionSuccess(snapshot?.documents)
            }
        })
    }
    
    // MARK:- Like Comment
    
    func LikeComment(commentID: String, postId: String, isLike: Bool, completionStatus: @escaping SQLiteResponseStatus){
       
        var para = [String: Any]()
        guard let uid = Auth.auth().currentUser?.uid else {
            completionStatus(false)
            return
        }
        
        if isLike{
            para = [
                "commentLikeUser" : FieldValue.arrayUnion([uid])
            ]
        }else{
            para = [
                "commentLikeUser": FieldValue.arrayRemove([uid]),
            ]
        }
        
        
        Firestore.firestore().collection("Posts").document(postId).collection("Comments").document(commentID).updateData(para, completion: { (err) in
            if let err = err {
                print("Error adding document: \(err)")
                completionStatus(false)
            } else {
                completionStatus(true)
            }
        })
    }
    
    
    // MARK:- Like subComment
    
    func LikeSubComment(commentID: String, postId: String, subCommentID: String, isLike: Bool, completionStatus: @escaping SQLiteResponseStatus){
       
        var para = [String: Any]()
        
        guard let uid = Auth.auth().currentUser?.uid else {
            completionStatus(false)
            return
        }
        
        if isLike{
            para = [
                "subcommentLikeUsers" : FieldValue.arrayUnion([uid])
            ]
        }else{
            para = [
                "subcommentLikeUsers" : FieldValue.arrayRemove([uid])
            ]
        }
        
        Firestore.firestore().collection("Posts").document(postId).collection("Comments").document(commentID).collection("subComments").document(subCommentID).updateData(para, completion: { (err) in
            if let err = err {
                print("Error adding document: \(err)")
                completionStatus(false)
            } else {
                completionStatus(true)
            }
        })
    }
    
    
    // MARK:- Update user Data
    
    func updateUserDataInPagesTable(userFullName: String, userProfilePicture: String, completionStatus: @escaping SQLiteResponseStatus){
        
        
        let washingtonRef = Firestore.firestore().collection("Pages")
        
        washingtonRef
            .whereField("pagecreatedUserID", isEqualTo: Auth.auth().currentUser!.uid)
        .getDocuments() { (querySnapshot, err) in
            if let err = err {
                // Some error occured
                print(err)
                completionStatus(false)
            } else if querySnapshot!.documents.count != 1 {
                // Perhaps this is an error for you?
                completionStatus(false)
                
                if let doct = querySnapshot?.documents, doct.count != 0{
                    print("doc count",doct.count)
                    for document in doct {
                        print("\(document.documentID) => \(document.data())")
                        
                        document.reference.updateData([
                            "pageCreatedUserFullName": userFullName,
                            "pageCreatedUserProfilePicture": userProfilePicture
                        ], completion: { (error) in
                            if let err = error {
                                print("Error adding document: \(err)")
                                completionStatus(false)
                            } else {
                                
                            }
                        })
                    }
                    completionStatus(true)
                }
                
            } else {
                let document = querySnapshot!.documents.first
                document?.reference.updateData([
                    "pageCreatedUserFullName": userFullName,
                    "pageCreatedUserProfilePicture": userProfilePicture
                ], completion: { (error) in
                    if let err = error {
                        print("Error adding document: \(err)")
                        completionStatus(false)
                    } else {
                        completionStatus(true)
                    }
                })
            }
        }
    }
    
    func updateUserDataInPostsTable(userFullName: String, userProfilePicture: String, completionStatus: @escaping SQLiteResponseStatus){
        
        
        let washingtonRef = Firestore.firestore().collection("Posts")
        
        washingtonRef
            .whereField("postCreatedUserID", isEqualTo: Auth.auth().currentUser!.uid)
        .getDocuments() { (querySnapshot, err) in
            if let err = err {
                // Some error occured
                print(err)
                completionStatus(false)
            } else if querySnapshot!.documents.count != 1 {
                // Perhaps this is an error for you?
                completionStatus(false)
                
                if let doct = querySnapshot?.documents, doct.count != 0{
                    print("doc count",doct.count)
                    self.updateuserDataInCommentTable(sender: doct, userFullName: userFullName, userProfilePicture: userProfilePicture)
                    for document in doct {
                        print("\(document.documentID) => \(document.data())")
                        
                        document.reference.updateData([
                            "postCreatedUserFullName": userFullName,
                            "postCreatedUserProfilePicture": userProfilePicture
                        ], completion: { (error) in
                            if let err = error {
                                print("Error adding document: \(err)")
                                completionStatus(false)
                            } else {
                                
                            }
                        })
                    }
                    completionStatus(true)
                }
                
            } else {
                let document = querySnapshot!.documents.first
                self.updateuserDataInCommentTable(sender: querySnapshot!.documents, userFullName: userFullName, userProfilePicture: userProfilePicture)
                document?.reference.updateData([
                    "pageCreatedUserFullName": userFullName,
                    "pageCreatedUserProfilePicture": userProfilePicture
                ], completion: { (error) in
                    if let err = error {
                        print("Error adding document: \(err)")
                        completionStatus(false)
                    } else {
                        completionStatus(true)
                    }
                })
            }
        }
    }
    
    func updateuserDataInCommentTable(sender: [QueryDocumentSnapshot], userFullName: String, userProfilePicture: String){
        
        for doc in sender{
            
            let commentRef = Firestore.firestore().collection("Posts").document(doc.documentID).collection("Comments")
            
            commentRef
                .whereField("CommentUserID", isEqualTo: Auth.auth().currentUser!.uid)
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    // Some error occured
                    print(err)
                } else if querySnapshot!.documents.count != 1 {
                    // Perhaps this is an error for you?
                    
                    
                    
                    if let doct = querySnapshot?.documents, doct.count != 0{
                        print("doc count",doct.count)
//                        self.updateUserDataInSubCommentTable(sender: doct, userFullName: userFullName, userProfilePicture: userProfilePicture)
                        for document in doct {
                            print("\(document.documentID) => \(document.data())")
                            
                            document.reference.updateData([
                                "CommentUserFullName": userFullName,
                                "CommentUserProfile": userProfilePicture
                            ], completion: { (error) in
                                if let err = error {
                                    print("Error adding document: \(err)")
                                } else {
                                    
                                }
                            })
                        }
                    }
                } else {
                    let document = querySnapshot!.documents.first
                    document?.reference.updateData([
                        "CommentUserFullName": userFullName,
                        "CommentUserProfile": userProfilePicture
                    ], completion: { (error) in
                        if let err = error {
                            print("Error adding document: \(err)")
                        } else {
                        }
                    })
                }
            }
        }
        
    }
    
    func updateUserDataInSubCommentTable(sender: [QueryDocumentSnapshot], userFullName: String, userProfilePicture: String){
        for doc in sender{
            
            let commentRef = doc.reference.collection("Comments").document(doc.documentID).collection("subComments")
            
            commentRef
                .whereField("subCommentUserID", isEqualTo: Auth.auth().currentUser!.uid)
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    // Some error occured
                    print(err)
                } else if querySnapshot!.documents.count != 1 {
                    // Perhaps this is an error for you?
                    
                    
                    if let doct = querySnapshot?.documents, doct.count != 0{
                        print("doc count",doct.count)
                        for document in doct {
                            print("\(document.documentID) => \(document.data())")
                            
                            document.reference.updateData([
                                "subCommentUserFullName": userFullName,
                                "subCommentUserProfile": userProfilePicture
                            ], completion: { (error) in
                                if let err = error {
                                    print("Error adding document: \(err)")
                                } else {
                                    
                                }
                            })
                        }
                    }
                } else {
                    let document = querySnapshot!.documents.first
                    document?.reference.updateData([
                        "subCommentUserFullName": userFullName,
                        "subCommentUserProfile": userProfilePicture
                    ], completion: { (error) in
                        if let err = error {
                            print("Error adding document: \(err)")
                        } else {
                        }
                    })
                }
            }
        }
    }
}
