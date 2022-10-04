//
//  newCreatePageProcessVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 04/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase


class newCreatePageProcessVC: UIViewController {

    let firstNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Hey Firstname"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let CreatingPageLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "We’re creating your page"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "It shouldn’t take too long"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionLable1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "This is where a statment will be displayed to cycle."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionLable2: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Did you know?"
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let loaderImageview: UIImageView = {
        let img = UIImageView()
        img.image = UIImage.gif(name: "LoadingLogoNewNext")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    
    var selectImage = UIImage()
    var pageName = String()
    var pageDescription = String()
    var userName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = whiteF9FAF9
        
        self.view.addSubview(self.firstNameLable)
        self.firstNameLable.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 90, paddingLeft: 116.5, paddingBottom: 0, paddingRight: 116.5, width: 0, height: 24)
        self.firstNameLable.text = "Hey \(self.userName), we’re creating your Page."
        
        self.view.addSubview(self.CreatingPageLable)
        self.CreatingPageLable.anchor(top: self.firstNameLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 8, paddingLeft: 69, paddingBottom: 0, paddingRight: 69, width: 0, height: 24)
        
        self.view.addSubview(self.DescriptionLable)
        self.DescriptionLable.anchor(top: self.CreatingPageLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 20, paddingLeft: 96.5, paddingBottom: 0, paddingRight: 96.5, width: 0, height: 20)
        
        self.view.addSubview(self.DescriptionLable1)
        self.DescriptionLable1.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 68.5, paddingBottom: 82, paddingRight: 68.5, width: 0, height: 43)
        
        self.view.addSubview(self.DescriptionLable2)
        self.DescriptionLable2.anchor(top: nil, left: self.view.leftAnchor, bottom: self.DescriptionLable1.topAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 124, paddingBottom: 21, paddingRight: 124, width: 0, height: 22)
        
        // spinner
        self.view.addSubview(self.loaderImageview)
        self.loaderImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 75, height: 75)
        self.loaderImageview.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.loaderImageview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
        self.handleuploadImage()
    }
    
}


extension newCreatePageProcessVC{
    
    @objc func handleuploadImage() {
        
        guard let usr = FirebaseClient.sharedInstance.firebaseCurrentUser else {
            return
        }
        print(usr.userID)
        
       
        let image = self.selectImage
        
        guard let uploadData = image.jpegData(compressionQuality: 0.3) else {
            return
        }
        
        let filename = NSUUID().uuidString
        let deviceID = UIDevice.current.identifierForVendor!.uuidString
        
        let storageRef = Storage.storage().reference().child("pages").child(deviceID).child("thumbnails").child(filename)
        storageRef.putData(uploadData, metadata: nil) { (metadata, error) in
            if error != nil {
                print(error!._code)
                self.view.makeToast(error?.localizedDescription)
                return
            }
            
            storageRef.downloadURL(completion: { (downloadURL, err) in
                guard let thumbnailImageUrl = downloadURL?.absoluteString else {
                    return
                }
                print("Successfully uploaded profile image:", thumbnailImageUrl)
                self.handleCreatePage(uID: usr.userID, userFullName: usr.FullName!, userProfilePicture: usr.ProfilePicture!, userName: usr.UserName!, pageImageURL: thumbnailImageUrl, pictoID: usr.pictoID!)
            })
        }
    }
    
    func handleCreatePage(uID: String, userFullName: String, userProfilePicture: String, userName: String, pageImageURL: String, pictoID: String){
        
        var ref: DocumentReference? = nil
        var params = [String: Any]()
        
        params = [
            "pagecreatedUserID": uID,
            "pageCreatedUserFullName": userFullName,
            "pageCreatedUserName": userName,
            "pageCreatedUserProfilePicture": userProfilePicture,
            "thumbnailImageUrlOne": pageImageURL,
            "thumbnailImageUrlTwo": "",
            "page_name": self.pageName,
            "page_id": "",
            "pictoID": pictoID,
            "PageDescription": self.pageDescription,
            "pageCreationDate": Date().timeIntervalSince1970,
            "isVerified": 0,
            "isOfficialPage": 0
        ]
        
        ref = Firestore.firestore().collection("Pages").document()
        ref?.setData(params, completion: { (err) in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
                self.setOwnerPageInDataBase(pageId: ref!.documentID)
            }
        })
    }
    
    func setOwnerPageInDataBase(pageId: String){
        
        FirebaseClient.sharedInstance.updateOwnPageDataInUserTable(pageId: pageId) { (isSuccess) in
            if isSuccess{
                FirebaseClient.sharedInstance.updateAllPageDataInUserTable(pageId: pageId, isAdd: true) { (isComplete) in
                    if isComplete{
                        self.setBookMarkData(pageID: pageId)
                    }else{
                        self.view.makeToast("All page data not Update")
                    }
                }
            }else{
                self.view.makeToast("user own page data not Update")
            }
        }
    }
    
    func setBookMarkData(pageID: String){
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        FirebaseClient.sharedInstance.setBookMarkPage(pageId: pageID, userID: uid, isBookMark: true) { (_) in
            FirebaseClient.sharedInstance.updateBookmarkTableData(pageId: pageID, userID: uid, userType: "Owner", isAlreadyType: "", isChange: true) { (isSuccess) in
                if isSuccess{
//                    let vc = createPageCompleteVC()
//                    vc.selectImage = self.selectImage
//                    vc.pageName = self.pageName
//                    vc.pageNameWithID = ""
//                    vc.pageDescriptionText = self.pageDescription
//                    self.navigationController?.pushViewController(vc, animated: true)
                    self.view.makeToast("Page Created")
                    let vc = MainVC()
                    isBackUserProfileScreen = 0
                    isNavigateToLaunchVC = true
                    self.navigationController?.pushViewController(vc, animated: false)
                }else{
                    self.view.makeToast("BookMarkData not Update")
                }
            }
        }
    }
    
}
