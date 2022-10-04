//
//  changePasswordVC.swift
//  Pictopage
//
//  Created by Grewon on 21/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase

class changePasswordVC: UIViewController {

    
    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerSubView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    
    let backButtonView: UIView = {
        let v = UIView()
        return v
    }()
    
    let backButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "backBlack_1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let titleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Password"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ChangePasswordTitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Change your Password"
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ChangePasswordSubtitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "If you know your password"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let changePasswordView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let oldPasswordView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let oldPasswordDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let oldPasswordtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.autocapitalizationType = .none
        txt.tintColor = .black
        txt.isSecureTextEntry = true
        txt.attributedPlaceholder = NSAttributedString(string: "Current Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    let newPasswordView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let newPasswordDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor(red: 31.0/255.0, green: 34.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        return logov
    }()
    
    let newPasswordtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.autocapitalizationType = .none
        txt.tintColor = .black
        txt.isSecureTextEntry = true
        txt.attributedPlaceholder = NSAttributedString(string: "New Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    let confirmPasswordView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let confirmPasswordDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor(red: 31.0/255.0, green: 34.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        return logov
    }()
    
    let confirmPasswordtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.autocapitalizationType = .none
        txt.tintColor = .black
        txt.isSecureTextEntry = true
        txt.attributedPlaceholder = NSAttributedString(string: "Your new Password, again",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    let changePasswordButtonview: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor(red: 31.0/255.0, green: 34.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        return logov
    }()
    
//    let changePasswordImageview: UIImageView = {
//        let logoimg = UIImageView()
//        logoimg.image = UIImage(named: "new_grediant")
//        logoimg.contentMode = UIView.ContentMode.scaleToFill
//        return logoimg
//    }()
    
    let changePasswordButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Change Password", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = .clear
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        return btn
    }()
    
    let ForgotPasswordDataView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let ForgotPasswordTitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = gray66
        lbl.text = "Forgot your password? You can reset it in"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ForgotPasswordSubtitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Forgot your password?"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let forgotPasswordButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    var dismissBGButton:UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = UIColor.black.withAlphaComponent(0.21)
        button.addTarget(self, action: #selector(dismissPopup), for: .touchUpInside)
        return button
    }()
    
