//
//  changeEmailVC.swift
//  Pictopage
//
//  Created by Grewon on 21/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase

class changeEmailVC: UIViewController {

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
        logoimg.image = UIImage(named: "back_1x")
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
        lbl.text = "Email"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ChangeEmailTitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Change your Email"
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ChangeEmailSubtitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Your password is required for\n security"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let currentEmailTitleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Current Email:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let currentEmailBackView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let currentEmailLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = FirebaseClient.sharedInstance.firebaseCurrentUser!.Email!
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let changeEmailTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let newEmailView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let newEmailDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor(red: 31.0/255.0, green: 34.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        return logov
    }()
    
    let newEmailtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.autocapitalizationType = .none
        txt.tintColor = .black
        txt.keyboardType = UIKeyboardType.emailAddress
        txt.attributedPlaceholder = NSAttributedString(string: "New Email",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    let PasswordView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let PasswordDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor(red: 31.0/255.0, green: 34.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        return logov
    }()
    
    let PasswordtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.isSecureTextEntry = true
        txt.autocapitalizationType = .none
        txt.tintColor = .black
        txt.attributedPlaceholder = NSAttributedString(string: "Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    let changeMailButtonview: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let changeMailImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "new_grediant")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let changeMailButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Change Email", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = .clear
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        return btn
    }()
    
    @objc func handleTextInputChangeEmail() {
        //        let isFormValid = emailtextField.text?.isEmpty == false
        //
        //        if isFormValid {
        //            if ApiUtillity.sharedInstance.isValidEmail(emailStr: self.emailtextField.text!)
        //            {
        //                nextButton.isEnabled = true
        //                nextButton.backgroundColor = blue
        //            }
        //            else
        //            {
        //                nextButton.isEnabled = false
        //                nextButton.backgroundColor = black1a
        //            }
        //        }
        //        else
        //        {
        //            nextButton.isEnabled = false
        //            nextButton.backgroundColor = black1a
        //        }
        
        if newEmailtextField.text?.isEmpty == false && PasswordtextField.text?.isEmpty == false {
            changeMailButton.isEnabled = true
            changeMailImageview.image = UIImage(named: "new_grediant")
        } else {
            changeMailButton.isEnabled = false
            changeMailImageview.image = UIImage(named: "")
            changeMailImageview.backgroundColor = black1a
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 53)
        
        self.headerView.addSubview(self.headerSubView)
        self.headerSubView.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 53)
        
        self.headerSubView.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: self.headerSubView.topAnchor, left: self.headerSubView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 53, height: 53)
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: nil, right: nil, paddingTop: 34.5, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: self.backButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.headerSubView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 32, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 21)
        self.titleLable.centerXAnchor.constraint(equalTo: self.headerSubView.centerXAnchor).isActive = true
        
        // setup change email Title Lable
        
        self.view.addSubview(self.ChangeEmailTitleLableText)
        self.ChangeEmailTitleLableText.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 34, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 204, height: 22)
        self.ChangeEmailTitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup change email subtitle Lable
        
        self.view.addSubview(self.ChangeEmailSubtitleLableText)
        self.ChangeEmailSubtitleLableText.anchor(top: self.ChangeEmailTitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 239, height: 36)
        self.ChangeEmailSubtitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup current email Lable
        
        self.view.addSubview(self.currentEmailTitleLable)
        self.currentEmailTitleLable.anchor(top: self.ChangeEmailSubtitleLableText.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 40, paddingBottom: 0, paddingRight: 0, width: 92, height: 18)
        
        // setup current email back view
        
        self.view.addSubview(self.currentEmailBackView)
        self.currentEmailBackView.anchor(top: self.currentEmailTitleLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 6, paddingLeft: 38, paddingBottom: 0, paddingRight: 38, width: 0, height: 30)
        self.currentEmailBackView.backgroundColor = GrayEEEEEE
        self.currentEmailBackView.layer.cornerRadius = 15
        self.currentEmailBackView.clipsToBounds = true
        
        self.currentEmailBackView.addSubview(self.currentEmailLable)
        self.currentEmailLable.anchor(top: self.currentEmailBackView.topAnchor, left: self.currentEmailBackView.leftAnchor, bottom: self.currentEmailBackView.bottomAnchor, right: self.currentEmailBackView.rightAnchor, paddingTop: 6, paddingLeft: 10, paddingBottom: 6, paddingRight: 10, width: 0, height: 0)
        
        // setup change email textfield view
        
        self.view.addSubview(self.changeEmailTextFieldView)
        self.changeEmailTextFieldView.anchor(top: self.currentEmailBackView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 22, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 296, height: 78)
        self.changeEmailTextFieldView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
            // setup new email Textfield view
        
        self.changeEmailTextFieldView.addSubview(self.newEmailView)
        self.newEmailView.anchor(top: self.changeEmailTextFieldView.topAnchor, left: self.changeEmailTextFieldView.leftAnchor, bottom: nil, right: self.changeEmailTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        
        self.newEmailView.addSubview(self.newEmailDividerView)
        self.newEmailDividerView.anchor(top: nil, left: self.newEmailView.leftAnchor, bottom: self.newEmailView.bottomAnchor, right: self.newEmailView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.newEmailView.addSubview(self.newEmailtextField)
        self.newEmailtextField.anchor(top: self.newEmailView.topAnchor, left: self.newEmailView.leftAnchor, bottom: self.newEmailView.bottomAnchor, right: self.newEmailView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.newEmailtextField.delegate = self
        
            // setup New password Textfield view
        
        self.changeEmailTextFieldView.addSubview(self.PasswordView)
        self.PasswordView.anchor(top: self.newEmailView.bottomAnchor, left: self.changeEmailTextFieldView.leftAnchor, bottom: nil, right: self.changeEmailTextFieldView.rightAnchor, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        
        self.PasswordView.addSubview(self.PasswordDividerView)
        self.PasswordDividerView.anchor(top: nil, left: self.PasswordView.leftAnchor, bottom: self.PasswordView.bottomAnchor, right: self.PasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.PasswordView.addSubview(self.PasswordtextField)
        self.PasswordtextField.anchor(top: self.PasswordView.topAnchor, left: self.PasswordView.leftAnchor, bottom: self.PasswordView.bottomAnchor, right: self.PasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.PasswordtextField.delegate = self
        
        
        // Change Email button view
        
//        self.view.addSubview(self.changeMailButtonview)
//        self.changeMailButtonview.anchor(top: self.changeEmailTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 19, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 111, height: 35)
//        self.changeMailButtonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        self.changeMailButtonview.layer.cornerRadius = 17.5
//        self.changeMailButtonview.clipsToBounds = true
        
        self.view.addSubview(self.changeMailButtonview)
        self.changeMailButtonview.anchor(top: self.changeEmailTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 111, height: 35)
        self.changeMailButtonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.changeMailButtonview.layer.cornerRadius = 17.5
        self.changeMailButtonview.clipsToBounds = true
        
        self.changeMailButtonview.addSubview(self.changeMailImageview)
        self.changeMailImageview.anchor(top: self.changeMailButtonview.topAnchor, left: self.changeMailButtonview.leftAnchor, bottom: self.changeMailButtonview.bottomAnchor, right: self.changeMailButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.changeMailButtonview.addSubview(self.changeMailButton)
        self.changeMailButton.fillSuperview()
        
//        self.changeMailButton.anchor(top: self.changeMailButtonview.topAnchor, left: self.changeMailButtonview.leftAnchor, bottom: self.changeMailButtonview.bottomAnchor, right: self.changeMailButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.changeMailButton.addTarget(self, action: #selector(self.click_changeEmail), for: .touchUpInside)
        
        self.changeMailButton.isEnabled = false
        self.changeMailImageview.image = UIImage(named: "")
        self.changeMailImageview.backgroundColor = black1a
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    // MARK:- Button Action
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_changeEmail()
    {
        
        if Defaults[.UserPassword] == self.PasswordtextField.text!{
            self.changeEmailAddress()
        }
        else{
            self.view.makeToast("Please enter valid password")
        }
    }

}


extension changeEmailVC: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension changeEmailVC{
    
    func changeEmailAddress()
    {
        let currentUser = Auth.auth().currentUser
        
        currentUser?.updateEmail(to: self.newEmailtextField.text!.lowercased()) { error in
            if let error = error {
                print(error)
                if error._code == 17014
                {
                    self.navigationController?.view.makeToast("Login again.")
                }
                else
                {
                    self.view.makeToast(error.localizedDescription)
                }
                return
            }else{
                self.updateUserData()
            }
        }
    }
    
    func updateUserData(){
        
        let db = Firestore.firestore()
        
        let washingtonRef = db.collection("users").document(Auth.auth().currentUser!.uid)
        
        washingtonRef.updateData([
            "Email": self.newEmailtextField.text!.lowercased()
        ]) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
                
                self.navigationController?.view.makeToast("Email Changed Successfully")
                self.Logout()
            }
        }
    }
    
    
    func Logout()
    {
        do {
            try Auth.auth().signOut()
            Defaults.remove(Defaults[.UserPassword])
            Defaults.remove(Defaults[.UserEmail])
            
            let vc = LoginVC()
            self.navigationController?.pushViewController(vc, animated: false)
            
        } catch let signOutErr {
            print("Failed to sign out:", signOutErr)
        }
    }
}
