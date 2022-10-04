//
//  createAccountLoadingVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 18/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore


class createAccountLoadingVC: UIViewController {

    
    let titleLabel : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Hello"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let welcomeLabel : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Welcome to Pictopage"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let creatingAccountLabel : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "We’re creating your account."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let loaderImageview: UIImageView = {
        let img = UIImageView()
        img.image = UIImage.gif(name: "LoadingLogoNewNext")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    let knowLabel : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Did you know?"
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "This is where a statment will be\ndisplayed to cycle."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var userEmail = String()
    var userPassword = String()
    var userFisrtname = String()
    var userLastName = String()
    var userBirthday = String()
    var userPictoID = String()
    var uploadedImageURl = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // title lable
        self.view.addSubview(self.titleLabel)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.titleLabel.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 90, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 24)
        }else{
            self.titleLabel.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 115, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 24)
        }
        
        // welcome lable
        self.view.addSubview(self.welcomeLabel)
        self.welcomeLabel.anchor(top: self.titleLabel.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 8, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 24)
        
        // creating lable
        self.view.addSubview(self.creatingAccountLabel)
        self.creatingAccountLabel.anchor(top: self.welcomeLabel.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 20, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 20)
        
        // spinner
        self.view.addSubview(self.loaderImageview)
        self.loaderImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 75, height: 75)
        self.loaderImageview.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.loaderImageview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // Description lable
        self.view.addSubview(self.descriptionLable)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.descriptionLable.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 83, paddingRight: 25, width: 0, height: 45)
        }else{
            self.descriptionLable.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.safeBottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 126, paddingRight: 25, width: 0, height: 45)
        }
        
        // Know lable
        self.view.addSubview(self.knowLabel)
        self.knowLabel.anchor(top: nil, left: nil, bottom: self.descriptionLable.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 21, paddingRight: 0, width: 127, height: 22)
        self.knowLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.titleLabel.text = "Hello \(self.userFisrtname)"
        self.uploadUserProfileImage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    

}

// MARK:- Firebase Function

extension createAccountLoadingVC{
    
    func uploadUserProfileImage(){
        
        let image = UIImage(named: "userLogo1x")
        guard let uploadData = image!.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
        let deviceID = UIDevice.current.identifierForVendor!.uuidString
        print(deviceID)
        
        let storageRef = Storage.storage().reference().child("pages").child(deviceID).child("userProfileImage").child(filename)
        storageRef.putData(uploadData, metadata: nil) { (metadata, err) in
            
            if let err = err {
                self.navigationItem.rightBarButtonItem?.isEnabled = true
                print("Failed to upload post image:", err)
                return
            }
            
            storageRef.downloadURL(completion: { (downloadURL, err) in
                if let err = err {
                    print("Failed to retrieve downloadURL:", err)
                    return
                }
                
                guard let imageUrl = downloadURL?.absoluteString else { return }
                print("Successfully uploaded post image:", imageUrl)
                self.uploadedImageURl = imageUrl
                self.createAccount()
            })
        }
        
    }
    
    
    func createAccount()
    {
        var ref: DocumentReference? = nil
        
        Auth.auth().createUser(withEmail: self.userEmail, password: self.userPassword, completion: { (user, error: Error?) in
            
            if error != nil {
                print(error!._code)
                self.view.makeToast(error?.localizedDescription)
                return
            }
            
            Defaults[.UserEmail] = self.userEmail
            Defaults[.UserPassword] = self.userPassword
            
            print("Successfully created user:", user?.user.uid ?? "")
            
            
            
            let params = [
                userData.UserKeys.Bio.rawValue: "",
                userData.UserKeys.DOB.rawValue: self.userBirthday,
                userData.UserKeys.Status.rawValue: "",
                userData.UserKeys.Email.rawValue: self.userEmail,
                userData.UserKeys.FullName.rawValue: self.userFisrtname + " " + self.userLastName,
                userData.UserKeys.UserName.rawValue: "",//(createAccountSelectUsernameVC.userFirstName + "_" + createAccountSelectUsernameVC.userLastName).lowercased(),
                userData.UserKeys.PictoID.rawValue: self.userPictoID,
                userData.UserKeys.ProfilePicture.rawValue: self.uploadedImageURl,
                userData.UserKeys.Token.rawValue: Defaults[.FCMToken],
                userData.UserKeys.Password.rawValue: self.userPassword,
                userData.UserKeys.createdDT.rawValue: ApiUtillity.sharedInstance.GetCurrentDateAndTime(),
                userData.UserKeys.timestamp.rawValue: FirebaseClient.sharedInstance.firebaseTimestamp,
                userData.UserKeys.updatedDT.rawValue: FirebaseClient.sharedInstance.firebaseTimestamp,
                userData.UserKeys.lastActiveOn.rawValue: FirebaseClient.sharedInstance.firebaseTimestamp,
                userData.UserKeys.deviceInfo.rawValue: "\(UIDevice.current.type) | \(ApiUtillity.sharedInstance.getOSInfo()) | \(ApiUtillity.sharedInstance.getAppInfo())",
                userData.UserKeys.deviceType.rawValue: deviceType,
                userData.UserKeys.country.rawValue: ApiUtillity.sharedInstance.getCurrentCountry()
            ] as [String : Any]
            
            ref = Firestore.firestore().collection("users").document((user?.user.uid)!)
            ref?.setData(params, completion: { (err) in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added with ID: \(ref!.documentID)")
                    Defaults[.UserPassword] = self.userPassword
                    Defaults[.UserEmail] = self.userEmail
                    self.addUserName(userID: ref!.documentID)
                    FirebaseClient.sharedInstance.adduserCountry(country: ApiUtillity.sharedInstance.getCurrentCountry())
                }
            })
        })
    }
    
    func addUserName(userID: String)
    {
        let db = Firestore.firestore()
        
        let docData = [userID : (createAccountSelectUsernameVC.userFirstName + "_" + createAccountSelectUsernameVC.userLastName).lowercased()]
        
        db.collection("userNames").document(userID).setData(docData) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
                let vc = createAccountCreatedVC()
                vc.userEmail = self.userEmail
                vc.userFisrtname = self.userFisrtname
                vc.userLastName = self.userLastName
                vc.userPassword = self.userPassword
                vc.userBirthday = self.userBirthday
                vc.userPictoID = self.userPictoID
                vc.uploadedImageURl = self.uploadedImageURl
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}