    var popupView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let popupTitleLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Reset your Password"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let popupResetTitleLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "We will send a reset link to your\nemail."
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let currentEmailLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Your Email:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let currentEmailBackView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let currentEmailtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.autocapitalizationType = .none
        txt.tintColor = .black
        txt.text = FirebaseClient.sharedInstance.firebaseCurrentUser!.Email!
        txt.keyboardType = UIKeyboardType.emailAddress
        txt.attributedPlaceholder = NSAttributedString(string: "Your Email",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputEmail), for: .editingChanged)
        return txt
    }()
    
    let sendMailButtonview: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let sendMailButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Send Email", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = .clear
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        btn.addTarget(self, action: #selector(sendMailBtnTapped), for: .touchUpInside)
        return btn
    }()
    
    let cancelButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Cancel", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.backgroundColor = .clear
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        btn.addTarget(self, action: #selector(dismissPopup), for: .touchUpInside)
        return btn
    }()
    
    @objc func handleTextInputChangeEmail() {
        if oldPasswordtextField.text?.isEmpty == false && newPasswordtextField.text?.isEmpty == false && confirmPasswordtextField.text?.isEmpty == false{
            changePasswordButton.isEnabled = true
        } else {
            changePasswordButton.isEnabled = false
        }
    }
    
    @objc func handleTextInputEmail() {
        if currentEmailtextField.text?.isEmpty == false {
            sendMailButton.isEnabled = true
        } else {
            sendMailButton.isEnabled = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 53)
        
        self.headerView.addSubview(self.headerSubView)
        self.headerSubView.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 53)
        
        self.headerSubView.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: nil, left: self.headerSubView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 53, height: 53)
        self.backButtonView.centerYAnchor.constraint(equalTo: self.headerSubView.centerYAnchor).isActive = true
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: nil, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: nil, paddingTop: 34, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 11, height: 18)
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: self.backButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.headerSubView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerSubView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 32, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 21)
        self.titleLable.centerXAnchor.constraint(equalTo: self.headerSubView.centerXAnchor).isActive = true
        
        // setup change password Title Lable
        
        self.view.addSubview(self.ChangePasswordTitleLableText)
        self.ChangePasswordTitleLableText.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 50, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 204, height: 22)
        self.ChangePasswordTitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup change password subtitle Lable
        
        self.view.addSubview(self.ChangePasswordSubtitleLableText)
        self.ChangePasswordSubtitleLableText.anchor(top: self.ChangePasswordTitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 4, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 181, height: 18)
        self.ChangePasswordSubtitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
        // setup change password textfield view
        
        self.view.addSubview(self.changePasswordView)
        self.changePasswordView.anchor(top: self.ChangePasswordSubtitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 22, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 298, height: 136)
        self.changePasswordView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
            // setup old password Textfield view
        
        self.changePasswordView.addSubview(self.oldPasswordView)
        self.oldPasswordView.anchor(top: self.changePasswordView.topAnchor, left: self.changePasswordView.leftAnchor, bottom: nil, right: self.changePasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        
        self.oldPasswordView.addSubview(self.oldPasswordDividerView)
        self.oldPasswordDividerView.anchor(top: nil, left: self.oldPasswordView.leftAnchor, bottom: self.oldPasswordView.bottomAnchor, right: self.oldPasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.oldPasswordView.addSubview(self.oldPasswordtextField)
        self.oldPasswordtextField.anchor(top: self.oldPasswordView.topAnchor, left: self.oldPasswordView.leftAnchor, bottom: self.oldPasswordView.bottomAnchor, right: self.oldPasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.oldPasswordtextField.delegate = self
        
            // setup New password Textfield view
        
        self.changePasswordView.addSubview(self.newPasswordView)
        self.newPasswordView.anchor(top: self.oldPasswordView.bottomAnchor, left: self.changePasswordView.leftAnchor, bottom: nil, right: self.changePasswordView.rightAnchor, paddingTop: 37, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        
        self.newPasswordView.addSubview(self.newPasswordDividerView)
        self.newPasswordDividerView.anchor(top: nil, left: self.newPasswordView.leftAnchor, bottom: self.newPasswordView.bottomAnchor, right: self.newPasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.newPasswordView.addSubview(self.newPasswordtextField)
        self.newPasswordtextField.anchor(top: self.newPasswordView.topAnchor, left: self.newPasswordView.leftAnchor, bottom: self.newPasswordView.bottomAnchor, right: self.newPasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.newPasswordtextField.delegate = self
        
            // setup Confirm password Textfield view
        
        self.changePasswordView.addSubview(self.confirmPasswordView)
        self.confirmPasswordView.anchor(top: self.newPasswordView.bottomAnchor, left: self.changePasswordView.leftAnchor, bottom: nil, right: self.changePasswordView.rightAnchor, paddingTop: 27, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        
        self.confirmPasswordView.addSubview(self.confirmPasswordDividerView)
        self.confirmPasswordDividerView.anchor(top: nil, left: self.confirmPasswordView.leftAnchor, bottom: self.confirmPasswordView.bottomAnchor, right: self.confirmPasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.confirmPasswordView.addSubview(self.confirmPasswordtextField)
        self.confirmPasswordtextField.anchor(top: self.confirmPasswordView.topAnchor, left: self.confirmPasswordView.leftAnchor, bottom: self.confirmPasswordView.bottomAnchor, right: self.confirmPasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.confirmPasswordtextField.delegate = self
        
        // Change Password button view
        
//        self.view.addSubview(self.changePasswordButtonview)
//        self.changePasswordButtonview.anchor(top: self.changePasswordView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
//        self.changePasswordButtonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        self.changePasswordButtonview.layer.cornerRadius = 17.5
//        self.changePasswordButtonview.clipsToBounds = true
        
        self.view.addSubview(self.changePasswordButtonview)
        self.changePasswordButtonview.anchor(top: self.confirmPasswordDividerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.changePasswordButtonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.changePasswordButtonview.layer.cornerRadius = 17.5
        self.changePasswordButtonview.clipsToBounds = true
        
//        self.changePasswordButtonview.addSubview(self.changePasswordImageview)
//        self.changePasswordImageview.anchor(top: self.changePasswordButtonview.topAnchor, left: self.changePasswordButtonview.leftAnchor, bottom: self.changePasswordButtonview.bottomAnchor, right: self.changePasswordButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.changePasswordButtonview.addSubview(self.changePasswordButton)
        self.changePasswordButton.fillSuperview()
//        self.changePasswordButton.anchor(top: self.changePasswordButtonview.topAnchor, left: self.changePasswordButtonview.leftAnchor, bottom: self.changePasswordButtonview.bottomAnchor, right: self.changePasswordButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.changePasswordButton.addTarget(self, action: #selector(self.click_changePassword), for: .touchUpInside)
            
        self.view.addSubview(self.ForgotPasswordDataView)
        self.ForgotPasswordDataView.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 18, paddingRight: 0, width: 311, height: 32)
        self.ForgotPasswordDataView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.ForgotPasswordDataView.addSubview(self.ForgotPasswordTitleLableText)
        self.ForgotPasswordTitleLableText.anchor(top: self.ForgotPasswordDataView.topAnchor, left: self.ForgotPasswordDataView.leftAnchor, bottom: nil, right: self.ForgotPasswordDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        self.ForgotPasswordTitleLableText.isHidden = true
        
        self.ForgotPasswordDataView.addSubview(self.ForgotPasswordSubtitleLableText)
        self.ForgotPasswordSubtitleLableText.anchor(top: nil, left: self.ForgotPasswordDataView.leftAnchor, bottom: self.ForgotPasswordDataView.bottomAnchor, right: self.ForgotPasswordDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        
        self.ForgotPasswordDataView.addSubview(self.forgotPasswordButton)
        self.forgotPasswordButton.anchor(top: self.ForgotPasswordTitleLableText.topAnchor, left: self.ForgotPasswordDataView.leftAnchor, bottom: self.ForgotPasswordDataView.bottomAnchor, right: self.ForgotPasswordDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.forgotPasswordButton.addTarget(self, action: #selector(self.click_forgotPassword), for: .touchUpInside)
        
        self.changePasswordButton.isEnabled = false
        
        self.view.addSubview(self.dismissBGButton)
        self.dismissBGButton.fillSuperview()
        self.dismissBGButton.alpha = 0
        
        self.view.addSubview(self.popupView)
        self.popupView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 315, height: 274)
        self.popupView.centerInSuperview()
        self.popupView.layer.cornerRadius = 25.0
        self.popupView.clipsToBounds = true
//        self.popupView.setDropShadow(cornerRadius: 20, shadowRadius: 4, shadowColor: UIColor.black.withAlphaComponent(0.5), shadowOpacity: 0.4, offsetWidth: 0, offsetHeight: 2)
        self.popupView.alpha = 0
        
        self.popupView.addSubview(self.popupTitleLbl)
        self.popupTitleLbl.anchor(top: self.popupView.topAnchor, left: self.popupView.leftAnchor, bottom: nil, right: self.popupView.rightAnchor, paddingTop: 10, paddingLeft: 58.5, paddingBottom: 0, paddingRight: 58.5, width: 0, height: 24)
        
        self.popupView.addSubview(self.popupResetTitleLbl)
        self.popupResetTitleLbl.anchor(top: self.popupTitleLbl.bottomAnchor, left: self.popupView.leftAnchor, bottom: nil, right: self.popupView.rightAnchor, paddingTop: 8, paddingLeft: 40.5, paddingBottom: 0, paddingRight: 40.5, width: 0, height: 35)
        
        self.popupView.addSubview(self.currentEmailLbl)
        self.currentEmailLbl.anchor(top: self.popupResetTitleLbl.bottomAnchor, left: self.popupView.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 22, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        self.popupView.addSubview(self.currentEmailBackView)
        self.currentEmailBackView.anchor(top: self.currentEmailLbl.bottomAnchor, left: self.popupView.leftAnchor, bottom: nil, right: self.popupView.rightAnchor, paddingTop: 8, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 30)
        self.currentEmailBackView.backgroundColor = GrayEEEEEE
        self.currentEmailBackView.layer.cornerRadius = 15.0
        
        self.currentEmailBackView.addSubview(self.currentEmailtextField)
        self.currentEmailtextField.anchor(top: self.currentEmailBackView.topAnchor, left: self.currentEmailBackView.leftAnchor, bottom: self.currentEmailBackView.bottomAnchor, right: self.currentEmailBackView.rightAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.popupView.addSubview(self.sendMailButtonview)
        self.sendMailButtonview.anchor(top: self.currentEmailBackView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 114, height: 36)
        self.sendMailButtonview.centerXToSuperview()
        self.sendMailButtonview.layer.cornerRadius = 18
        self.sendMailButtonview.clipsToBounds = true
        
        self.sendMailButtonview.addSubview(self.sendMailButton)
        self.sendMailButton.fillSuperview()
        
        self.popupView.addSubview(self.cancelButton)
        self.cancelButton.anchor(top: self.sendMailButton.bottomAnchor, left: self.popupView.leftAnchor, bottom: nil, right: self.popupView.rightAnchor, paddingTop: 20, paddingLeft: 40.5, paddingBottom: 0, paddingRight: 40.5, width: 0, height: 18)
        self.cancelButton.centerXToSuperview()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    // MARK:- Button Action
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_changePassword()
    {
        print("change password")
        
        self.changePassword()
        
    }
    
    @objc func click_forgotPassword()
    {
//        let vc = resetPasswordVC()
//        self.navigationController?.pushViewController(vc, animated: true)
        self.dismissBGButton.alpha = 1
        self.popupView.alpha = 1
    }
    
    @objc func dismissPopup(sender:UIButton) {
       self.dismissBGButton.alpha = 0
       self.popupView.alpha = 0
    }
    
    @objc func sendMailBtnTapped(sender:UIButton) {
       print("DEBUG: Send Mail Btn Tapped")
    }

}

extension changePasswordVC: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension changePasswordVC{
    
    func changePassword(){
        if Defaults[.UserPassword] != self.oldPasswordtextField.text!
        {
            self.view.makeToast("Please enter valid old password")
            return
        }
        else if self.newPasswordtextField.text! == "", self.newPasswordtextField.text?.count == 0
        {
            self.view.makeToast("Please enter new password")
            return
        }
        else if self.confirmPasswordtextField.text! == "", self.confirmPasswordtextField.text?.count == 0
        {
            self.view.makeToast("Please enter new password")
            return
        }
        else if self.confirmPasswordtextField.text! != self.newPasswordtextField.text!
        {
            self.view.makeToast("Please enter valid confirm password")
            return
        }
        else if Defaults[.UserPassword] == self.newPasswordtextField.text!{
            self.view.makeToast("change password successfully!")
        }
        else
        {
            print("password change")
            
            Auth.auth().currentUser?.updatePassword(to: self.newPasswordtextField.text!, completion: { error in
                if error != nil {
                    print("Data could not be saved: \(String(describing: error)).")
                    if error!._code == 17014
                    {
                        self.view.makeToast("Login again.")
                    }
                    else
                    {
                        self.view.makeToast(error?.localizedDescription)
                    }
                    return
                }
                Defaults[.UserPassword] = self.newPasswordtextField.text!
                self.view.makeToast("change password successfully!")

            })
        }
    }
    
    
}
