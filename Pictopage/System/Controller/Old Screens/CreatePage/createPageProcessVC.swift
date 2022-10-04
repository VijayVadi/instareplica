//
//  createPageProcessVC.swift
//  Pictopage
//
//  Created by Grewon on 20/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
import FirebaseFirestore

class createPageProcessVC: UIViewController, UIGestureRecognizerDelegate {

    let createPageBackImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "CreatePageBackgroundRectangle")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let createPageLogoImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "createPageLogo")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let TitleView: UIView = {
        let v = UIView()
        return v
    }()
    
    let TitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Hey Vijay, we’re creating your Page."
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TitleLableText1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "It shouldn’t take too long"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ProgressView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    var progressImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "PictopageLogoGifWhite")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let bottomTextview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let BottomLableText: UIView = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Did you know..."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let BottomLableText1: UIView = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Pictopage took 13 months of\ndevelopment until the release of its first\nversion"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let skipButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Skip", for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        btn.setTitleColor(UIColor.white, for: .normal)
        return btn
    }()
    
    let loaderImageview: UIImageView = {
        let img = UIImageView()
        img.image = UIImage.gif(name: "PictopageLogoLaunchScreenGIF")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    var pageName = String()
    var pageNameID = String()
    var pageDescriptionText = String()
    var selectImage = UIImage()
    var uploadImageCount = Int()
    var uploadImageURLArr = [String]()
    var userName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.view.backgroundColor = UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
        
        // setup background image
        
        self.view.addSubview(self.createPageBackImageview)
        self.createPageBackImageview.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 77)
        
        self.headerView.addSubview(self.createPageLogoImageview)
        self.createPageLogoImageview.anchor(top: nil, left: nil, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 183, height: 47)
        self.createPageLogoImageview.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor).isActive = true
        
        // setup Title Textview
        
        self.view.addSubview(self.TitleView)
        self.TitleView.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 33, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 316, height: 100)
        self.TitleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.TitleView.addSubview(self.TitleLableText)
        self.TitleLableText.anchor(top: self.TitleView.topAnchor, left: self.TitleView.leftAnchor, bottom: nil, right: self.TitleView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 55)
        self.TitleLableText.text = "Hey \(self.userName), we’re creating your Page."
        
        self.TitleView.addSubview(self.TitleLableText1)
        self.TitleLableText1.anchor(top: self.TitleLableText.bottomAnchor, left: self.TitleView.leftAnchor, bottom: self.TitleView.bottomAnchor, right: self.TitleView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // Progress view
        
        self.view.addSubview(self.ProgressView)
        self.ProgressView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 84.0, height: 84.0)
        self.ProgressView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.ProgressView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // Bottom text lable view
        
        self.view.addSubview(self.bottomTextview)
        self.bottomTextview.anchor(top: self.ProgressView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 90, paddingLeft: 18, paddingBottom: 0, paddingRight: 18, width: 0, height: 132)
        
        self.bottomTextview.addSubview(self.BottomLableText)
        self.BottomLableText.anchor(top: self.bottomTextview.topAnchor, left: self.bottomTextview.leftAnchor, bottom: nil, right: self.bottomTextview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 30.0)
        
        self.bottomTextview.addSubview(self.BottomLableText1)
        self.BottomLableText1.anchor(top: self.BottomLableText.bottomAnchor, left: self.bottomTextview.leftAnchor, bottom: self.bottomTextview.bottomAnchor, right: self.bottomTextview.rightAnchor, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        
        // Setup skip button view
        
        self.view.addSubview(self.skipButton)
        self.skipButton.anchor(top: self.bottomTextview.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: nil, paddingTop: 3, paddingLeft: 103, paddingBottom: 0, paddingRight: 0, width: 34, height: 20)
        self.skipButton.addTarget(self, action: #selector(self.click_skip), for: .touchUpInside)
        
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        self.view.addSubview(self.loaderImageview)
        self.loaderImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
        self.loaderImageview.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.loaderImageview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
//        self.handleuploadImage()
    }
 
    // MARK:- Button Action
    
    @objc func click_skip()
    {
//        let vc = createPageCompleteVC()
//        vc.selectImage = self.selectImage
//        vc.pageName = self.pageName
//        vc.pageNameWithID = self.pageNameID
//        self.navigationController?.pushViewController(vc, animated: true)
    }

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
                self.uploadImageURLArr.append(thumbnailImageUrl)
                self.handleCreatePage(uID: usr.userID, userFullName: usr.FullName!, userProfilePicture: usr.ProfilePicture!, userName: usr.UserName!)
            })
        }
    }
    
    func handleCreatePage(uID: String, userFullName: String, userProfilePicture: String, userName: String){
        
        var ref: DocumentReference? = nil
        var params = [String: Any]()
        
        if self.uploadImageURLArr.count == 2{
            params = [
                "pagecreatedUserID": uID,
                "pageCreatedUserFullName": userFullName,
                "pageCreatedUserName": userName,
                "pageCreatedUserProfilePicture": userProfilePicture,
                "thumbnailImageUrlOne": self.uploadImageURLArr[0],
                "thumbnailImageUrlTwo": self.uploadImageURLArr[1],
                "page_name": self.pageName,
                "page_id": self.pageNameID,
                "PageDescription": self.pageDescriptionText,
                "pageCreationDate": Date().timeIntervalSince1970,
                "isVerified": 0
            ]
        }else{
            params = [
                "pagecreatedUserID": uID,
                "pageCreatedUserFullName": userFullName,
                "pageCreatedUserName": userName,
                "pageCreatedUserProfilePicture": userProfilePicture,
                "thumbnailImageUrlOne": self.uploadImageURLArr[0],
                "thumbnailImageUrlTwo": "",
                "page_name": self.pageName,
                "page_id": self.pageNameID,
                "PageDescription": self.pageDescriptionText,
                "pageCreationDate": Date().timeIntervalSince1970,
                "isVerified": 0
            ]
        }
        
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
                    let vc = createPageCompleteVC()
                    vc.selectImage = self.selectImage
                    vc.pageName = self.pageName
                    vc.pageNameWithID = self.pageNameID
                    vc.pageDescriptionText = self.pageDescriptionText
                    self.navigationController?.pushViewController(vc, animated: true)
                }else{
                    self.view.makeToast("BookMarkData not Update")
                }
            }
        }
    }

}

