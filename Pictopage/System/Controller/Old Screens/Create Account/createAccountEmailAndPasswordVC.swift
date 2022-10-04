//
//  createAccountEmailAndPasswordVC.swift
//  Pictopage
//
//  Created by Grewon on 14/08/19.
//  Copyright © 2019 Page inc. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import Toast_Swift

class createAccountEmailAndPasswordVC: UIViewController, UIGestureRecognizerDelegate {

    // MARK:- variables
    
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
    
    let topicLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Let’s set up your Account"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let subtitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Enter an email you would like to use with Pictopage account.\n\nAlso, choose a password to secure your account."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // Email Text Field
    let emailTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let emailTextFieldDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let emailTextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Email",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    // Password Text Field
    let passwordTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let passwordTextFieldDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let passwordTextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    // Next Button
    
    let nextButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let nextButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "nextButtonDisabled")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let nextButton: UIButton = {
        let btn = UIButton()
     //   btn.setTitle("Next", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        return btn
    }()
    
    
    //MARK:- viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
//        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        self.view.backgroundColor = .white
        
        
        // Back Button
        self.view.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: nil, paddingTop: 35.5, paddingLeft: 22, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.view.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonImageView.topAnchor, left: self.backButtonImageView.leftAnchor, bottom: self.backButtonImageView.bottomAnchor, right: self.backButtonImageView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // Title Label
        self.view.addSubview(self.titleLabel)
        self.titleLabel.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 32, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 147, height: 21)
        self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // Topic Label
        self.view.addSubview(self.topicLabel)
        self.topicLabel.anchor(top: self.titleLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 38, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 243, height: 24)
        self.topicLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // Subtopic Label
        self.view.addSubview(self.subtitleLabel)
        self.subtitleLabel.anchor(top: self.topicLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 21.5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 100.5)
        self.subtitleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // Email Text Field
        self.view.addSubview(self.emailTextFieldView)
        self.emailTextFieldView.anchor(top: self.subtitleLabel.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 29, paddingLeft: 39.5, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 24)
        
        self.emailTextFieldView.addSubview(self.emailTextFieldDividerView)
        self.emailTextFieldDividerView.anchor(top: nil, left: self.emailTextFieldView.leftAnchor, bottom: self.emailTextFieldView.bottomAnchor, right: self.emailTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.emailTextFieldView.addSubview(self.emailTextField)
        self.emailTextField.anchor(top: self.emailTextFieldView.topAnchor, left: self.emailTextFieldView.leftAnchor, bottom: self.emailTextFieldView.bottomAnchor, right: self.emailTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    //    self.oldPasswordtextField.delegate = self
        
        // Password Text Field
        self.view.addSubview(self.passwordTextFieldView)
            self.passwordTextFieldView.anchor(top: self.emailTextFieldView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 35, paddingLeft: 39.5, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 24)
            
            self.passwordTextFieldView.addSubview(self.passwordTextFieldDividerView)
            self.passwordTextFieldDividerView.anchor(top: nil, left: self.passwordTextFieldView.leftAnchor, bottom: self.passwordTextFieldView.bottomAnchor, right: self.passwordTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
            
            self.passwordTextFieldView.addSubview(self.passwordTextField)
            self.passwordTextField.anchor(top: self.passwordTextFieldView.topAnchor, left: self.passwordTextFieldView.leftAnchor, bottom: self.passwordTextFieldView.bottomAnchor, right: self.passwordTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        //    self.oldPasswordtextField.delegate = self
        
        // Next Button

        self.view.addSubview(self.nextButtonView)
        self.nextButtonView.anchor(top: self.passwordTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.nextButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.nextButtonView.layer.cornerRadius = 17.5
        self.nextButtonView.clipsToBounds = true
        
        self.nextButtonView.addSubview(self.nextButtonImageView)
        self.nextButtonImageView.anchor(top: self.nextButtonView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.nextButtonView.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonImageView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.nextButton.addTarget(self, action: #selector(self.nextButtonClicked), for: .touchUpInside)
        
        self.nextButton.isEnabled = false
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- Button Action
    
    @objc func handleTextInputChangeEmail() {
       if emailTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false {
           nextButton.isEnabled = true
           nextButtonImageView.image = UIImage(named: "nextButtonEnabled")
       }else{
           nextButton.isEnabled = false
           nextButtonImageView.image = UIImage(named: "nextButtonDisabled")
       }
    }
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func nextButtonClicked(){
        let createAccountName = createAccountUsernameVC()
        self.navigationController?.pushViewController(createAccountName, animated: true)
    }

}
