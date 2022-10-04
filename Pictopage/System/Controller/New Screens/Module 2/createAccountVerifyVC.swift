//
//  createAccountVerifyVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 17/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import FRHyperLabel

class createAccountVerifyVC: UIViewController {

    let backgroundImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "background")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
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
        lbl.text = "Create an Account"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let topicLabel : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Almost there!"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let subtitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Take a moment to verify if the information you entered looks correct.\n\nYou can change these later also."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DataView: UIView = {
        let v = UIView()
        return v
    }()
    
    let EmailView: UIView = {
        let v = UIView()
        return v
    }()
    
    let emailtitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Email:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let EmailDataView: UIView = {
        let v = UIView()
        v.backgroundColor = GrayEEEEEE
        return v
    }()
    
    let emailLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Email@gmail.com"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let NameView: UIView = {
        let v = UIView()
        return v
    }()
    
    let NametitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Name:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let NameDataView: UIView = {
        let v = UIView()
        v.backgroundColor = GrayEEEEEE
        return v
    }()
    
    let NameLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Firstnam lastname"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DOBView: UIView = {
        let v = UIView()
        return v
    }()
    
    let DOBtitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Birthday:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DOBDataView: UIView = {
        let v = UIView()
        v.backgroundColor = GrayEEEEEE
        return v
    }()
    
    let DOBLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "April 11th, 2020"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pictoIDView: UIView = {
        let v = UIView()
        return v
    }()
    
    let pictoIDtitleImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "pictoIDImage1x")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    let pictoIDDataView: UIView = {
        let v = UIView()
        v.backgroundColor = GrayEEEEEE
        return v
    }()
    
    let pictoIDLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "April 11th, 2020"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let createTermsAndConditionslabel: FRHyperLabel = {
        let TCLabel = FRHyperLabel()
        return TCLabel
    }()
    
    // Next Button
    
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
     //   btn.setTitle("Next", for: .normal)
