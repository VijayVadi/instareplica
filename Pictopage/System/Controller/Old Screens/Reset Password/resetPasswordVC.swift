//
//  resetPasswordVC.swift
//  Pictopage
//
//  Created by Grewon on 13/08/19.
//  Copyright © 2019 Page Inc. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import Firebase

class resetPasswordVC: UIViewController, UITextFieldDelegate {
    
//    let headerView: UIView = {
//        let logov = UIView()
//        logov.backgroundColor = .white
//        return logov
//    }()
    
    let headerSubview: UIView = {
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
        logoimg.image = UIImage(named: "back_1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let titleLabel : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Password"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let resetPasswordTitleLabelText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Forgot your Password?"
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let resetPasswordSubtitleLabelText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Don’t worry, you can reset it.\n\nAll we need is the email that is linked to your Pictopage account."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let emailTextfieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let emailDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let emailtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Email",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    let sendMailButtonview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let sendMailImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "new_grediant")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let sendMailButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Send Email", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        return btn
    }()
    
    let contactSupportDataView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let contactSupportTitleLabelText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = gray66
        lbl.text = "Still having problems?"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let contactSupportSubtitleLabelText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Contact Pictopage Support"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let contactSupportButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    
    @objc func handleTextInputChangeEmail() {
        if self.emailtextField.text?.isEmpty == false {
            self.sendMailButton.isEnabled = true
            self.sendMailImageview.image = UIImage(named: "new_grediant")
        } else {
            self.sendMailButton.isEnabled = false
            self.sendMailImageview.image = UIImage(named: "")
            self.sendMailImageview.backgroundColor = black1a
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        // setup Header view
        
        self.view.addSubview(self.headerSubview)
        self.headerSubview.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
        
        self.headerSubview.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: nil, left: self.headerSubview.leftAnchor, bottom: self.headerSubview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 32, height: 32)
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.headerSubview.topAnchor, left: self.backButtonView.leftAnchor, bottom: nil, right: nil, paddingTop: 14.5, paddingLeft: 27, paddingBottom: 0, paddingRight: 0, width: 9, height: 15)
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: self.backButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.headerSubview.addSubview(self.titleLabel)
        self.titleLabel.anchor(top: self.headerSubview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 21)
        self.titleLabel.centerXAnchor.constraint(equalTo: self.headerSubview.centerXAnchor).isActive = true
        
        // setup change password Title Lable
        
        self.view.addSubview(self.resetPasswordTitleLabelText)
        self.resetPasswordTitleLabelText.anchor(top: self.headerSubview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 50, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 204, height: 22)
        self.resetPasswordTitleLabelText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup change password subtitle Lable
        
        self.view.addSubview(self.resetPasswordSubtitleLabelText)
        self.resetPasswordSubtitleLabelText.anchor(top: self.resetPasswordTitleLabelText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 243, height: 72)
        self.resetPasswordSubtitleLabelText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
        // setup email textfield view
        
        self.view.addSubview(self.emailTextfieldView)
        self.emailTextfieldView.anchor(top: self.resetPasswordSubtitleLabelText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 36, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 296, height: 24)
        self.emailTextfieldView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.emailTextfieldView.addSubview(self.emailDividerView)
        self.emailDividerView.anchor(top: nil, left: self.emailTextfieldView.leftAnchor, bottom: self.emailTextfieldView.bottomAnchor, right: self.emailTextfieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.emailTextfieldView.addSubview(self.emailtextField)
        self.emailtextField.anchor(top: self.emailTextfieldView.topAnchor, left: self.emailTextfieldView.leftAnchor, bottom: self.emailTextfieldView.bottomAnchor, right: self.emailTextfieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.emailtextField.delegate = self
        
        // send mail button view
        
        self.view.addSubview(self.sendMailButtonview)
        self.sendMailButtonview.anchor(top: self.emailTextfieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 36, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.sendMailButtonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.sendMailButtonview.layer.cornerRadius = 17.5
        self.sendMailButtonview.clipsToBounds = true
        
        self.sendMailButtonview.addSubview(self.sendMailImageview)
        self.sendMailImageview.anchor(top: self.sendMailButtonview.topAnchor, left: self.sendMailButtonview.leftAnchor, bottom: self.sendMailButtonview.bottomAnchor, right: self.sendMailButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.sendMailButtonview.addSubview(self.sendMailButton)
        self.sendMailButton.anchor(top: self.sendMailButtonview.topAnchor, left: self.sendMailButtonview.leftAnchor, bottom: self.sendMailButtonview.bottomAnchor, right: self.sendMailButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.sendMailButton.addTarget(self, action: #selector(self.click_sendMail), for: .touchUpInside)
        
        // contact support view
        
        self.view.addSubview(self.contactSupportDataView)
        
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.contactSupportDataView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 8, paddingRight: 0, width: 311, height: 32)
        }else{
            self.contactSupportDataView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 1, paddingRight: 0, width: 311, height: 32)
        }
        self.contactSupportDataView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.contactSupportDataView.addSubview(self.contactSupportTitleLabelText)
        self.contactSupportTitleLabelText.anchor(top: self.contactSupportDataView.topAnchor, left: self.contactSupportDataView.leftAnchor, bottom: nil, right: self.contactSupportDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        
        self.contactSupportDataView.addSubview(self.contactSupportSubtitleLabelText)
        self.contactSupportSubtitleLabelText.anchor(top: self.contactSupportTitleLabelText.bottomAnchor, left: self.contactSupportDataView.leftAnchor, bottom: nil, right: self.contactSupportDataView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        
        self.contactSupportDataView.addSubview(self.contactSupportButton)
        self.contactSupportButton.anchor(top: self.contactSupportTitleLabelText.topAnchor, left: self.contactSupportDataView.leftAnchor, bottom: self.contactSupportDataView.bottomAnchor, right: self.contactSupportDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.contactSupportButton.addTarget(self, action: #selector(self.click_contactSupport), for: .touchUpInside)
        
        self.sendMailButton.isEnabled = false
        self.sendMailImageview.image = UIImage(named: "")
        self.sendMailImageview.backgroundColor = black1a
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    // MARK:- Button Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_sendMail(){
        print("Send Email Button Clicked")
        self.changePassword()
    }
    
    @objc func click_contactSupport(){
        print("click contact support")
    }
    
}

    extension resetPasswordVC {
        
        func changePassword()
            {
                print("send Mail")
                
                if ApiUtillity.sharedInstance.isValidEmail(emailStr: self.emailtextField.text!){
                    self.resetPassword()
                }
                else{
                    self.view.makeToast("please enter valid email address")
                }
            }

        }

        extension resetPasswordVC {
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                textField.resignFirstResponder()
                return true
            }
        }

        extension resetPasswordVC{
            func resetPassword()
            {
                guard let email = self.emailtextField.text, !email.isEmpty else { return }
                
                Auth.auth().sendPasswordReset(withEmail: email) { (error) in
                    if error != nil
                    {
                        print(error!._code)
                        self.view.makeToast(error?.localizedDescription)
                        return
                    }
                    self.emailtextField.text = ""
                    self.view.makeToast("mail send successfully in your mail")
                }
            }
        }
