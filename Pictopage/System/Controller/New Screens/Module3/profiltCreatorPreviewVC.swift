//
//  profiltCreatorPreviewVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 20/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class profiltCreatorPreviewVC: UIViewController {

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
    
    let DescriptionsLable1 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Your almost done!"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable2 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "If everything looks good you can save\nthis profile."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable3 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "You can change the information in\nyour profile at any time."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
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
    
    let bioLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Your bio goes here"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let orGoBackView: UIView = {
        let v = UIView()
        return v
    }()
    
    let orGoBackLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "or Go Back"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let orGoBackButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        return btn
    }()
    
    let completeButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let completeButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "createAccountVerifyComplete1x")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let completeButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    var userEmail = String()
    var userPassword = String()
    var userFisrtname = String()
    var userLastName = String()
    var userBirthday = String()
    var userPictoID = String()
    var userBio = String()
    var uploadedImageURl = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // Header View
        self.view.addSubview(self.headerview)
        self.headerview.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
        
        // Back Button
        self.headerview.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: nil, right: nil, paddingTop: 14.5, paddingLeft: 27, paddingBottom: 0, paddingRight: 0, width: 9, height: 15)
        
        self.headerview.addSubview(self.backButton)
        self.backButton.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: self.headerview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 36, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // Title Label
        self.headerview.addSubview(self.titleLabel)
        self.titleLabel.anchor(top: self.headerview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 147, height: 21)
        self.titleLabel.centerXAnchor.constraint(equalTo: self.headerview.centerXAnchor).isActive = true
        
        // discription lable 1
        self.view.addSubview(self.DescriptionsLable1)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.DescriptionsLable1.anchor(top: self.headerview.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 23, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 24)
        }else{
            self.DescriptionsLable1.anchor(top: self.headerview.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 44, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 24)
        }
        
        // discription lable 2
        self.view.addSubview(self.DescriptionsLable2)
        self.DescriptionsLable2.anchor(top: self.DescriptionsLable1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 16, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 41)
        
        // discription lable 3
        self.view.addSubview(self.DescriptionsLable3)
        self.DescriptionsLable3.anchor(top: self.DescriptionsLable2.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 9, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 41)
        
        // Data View
        
        self.view.addSubview(self.DataView)
        self.DataView.anchor(top: self.DescriptionsLable3.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 29, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 282, height: 292)
        self.DataView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.DataView.clipsToBounds = true
        
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
        
        self.DataView.addSubview(self.bioLable)
        self.bioLable.anchor(top: self.pictoIDLable.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 11, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 0)
        
        // orGoBackView
        self.view.addSubview(self.orGoBackView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.orGoBackView.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 18, paddingRight: 0, width: 99, height: 22)
        }else{
            self.orGoBackView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 86, paddingRight: 0, width: 99, height: 22)
        }
        self.orGoBackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.orGoBackView.addSubview(self.orGoBackLable)
        self.orGoBackLable.anchor(top: self.orGoBackView.topAnchor, left: self.orGoBackView.leftAnchor, bottom: self.orGoBackView.bottomAnchor, right: self.orGoBackView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        let myString = "or Go Back"
        let myString1 = "Go Back"
        let targetString = myString
        let range = NSMakeRange(myString.count - myString1.count, myString1.count)
        
        self.orGoBackLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: targetString, BoldRange: range, font1: UIFont(name: "HelveticaNeue", size: 19.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 19.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        
        self.orGoBackView.addSubview(self.orGoBackButton)
        self.orGoBackButton.anchor(top: self.orGoBackView.topAnchor, left: self.orGoBackView.leftAnchor, bottom: self.orGoBackView.bottomAnchor, right: self.orGoBackView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.orGoBackButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // Complete Button

        self.view.addSubview(self.completeButtonView)
        self.completeButtonView.anchor(top: nil, left: nil, bottom: self.orGoBackView.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 13, paddingRight: 0, width: 232, height: 49)
        self.completeButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.completeButtonView.layer.cornerRadius = 24.5
        self.completeButtonView.clipsToBounds = true
        
        self.completeButtonView.addSubview(self.completeButtonImageView)
        self.completeButtonImageView.anchor(top: self.completeButtonView.topAnchor, left: self.completeButtonView.leftAnchor, bottom: self.completeButtonView.bottomAnchor, right: self.completeButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.completeButtonView.addSubview(self.completeButton)
        self.completeButton.anchor(top: self.completeButtonView.topAnchor, left: self.completeButtonView.leftAnchor, bottom: self.completeButtonView.bottomAnchor, right: self.completeButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.completeButton.addTarget(self, action: #selector(self.click_complete), for: .touchUpInside)
        
        self.setValue()
    }
    
    // MARK:- set value
    
    func setValue(){
        
        self.NameLable.text = self.userFisrtname + " " + self.userLastName
        self.pictoIDLable.text = self.userPictoID
        self.bioLable.text = self.userBio
        
        let image = self.uploadedImageURl
        self.profileImageView.kf.indicatorType = .activity
        self.profileImageView.kf.setImage(with: URL(string: image))
        
    }
    
    // MARK:- Button Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }

    @objc func click_complete(){
        print("click complete")
        let vc = FirstSetpsVC()
        vc.userEmail = self.userEmail
        vc.userFisrtname = self.userFisrtname
        vc.userLastName = self.userLastName
        vc.userPassword = self.userPassword
        vc.userBirthday = self.userBirthday
        vc.userPictoID = self.userPictoID
        vc.uploadedImageURl = self.uploadedImageURl
        vc.userBio = self.userBio
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
