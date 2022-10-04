//
//  createanaccount.swift
//  Pictopage
//
//  Created by Vijay Vadi on 5/6/20.
//  Copyright © 2020 Page inc. All rights reserved.
//

/*
import UIKit
import IQKeyboardManagerSwift
import Toast_Swift

class createAccountEmailAndPasswordVC: UIViewController {

    // MARK:- veriable
    
    let backgroundImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "background")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
    let logoView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let logoImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "createAccountLogo")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let TextView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let LableText: UIView = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Welcome to Pictopage"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let LableText1: UIView = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Let's get your account set up."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let emailMainView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let emailtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.keyboardType = UIKeyboardType.emailAddress
        txt.attributedPlaceholder = NSAttributedString(string: "Email",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    let passwordMainView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let passwordtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        txt.isSecureTextEntry = true
        return txt
    }()
    
    let nextView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Next", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return btn
    }()
    
    let backButtonMainView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let backImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "Oval")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let backButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "back")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
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
        
        let isFormValid = emailtextField.text?.isEmpty == false && passwordtextField.text?.isEmpty == false
        
        if isFormValid {
            nextButton.isEnabled = true
            nextButton.backgroundColor = blue
        } else {
            nextButton.isEnabled = false
            nextButton.backgroundColor = black1a
        }
    }
    
    //MARK:- viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.backgroundImage)
        self.backgroundImage.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.view.addSubview(self.logoView)
        self.logoView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 40, paddingLeft: 26, paddingBottom: 0, paddingRight: 26, width: 0, height: 60)
        
        self.logoView.addSubview(self.logoImageview)
        self.logoImageview.anchor(top: self.logoView.topAnchor, left: self.logoView.leftAnchor, bottom: self.logoView.bottomAnchor, right: self.logoView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // Text Lable view
        
        self.view.addSubview(self.TextView)
        self.TextView.anchor(top: self.logoView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 7, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 46)
        
        self.TextView.addSubview(self.LableText)
        self.LableText.anchor(top: self.TextView.topAnchor, left: self.TextView.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 20)
        
        self.TextView.addSubview(self.LableText1)
        self.LableText1.anchor(top: self.LableText.bottomAnchor, left: self.TextView.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 6, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 20)
        
        
        // Textfield view
        
        self.view.addSubview(self.TextFieldView)
        self.TextFieldView.anchor(top: self.TextView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 62, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 108)
        
        self.TextFieldView.addSubview(self.emailMainView)
        self.emailMainView.anchor(top: self.TextFieldView.topAnchor, left: self.TextFieldView.leftAnchor, bottom: nil, right: self.TextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 300, height: 44)
        self.emailMainView.layer.cornerRadius = 22
        
        self.emailMainView.addSubview(self.emailtextField)
        self.emailtextField.anchor(top: self.emailMainView.topAnchor, left: self.emailMainView.leftAnchor, bottom: self.emailMainView.bottomAnchor, right: self.emailMainView.rightAnchor, paddingTop: 0, paddingLeft: 16.0, paddingBottom: 0, paddingRight: 16.0, width: 0, height: 0)
        self.emailtextField.keyboardAppearance = .alert
        
        self.TextFieldView.addSubview(self.passwordMainView)
        self.passwordMainView.anchor(top: self.emailMainView.bottomAnchor, left: self.TextFieldView.leftAnchor, bottom: nil, right: self.TextFieldView.rightAnchor, paddingTop: 20, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 44)
        self.passwordMainView.layer.cornerRadius = 22
        
        self.passwordMainView.addSubview(self.passwordtextField)
        self.passwordtextField.anchor(top: self.passwordMainView.topAnchor, left: self.passwordMainView.leftAnchor, bottom: self.passwordMainView.bottomAnchor, right: self.passwordMainView.rightAnchor, paddingTop: 0, paddingLeft: 16.0, paddingBottom: 0, paddingRight: 16.0, width: 0, height: 0)
        self.passwordtextField.keyboardAppearance = .alert
        
        // Next button view
        
        self.view.addSubview(self.nextView)
        self.nextView.anchor(top: self.TextFieldView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 109, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 44)
        
        self.nextView.addSubview(self.nextButton)
        self.nextButton.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 44)
        self.nextButton.backgroundColor = black1a
        self.nextButton.layer.cornerRadius = 22
        self.nextButton.centerYAnchor.constraint(equalTo: self.nextView.centerYAnchor).isActive = true
        self.nextButton.centerXAnchor.constraint(equalTo: self.nextView.centerXAnchor).isActive = true
        self.nextButton.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        
        
        // back button view
        
        self.view.addSubview(self.backButtonMainView)
        self.backButtonMainView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0.0, paddingLeft: -8, paddingBottom: -8, paddingRight: 0, width: 70, height: 70)
        
        self.backButtonMainView.addSubview(self.backImageview)
        self.backImageview.anchor(top: self.backButtonMainView.topAnchor, left: self.backButtonMainView.leftAnchor, bottom: self.backButtonMainView.bottomAnchor, right: self.backButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.backButtonMainView.addSubview(self.backButtonImageview)
        self.backButtonImageview.anchor(top: nil, left: self.backButtonMainView.leftAnchor, bottom: self.backButtonMainView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: 22, paddingRight: 0, width: 22, height: 22)
        
        self.backButtonMainView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonMainView.topAnchor, left: self.backButtonMainView.leftAnchor, bottom: self.backButtonMainView.bottomAnchor, right: self.backButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        
//        IQKeyboardManager.shared.disabledToolbarClasses = [createAccountEmailAndPasswordVC.self]
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- Change Statusbar color
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    // MARK:- Button Action
    
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_next()
    {
        
//        if self.emailtextField.text!.count == 0
//        {
//            self.view.makeToast("Please enter email")
//        }
//        else if self.passwordtextField.text!.count == 0
//        {
//            self.view.makeToast("Please enter password")
//        }
//        else
//        {
//            createAccountSelectUsernameVC.userEmail = self.emailtextField.text!
//            createAccountSelectUsernameVC.userPassword = self.passwordtextField.text!
//            let VC = createAccountUsernameVC()
//            self.navigationController?.pushViewController(VC, animated: true)
//        }
        
        createAccountSelectUsernameVC.userEmail = self.emailtextField.text!.lowercased()
        createAccountSelectUsernameVC.userPassword = self.passwordtextField.text!
        let VC = createAccountUsernameVC()
        self.navigationController?.pushViewController(VC, animated: true)
        
    }

}
 
 */
