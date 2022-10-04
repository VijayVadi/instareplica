//
//  ProfileCreatorVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 20/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class ProfileCreatorVC: UIViewController {

    let headerview: UIView = {
        let v = UIView()
        return v
    }()
    
    let backButtonImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "FireflyBack")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let titleLabel : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Profile Creator"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DataView: UIView = {
        let v = UIView()
        return v
    }()
    
    let DataViewBackgroundImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "profileCreatorGredian1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let ImageMainView: UIView = {
        let v = UIView()
        return v
    }()
    
    let ImageMainBorderImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "userProfileBorder1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let profileImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "userLogo1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFill
        backButtonImageView.backgroundColor = .clear
        return backButtonImageView
    }()
    
    let NameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Firstname Lastname"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pictoIDLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "pictoID"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable1 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "This is a preview of your\nprofile, Firstname"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable2 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Well… at least part of it."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable3 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Your name and picto id, is already\ndisplayed on your profile."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable4 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "All you need to do now is select a\nprofile picture and add a bio if you\nwould like."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let continueButtonView: UIView = {
        let v = UIView()
        v.backgroundColor = black10
        return v
    }()
    
    let continueButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        return btn
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
        
        // Header View
        self.view.addSubview(self.headerview)
        self.headerview.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
        
        // Title Label
        self.headerview.addSubview(self.titleLabel)
        self.titleLabel.anchor(top: self.headerview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 147, height: 21)
        self.titleLabel.centerXAnchor.constraint(equalTo: self.headerview.centerXAnchor).isActive = true
        
        // Back Button
        self.headerview.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: nil, right: nil, paddingTop: 14.5, paddingLeft: 27, paddingBottom: 0, paddingRight: 0, width: 9, height: 15)
        
        self.headerview.addSubview(self.backButton)
        self.backButton.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: self.headerview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 36, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // Data View
        
        self.view.addSubview(self.DataView)
        self.DataView.anchor(top: self.headerview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 282, height: 205)
        self.DataView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.DataView.addSubview(self.DataViewBackgroundImageView)
        self.DataViewBackgroundImageView.anchor(top: self.DataView.topAnchor, left: self.DataView.leftAnchor, bottom: self.DataView.bottomAnchor, right: self.DataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.DataView.addSubview(self.ImageMainView)
        self.ImageMainView.anchor(top: self.DataView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 28, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 71.5, height: 71.5)
        self.ImageMainView.centerXAnchor.constraint(equalTo: self.DataView.centerXAnchor).isActive = true
        
        self.ImageMainView.addSubview(self.ImageMainBorderImageView)
        self.ImageMainBorderImageView.anchor(top: self.ImageMainView.topAnchor, left: self.ImageMainView.leftAnchor, bottom: self.ImageMainView.bottomAnchor, right: self.ImageMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.ImageMainView.addSubview(self.profileImageView)
        self.profileImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        self.profileImageView.centerXAnchor.constraint(equalTo: self.ImageMainView.centerXAnchor).isActive = true
        self.profileImageView.centerYAnchor.constraint(equalTo: self.ImageMainView.centerYAnchor).isActive = true
        self.profileImageView.layer.cornerRadius = 22.5
        self.profileImageView.clipsToBounds = true
        
        self.DataView.addSubview(self.NameLable)
        self.NameLable.anchor(top: self.ImageMainView.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 18)
        
        self.DataView.addSubview(self.pictoIDLable)
        self.pictoIDLable.anchor(top: self.NameLable.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 9.5, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 16)
        
        // discription lable 1
        self.view.addSubview(self.DescriptionsLable1)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.DescriptionsLable1.anchor(top: self.DataView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 14, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 50)
        }else{
            self.DescriptionsLable1.anchor(top: self.DataView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 16, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 50)
        }
        
        // discription lable 2
        self.view.addSubview(self.DescriptionsLable2)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.DescriptionsLable2.anchor(top: self.DescriptionsLable1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 22)
        }else{
            self.DescriptionsLable2.anchor(top: self.DescriptionsLable1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 22)
        }
        
        // discription lable 3
        self.view.addSubview(self.DescriptionsLable3)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.DescriptionsLable3.anchor(top: self.DescriptionsLable2.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 45)
        }else{
            self.DescriptionsLable3.anchor(top: self.DescriptionsLable2.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 40, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 45)
        }
        
        // discription lable 3
        self.view.addSubview(self.DescriptionsLable4)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.DescriptionsLable4.anchor(top: self.DescriptionsLable3.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 13, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 68)
        }else{
            self.DescriptionsLable4.anchor(top: self.DescriptionsLable3.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 68)
        }
        
        // continue button
        
        self.view.addSubview(self.continueButtonView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.continueButtonView.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 55, paddingRight: 0, width: 281, height: 45)
        }else{
            self.continueButtonView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 125, paddingRight: 0, width: 281, height: 45)
        }
        self.continueButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.continueButtonView.layer.cornerRadius = 22.5
        self.continueButtonView.clipsToBounds = true
        
        self.continueButtonView.addSubview(self.continueButton)
        self.continueButton.anchor(top: self.continueButtonView.topAnchor, left: self.continueButtonView.leftAnchor, bottom: self.continueButtonView.bottomAnchor, right: self.continueButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.continueButton.addTarget(self, action: #selector(self.click_continue), for: .touchUpInside)
        
        self.setValue()
    }
    
    func setValue(){
        
        self.NameLable.text = self.userFisrtname + " " + self.userLastName
        self.pictoIDLable.text = self.userPictoID
        self.DescriptionsLable1.text = "This is a preview of your\nprofile, \(self.userFisrtname)"
        
//        let image = self.uploadedImageURl
//        self.profileImageView.kf.indicatorType = .activity
//        self.profileImageView.kf.setImage(with: URL(string: image))
        
    }
    

    // MARK:- Button Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_continue(){
        print("continue")
        let vc = profileCreatorPofilePictureVC()
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
