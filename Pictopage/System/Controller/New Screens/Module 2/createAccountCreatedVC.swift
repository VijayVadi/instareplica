//
//  createAccountCreatedVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 18/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class createAccountCreatedVC: UIViewController {

    let titleLabel : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Your account has been\ncreated"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Just one more step left,\nsetting up your profile."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let description1Lable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "You can do this now or later."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let buttonview: UIView = {
        let log = UIView()
        log.backgroundColor = black10
        return log
    }()
    
    let divideImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "Line")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let skipButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Skip", for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        btn.setTitleColor(UIColor.white, for: .normal)
        return btn
    }()
    
    let setupProfileButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Setup", for: .normal)
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
        
        // title lable
        self.view.addSubview(self.titleLabel)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.titleLabel.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 88, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 50)
        }else{
            self.titleLabel.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 115, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 50)
        }
        
        // description lable
        self.view.addSubview(self.descriptionLable)
        self.descriptionLable.anchor(top: self.titleLabel.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 28, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 45)
        
        // description1 lable
        self.view.addSubview(self.description1Lable)
        self.description1Lable.anchor(top: self.descriptionLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 28, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 22)
        
        // Button skip and setUp
        self.view.addSubview(self.buttonview)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.buttonview.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 84, paddingRight: 0, width: 281, height: 45)
        }else{
            self.buttonview.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 125, paddingRight: 0, width: 281, height: 45)
        }
        self.buttonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.buttonview.layer.cornerRadius = 22.5
        
        self.buttonview.addSubview(self.divideImageview)
        self.divideImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 25, height: 25)
        self.divideImageview.centerXAnchor.constraint(equalTo: self.buttonview.centerXAnchor).isActive = true
        self.divideImageview.centerYAnchor.constraint(equalTo: self.buttonview.centerYAnchor).isActive = true
        
        self.buttonview.addSubview(self.skipButton)
        self.skipButton.anchor(top: self.buttonview.topAnchor, left: self.buttonview.leftAnchor, bottom: self.buttonview.bottomAnchor, right: self.divideImageview.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.skipButton.addTarget(self, action: #selector(self.click_skip), for: .touchUpInside)
        
        self.buttonview.addSubview(self.setupProfileButton)
        self.setupProfileButton.anchor(top: self.buttonview.topAnchor, left: self.divideImageview.rightAnchor, bottom: self.buttonview.bottomAnchor, right: self.buttonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.setupProfileButton.addTarget(self, action: #selector(self.click_setupProfile), for: .touchUpInside)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    
    // MARK:- Button Action
    
    @objc func click_skip(){
//        let vc = FirstSetpsVC()
//        self.navigationController?.pushViewController(vc, animated: true)
        let vc = MainVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func click_setupProfile(){
        let vc = ProfileCreatorVC()
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