//        btn.setTitleColor(UIColor.white, for: .normal)
//        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        return btn
    }()
    
    
    static var userEmail = String()
    static var userPassword = String()
    static var userFirstname = String()
    static var userLastName = String()
    static var userBirthday = String()
    static var userPictoID = String()
    
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
        
        // topic lable
        
        self.view.addSubview(self.topicLabel)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.topicLabel.anchor(top: self.headerview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 125, height: 24)
        }else{
            self.topicLabel.anchor(top: self.headerview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 38, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 125, height: 24)
        }
        self.topicLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // Subtopic Label
        self.view.addSubview(self.subtitleLabel)
        self.subtitleLabel.anchor(top: self.topicLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 23, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 80.5)
        self.subtitleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // data view
        self.view.addSubview(self.DataView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.DataView.anchor(top: self.subtitleLabel.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 19, paddingLeft: 34.5, paddingBottom: 0, paddingRight: 34.5, width: 0, height: 281)
        }else{
            self.DataView.anchor(top: self.subtitleLabel.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 37, paddingLeft: 34.5, paddingBottom: 0, paddingRight: 34.5, width: 0, height: 281)
        }
        
        // email view
        self.DataView.addSubview(self.EmailView)
        self.EmailView.anchor(top: self.DataView.topAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 54)
        
        self.EmailView.addSubview(self.emailtitleLabel)
        self.emailtitleLabel.anchor(top: self.EmailView.topAnchor, left: self.EmailView.leftAnchor, bottom: nil, right: self.EmailView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        self.EmailView.addSubview(self.EmailDataView)
        self.EmailDataView.anchor(top: self.emailtitleLabel.bottomAnchor, left: self.EmailView.leftAnchor, bottom: nil, right: self.EmailView.rightAnchor, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        self.EmailDataView.layer.cornerRadius = 15.0
        
        self.EmailDataView.addSubview(self.emailLabel)
        self.emailLabel.anchor(top: self.EmailDataView.topAnchor, left: self.EmailDataView.leftAnchor, bottom: self.EmailDataView.bottomAnchor, right: self.EmailDataView.rightAnchor, paddingTop: 6, paddingLeft: 10, paddingBottom: 6, paddingRight: 10, width: 0, height: 0)
        
        // name view
        self.DataView.addSubview(self.NameView)
        self.NameView.anchor(top: self.EmailView.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 19, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 54)
        
        self.NameView.addSubview(self.NametitleLabel)
        self.NametitleLabel.anchor(top: self.NameView.topAnchor, left: self.NameView.leftAnchor, bottom: nil, right: self.NameView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        self.NameView.addSubview(self.NameDataView)
        self.NameDataView.anchor(top: self.NametitleLabel.bottomAnchor, left: self.NameView.leftAnchor, bottom: nil, right: self.NameView.rightAnchor, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        self.NameDataView.layer.cornerRadius = 15.0
        
        self.NameDataView.addSubview(self.NameLabel)
        self.NameLabel.anchor(top: self.NameDataView.topAnchor, left: self.NameDataView.leftAnchor, bottom: self.NameDataView.bottomAnchor, right: self.NameDataView.rightAnchor, paddingTop: 6, paddingLeft: 10, paddingBottom: 6, paddingRight: 10, width: 0, height: 0)
        
        // dob view
        self.DataView.addSubview(self.DOBView)
        self.DOBView.anchor(top: self.NameView.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 23, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 54)
        
        self.DOBView.addSubview(self.DOBtitleLabel)
        self.DOBtitleLabel.anchor(top: self.DOBView.topAnchor, left: self.DOBView.leftAnchor, bottom: nil, right: self.DOBView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        self.DOBView.addSubview(self.DOBDataView)
        self.DOBDataView.anchor(top: self.DOBtitleLabel.bottomAnchor, left: self.DOBView.leftAnchor, bottom: nil, right: self.DOBView.rightAnchor, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        self.DOBDataView.layer.cornerRadius = 15.0
        
        self.DOBDataView.addSubview(self.DOBLabel)
        self.DOBLabel.anchor(top: self.DOBDataView.topAnchor, left: self.DOBDataView.leftAnchor, bottom: self.DOBDataView.bottomAnchor, right: self.DOBDataView.rightAnchor, paddingTop: 6, paddingLeft: 10, paddingBottom: 6, paddingRight: 10, width: 0, height: 0)
        
        // picto id view
        self.DataView.addSubview(self.pictoIDView)
        self.pictoIDView.anchor(top: self.DOBView.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 23, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 54)
        
        self.pictoIDView.addSubview(self.pictoIDtitleImage)
        self.pictoIDtitleImage.anchor(top: self.pictoIDView.topAnchor, left: self.pictoIDView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 51, height: 18)
        
        self.pictoIDView.addSubview(self.pictoIDDataView)
        self.pictoIDDataView.anchor(top: self.pictoIDtitleImage.bottomAnchor, left: self.pictoIDView.leftAnchor, bottom: nil, right: self.pictoIDView.rightAnchor, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        self.pictoIDDataView.layer.cornerRadius = 15.0
        
        self.pictoIDDataView.addSubview(self.pictoIDLabel)
        self.pictoIDLabel.anchor(top: self.pictoIDDataView.topAnchor, left: self.pictoIDDataView.leftAnchor, bottom: self.pictoIDDataView.bottomAnchor, right: self.pictoIDDataView.rightAnchor, paddingTop: 6, paddingLeft: 10, paddingBottom: 6, paddingRight: 10, width: 0, height: 0)
        
        // Privacy lable
        
        self.view.addSubview(self.createTermsAndConditionslabel)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.createTermsAndConditionslabel.anchor(top: self.DataView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 32, paddingLeft: 47.5, paddingBottom: 0, paddingRight: 47.5, width: 0, height: 36)
        }else{
            self.createTermsAndConditionslabel.anchor(top: self.DataView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 60, paddingLeft: 47.5, paddingBottom: 0, paddingRight: 47.5, width: 0, height: 36)
        }
        
        // Complete Button

        self.view.addSubview(self.completeButtonView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.completeButtonView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 13, paddingRight: 0, width: 232, height: 49)
        }else{
            self.completeButtonView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 2, paddingRight: 0, width: 232, height: 49)
        }
        self.completeButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.completeButtonView.layer.cornerRadius = 24.5
        self.completeButtonView.clipsToBounds = true
        
        self.completeButtonView.addSubview(self.completeButtonImageView)
        self.completeButtonImageView.anchor(top: self.completeButtonView.topAnchor, left: self.completeButtonView.leftAnchor, bottom: self.completeButtonView.bottomAnchor, right: self.completeButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.completeButtonView.addSubview(self.completeButton)
        self.completeButton.anchor(top: self.completeButtonView.topAnchor, left: self.completeButtonView.leftAnchor, bottom: self.completeButtonView.bottomAnchor, right: self.completeButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.completeButton.addTarget(self, action: #selector(self.click_complete), for: .touchUpInside)
        
        
        self.initLabel()
        
        self.setValue()
    }
    
    // MARK:- setvalue
    
    func setValue(){
        self.emailLabel.text = createAccountVerifyVC.userEmail
        self.NameLabel.text = createAccountVerifyVC.userFirstname + " " + createAccountVerifyVC.userLastName
        self.DOBLabel.text = createAccountVerifyVC.userBirthday
        self.pictoIDLabel.text = createAccountVerifyVC.userPictoID
    }
    
    // MARK:- FRHyperLable
    
    func initLabel()
    {
        self.createTermsAndConditionslabel.numberOfLines = 0;
        
        let string = "By creating an account, you agree to our\nTerms of Service and Privacy Policy"
        
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                          NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15.0)]
        
        self.createTermsAndConditionslabel.attributedText = NSAttributedString(string: string, attributes: attributes as [NSAttributedString.Key : Any])
        self.createTermsAndConditionslabel.sizeToFit()
        self.createTermsAndConditionslabel.textAlignment = .center
        let handler = {
            (hyperLabel: FRHyperLabel?, substring: String?) -> Void in
            self.click_labelAction(string: substring!)
        }
        
        //Step 3: Add link substrings
        self.createTermsAndConditionslabel.setLinksForSubstrings(["Terms of Service", "Privacy Policy"], withLinkHandler: handler)
    }
    
    func click_labelAction(string: String)
    {
        print(string)
    }

    // MARK:- Button Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }

    @objc func click_complete(){
        let vc = createAccountLoadingVC()
        vc.userEmail = createAccountVerifyVC.userEmail
        vc.userPassword = createAccountVerifyVC.userPassword
        vc.userFisrtname = createAccountVerifyVC.userFirstname
        vc.userLastName = createAccountVerifyVC.userLastName
        vc.userBirthday = createAccountVerifyVC.userBirthday
        vc.userPictoID = createAccountVerifyVC.userPictoID
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
