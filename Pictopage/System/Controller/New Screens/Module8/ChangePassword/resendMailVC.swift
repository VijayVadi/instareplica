//
//  resetPasswordVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 07/02/20.
//  Copyright © 2020 Grewon. All rights reserved.
//


// This file is not being used anymore.
// Locate resetPasswordVC.swift for the new code file.

/*

import UIKit
import Firebase

class resetPasswordVC: UIViewController {

    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerBackgroundImage: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "HeaderBackground")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let pageTitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Password"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
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
    
    let ChangePasswordTitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Reset your Password"
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ChangePasswordSubtitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "We will send a link to your email"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let restPasswordView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let restPasswordDividerView: UIView = {
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
        return txt
    }()
    
    let sendMailButtonview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let sendMailButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Send Mail", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: -7, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 77)
        
        self.headerView.addSubview(self.headerBackgroundImage)
        self.headerBackgroundImage.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.headerView.addSubview(self.pageTitleLableText)
        self.pageTitleLableText.anchor(top: nil, left: nil, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 17, paddingRight: 0, width: 80, height: 21)
        self.pageTitleLableText.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor).isActive = true
        
        self.headerView.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 7, paddingRight: 0, width: 41, height: 41)
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: nil, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 9, paddingRight: 0, width: 23, height: 22)
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: self.backButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // setup change password Title Lable
        
        self.view.addSubview(self.ChangePasswordTitleLableText)
        self.ChangePasswordTitleLableText.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 34, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 185, height: 22)
        self.ChangePasswordTitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup change password subtitle Lable
        
        self.view.addSubview(self.ChangePasswordSubtitleLableText)
        self.ChangePasswordSubtitleLableText.anchor(top: self.ChangePasswordTitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 214, height: 18)
        self.ChangePasswordSubtitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup change password textfield view
        
        self.view.addSubview(self.restPasswordView)
        self.restPasswordView.anchor(top: self.ChangePasswordSubtitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 296, height: 24)
        self.restPasswordView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.restPasswordView.addSubview(self.restPasswordDividerView)
        self.restPasswordDividerView.anchor(top: nil, left: self.restPasswordView.leftAnchor, bottom: self.restPasswordView.bottomAnchor, right: self.restPasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.restPasswordView.addSubview(self.emailtextField)
        self.emailtextField.anchor(top: self.restPasswordView.topAnchor, left: self.restPasswordView.leftAnchor, bottom: self.restPasswordView.bottomAnchor, right: self.restPasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.emailtextField.delegate = self
        
        // Send Mail button view
        
        self.view.addSubview(self.sendMailButtonview)
        self.sendMailButtonview.anchor(top: self.restPasswordView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 95, height: 31)
        self.sendMailButtonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.sendMailButtonview.addSubview(self.sendMailButton)
        self.sendMailButton.anchor(top: self.sendMailButtonview.topAnchor, left: self.sendMailButtonview.leftAnchor, bottom: self.sendMailButtonview.bottomAnchor, right: self.sendMailButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.sendMailButton.backgroundColor = black1a
        self.sendMailButton.layer.cornerRadius = 30.5
        self.sendMailButton.addTarget(self, action: #selector(self.click_sendMail), for: .touchUpInside)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // MARK:- Button Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_sendMail()
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

extension resetPasswordVC: UITextFieldDelegate
{
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
            self.view.makeToast("mail send successfully in your mail")
        }
    }
}
 
 */
