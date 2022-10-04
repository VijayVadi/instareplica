//
//  createAccountEmailAndPasswordCell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 16/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase
import Toast_Swift


class createAccountEmailAndPasswordCell: UICollectionViewCell, UITextFieldDelegate {
    
    let mainview: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
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
    
    let correctEmailImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "correct_1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
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
        txt.isSecureTextEntry = true
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
    
    static var isRegisterEmail = Bool()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.mainview)
        self.mainview.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // Header View
        self.mainview.addSubview(self.headerview)
        self.headerview.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
        
        // Title Label
        self.headerview.addSubview(self.titleLabel)
        self.titleLabel.anchor(top: self.headerview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 147, height: 21)
        self.titleLabel.centerXAnchor.constraint(equalTo: self.headerview.centerXAnchor).isActive = true
        
        // Back Button
        self.headerview.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: nil, right: nil, paddingTop: 14.5, paddingLeft: 27, paddingBottom: 0, paddingRight: 0, width: 9, height: 15)
        
        self.headerview.addSubview(self.backButton)
        self.backButton.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: self.headerview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 36, height: 0)
        
        // Topic Label
        self.mainview.addSubview(self.topicLabel)
        self.topicLabel.anchor(top: self.titleLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 38, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 243, height: 24)
        self.topicLabel.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true
        
        // Subtopic Label
        self.mainview.addSubview(self.subtitleLabel)
        self.subtitleLabel.anchor(top: self.topicLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 21.5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 100.5)
        self.subtitleLabel.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true
        
        // Email Text Field
        self.mainview.addSubview(self.emailTextFieldView)
        self.emailTextFieldView.anchor(top: self.subtitleLabel.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 29, paddingLeft: 39.5, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 24)
        
        self.emailTextFieldView.addSubview(self.correctEmailImageView)
        self.correctEmailImageView.anchor(top: nil, left: nil, bottom: nil, right: self.emailTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 5, width: 18, height: 18)
        self.correctEmailImageView.centerYAnchor.constraint(equalTo: self.emailTextFieldView.centerYAnchor).isActive = true

        self.emailTextFieldView.addSubview(self.emailTextFieldDividerView)
        self.emailTextFieldDividerView.anchor(top: nil, left: self.emailTextFieldView.leftAnchor, bottom: self.emailTextFieldView.bottomAnchor, right: self.emailTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.emailTextFieldView.addSubview(self.emailTextField)
        self.emailTextField.anchor(top: self.emailTextFieldView.topAnchor, left: self.emailTextFieldView.leftAnchor, bottom: self.emailTextFieldView.bottomAnchor, right: self.emailTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.emailTextField.delegate = self
        self.emailTextField.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        self.emailTextField.addTarget(self, action: #selector(checkEmailIsAlreadyRegisterOrNot), for: .editingChanged)
        
        // Password Text Field
        self.mainview.addSubview(self.passwordTextFieldView)
        self.passwordTextFieldView.anchor(top: self.emailTextFieldView.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 35, paddingLeft: 39.5, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 24)
        
        self.passwordTextFieldView.addSubview(self.passwordTextFieldDividerView)
        self.passwordTextFieldDividerView.anchor(top: nil, left: self.passwordTextFieldView.leftAnchor, bottom: self.passwordTextFieldView.bottomAnchor, right: self.passwordTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.passwordTextFieldView.addSubview(self.passwordTextField)
        self.passwordTextField.anchor(top: self.passwordTextFieldView.topAnchor, left: self.passwordTextFieldView.leftAnchor, bottom: self.passwordTextFieldView.bottomAnchor, right: self.passwordTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.passwordTextField.delegate = self
        self.passwordTextField.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        
        // Next Button
        
        self.mainview.addSubview(self.nextButtonView)
        self.nextButtonView.anchor(top: self.passwordTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.nextButtonView.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true
        self.nextButtonView.layer.cornerRadius = 17.5
        self.nextButtonView.clipsToBounds = true
        
        self.nextButtonView.addSubview(self.nextButtonImageView)
        self.nextButtonImageView.anchor(top: self.nextButtonView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.nextButtonView.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonImageView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // Start Up
        self.nextButton.isEnabled = false
        
        self.correctEmailImageView.isHidden = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:- Validation
    
    @objc func handleTextInputChangeEmail() {
        
        if emailTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false{
            createAccountVerifyVC.userEmail = self.emailTextField.text!
            createAccountVerifyVC.userPassword = self.passwordTextField.text!
            nextButton.isEnabled = true
            nextButtonImageView.image = UIImage(named: "nextButtonEnabled")
        }else{
            nextButton.isEnabled = false
            nextButtonImageView.image = UIImage(named: "nextButtonDisabled")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.mainview.endEditing(true)
        return false
    }
    
}

extension createAccountEmailAndPasswordCell{
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    @objc func checkEmailIsAlreadyRegisterOrNot(){
        if let email = self.emailTextField.text, email.count != 0, self.isValidEmail(email){
            Auth.auth().fetchSignInMethods(forEmail: email) { (providers, error) in
                if let error = error {
                    print(error.localizedDescription)
                    self.correctEmailImageView.isHidden = false
                    self.correctEmailImageView.image = UIImage(named: "correct_1x")
                    createAccountEmailAndPasswordCell.isRegisterEmail = false
                } else if let providers = providers {
                    print(providers)
                    self.correctEmailImageView.isHidden = false
                    self.correctEmailImageView.image = UIImage(named: "inCorrect_1x")
                    createAccountEmailAndPasswordCell.isRegisterEmail = true
                }else{
                    self.correctEmailImageView.isHidden = false
                    createAccountEmailAndPasswordCell.isRegisterEmail = false
                    self.correctEmailImageView.image = UIImage(named: "correct_1x")
                }
            }
        }else{
            self.correctEmailImageView.isHidden = true
        }
    }
    
}
