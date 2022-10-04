//
//  LoginVC.swift
//  Pictopage
//
//  Created by Grewon on 14/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import FRHyperLabel
import IQKeyboardManagerSwift
import Firebase
import SVProgressHUD
import AuthenticationServices
import FirebaseFirestore

class LoginVC: UIViewController, UITextFieldDelegate {
    
    var LoginButtonViewPro = UIView()
    var keyboardHeight = CGFloat()
    
    
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
        logoimg.image = UIImage(named: "PictopageLogoMain")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let textFieldView: UIView = {
        let textV = UIView()
        return textV
    }()
    
    let lableLogin: UILabel = {
        let lblLogin = UILabel()
        lblLogin.text = "Login"
        lblLogin.font = UIFont(name: "HelveticaNeue-Light", size: 18.0)!
        lblLogin.textColor = .white
        lblLogin.textAlignment = .center
        return lblLogin
    }()
    
    let EmailtextFieldView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let EmailtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.keyboardType = UIKeyboardType.emailAddress
        txt.attributedPlaceholder = NSAttributedString(string: "Email",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    let passwordtextFieldView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let passwordtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.isSecureTextEntry = true
        txt.attributedPlaceholder = NSAttributedString(string: "Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    let ForgotView: UIView = {
        let textV = UIView()
        return textV
    }()
    
    let ForgotButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Forgot your password?", for: .normal)
        btn.setTitleColor(UIColor(red: 50.0/255.0, green: 109.0/255.0, blue: 219.0/255.0, alpha: 1.0), for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12.0)
        return btn
    }()
    
    let Orview: UIView = {
        let textV = UIView()
        return textV
    }()
    
    let orImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "orImage")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let SignAppleview: UIView = {
        let textV = UIView()
        return textV
    }()
    
    let signAppleImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "signWithApple")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let signAppleButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let createAccount: UIView = {
        let textV = UIView()
        return textV
    }()
    
    let createAccountlabel: FRHyperLabel = {
        let TCLabel = FRHyperLabel()
        return TCLabel
    }()
    
    
    var textFieldTop : NSLayoutConstraint?
    
    
    // MARK:- viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.makeNextView()
        
        self.view.addSubview(self.backgroundImage)
        self.backgroundImage.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.view.addSubview(self.logoView)
        
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.logoView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 101, paddingLeft: 51, paddingBottom: 0, paddingRight: 51, width: 0, height: 91.18)
        }else{
            self.logoView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 160, paddingLeft: 51, paddingBottom: 0, paddingRight: 51, width: 0, height: 91.18)
        }
        
        self.logoView.addSubview(self.logoImageview)
        self.logoImageview.anchor(top: self.logoView.topAnchor, left: self.logoView.leftAnchor, bottom: self.logoView.bottomAnchor, right: self.logoView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        
        
        self.view.addSubview(self.textFieldView)
        
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.textFieldView.anchor(top: nil, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 37.5, paddingBottom: 0, paddingRight: 37.5, width: 0, height: 139)
            self.textFieldTop = self.textFieldView.topAnchor.constraint(equalTo: self.logoView.bottomAnchor, constant: 104.82)
            self.textFieldTop?.isActive = true
        }else{
            self.textFieldView.anchor(top: nil, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 37.5, paddingBottom: 0, paddingRight: 37.5, width: 0, height: 152)
            self.textFieldTop = self.textFieldView.topAnchor.constraint(equalTo: self.logoView.bottomAnchor, constant: 123.82)
            self.textFieldTop?.isActive = true
        }
        self.textFieldView.clipsToBounds = true
        
        self.textFieldView.addSubview(self.lableLogin)
        self.lableLogin.anchor(top: self.textFieldView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21.0)
        self.lableLogin.centerXAnchor.constraint(equalTo: self.textFieldView.centerXAnchor).isActive = true
        
        self.textFieldView.addSubview(self.EmailtextFieldView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.EmailtextFieldView.anchor(top: self.lableLogin.bottomAnchor, left: self.textFieldView.leftAnchor, bottom: nil, right: self.textFieldView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 44.0)
        }else{
            self.EmailtextFieldView.anchor(top: self.lableLogin.bottomAnchor, left: self.textFieldView.leftAnchor, bottom: nil, right: self.textFieldView.rightAnchor, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 44.0)
        }
        self.EmailtextFieldView.layer.cornerRadius = 22
        
        self.EmailtextFieldView.addSubview(self.EmailtextField)
        self.EmailtextField.anchor(top: self.EmailtextFieldView.topAnchor, left: self.EmailtextFieldView.leftAnchor, bottom: self.EmailtextFieldView.bottomAnchor, right: self.EmailtextFieldView.rightAnchor, paddingTop: 0.0, paddingLeft: 16.0, paddingBottom: 0.0, paddingRight: 16.0, width: 0, height: 0.0)
        self.EmailtextField.delegate = self
        self.EmailtextField.inputAccessoryView = self.LoginButtonViewPro
        self.EmailtextField.autocorrectionType = .no
        self.EmailtextField.keyboardAppearance = .alert
        
        self.textFieldView.addSubview(self.passwordtextFieldView)
        self.passwordtextFieldView.anchor(top: self.EmailtextFieldView.bottomAnchor, left: self.textFieldView.leftAnchor, bottom: nil, right: self.textFieldView.rightAnchor, paddingTop: 15.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 44.0)
        self.passwordtextFieldView.layer.cornerRadius = 22
        
        self.passwordtextFieldView.addSubview(self.passwordtextField)
        self.passwordtextField.anchor(top: self.passwordtextFieldView.topAnchor, left: self.passwordtextFieldView.leftAnchor, bottom: self.passwordtextFieldView.bottomAnchor, right: self.passwordtextFieldView.rightAnchor, paddingTop: 0.0, paddingLeft: 16.0, paddingBottom: 0.0, paddingRight: 16.0, width: 0, height: 0.0)
        self.passwordtextField.delegate = self
        self.EmailtextField.autocorrectionType = .no
        self.passwordtextField.inputAccessoryView = self.LoginButtonViewPro
        self.passwordtextField.keyboardAppearance = .alert
        
        // Forgot view
        
        self.view.addSubview(self.ForgotView)
        
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.ForgotView.anchor(top: self.textFieldView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 9, paddingLeft: 75, paddingBottom: 0, paddingRight: 75, width: 0, height: 49)
            
            self.ForgotView.addSubview(self.ForgotButton)
            self.ForgotButton.anchor(top: self.ForgotView.topAnchor, left: self.ForgotView.leftAnchor, bottom: nil, right: self.ForgotView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 13.0)
            self.ForgotButton.addTarget(self, action: #selector(self.click_forgotPassword), for: .touchUpInside)
            
            self.ForgotView.addSubview(self.Orview)
            self.Orview.anchor(top: self.ForgotButton.bottomAnchor, left: self.ForgotView.leftAnchor, bottom: nil, right: self.ForgotView.rightAnchor, paddingTop: 9.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 27.0)
        }else{
            self.ForgotView.anchor(top: self.textFieldView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 15, paddingLeft: 75, paddingBottom: 0, paddingRight: 75, width: 0, height: 71)
            
            self.ForgotView.addSubview(self.ForgotButton)
            self.ForgotButton.anchor(top: self.ForgotView.topAnchor, left: self.ForgotView.leftAnchor, bottom: nil, right: self.ForgotView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16.0)
            self.ForgotButton.addTarget(self, action: #selector(self.click_forgotPassword), for: .touchUpInside)
            
            self.ForgotView.addSubview(self.Orview)
            self.Orview.anchor(top: self.ForgotButton.bottomAnchor, left: self.ForgotView.leftAnchor, bottom: nil, right: self.ForgotView.rightAnchor, paddingTop: 28.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 27.0)
        }
        self.Orview.addSubview(self.orImageView)
        self.orImageView.anchor(top: self.Orview.topAnchor, left: self.Orview.leftAnchor, bottom: self.Orview.bottomAnchor, right: self.Orview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // signIn with apple
        
        self.view.addSubview(self.SignAppleview)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.SignAppleview.anchor(top: self.ForgotView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 18, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 44)
        }else{
            self.SignAppleview.anchor(top: self.ForgotView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 25, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 44)
        }
        
        self.SignAppleview.addSubview(self.signAppleImageview)
        self.signAppleImageview.anchor(top: self.SignAppleview.topAnchor, left: self.SignAppleview.leftAnchor, bottom: self.SignAppleview.bottomAnchor, right: self.SignAppleview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.SignAppleview.addSubview(self.signAppleButton)
        self.signAppleButton.anchor(top: self.SignAppleview.topAnchor, left: self.SignAppleview.leftAnchor, bottom: self.SignAppleview.bottomAnchor, right: self.SignAppleview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.signAppleButton.addTarget(self, action: #selector(self.click_signWithApple), for: .touchUpInside)
        
        // create Account
        
        self.view.addSubview(self.createAccount)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.createAccount.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.safeBottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 8, paddingRight: 0, width: 0, height: 16)
        }else{
            self.createAccount.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.safeBottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        }
        
        self.createAccount.addSubview(self.createAccountlabel)
        self.createAccountlabel.anchor(top: self.createAccount.topAnchor, left: self.createAccount.leftAnchor, bottom: self.createAccount.bottomAnchor, right: self.createAccount.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        NotificationCenter.default.addObserver(self,selector: #selector(keyboardWillShow),name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        self.initLabel()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

    
    // MARK:- TextfieldDelegate Method
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK:- FRHyperLable
    
    func initLabel()
    {
        self.createAccountlabel.numberOfLines = 0;
        
        let string = "Don't have a Pictopage Account? Create One"
        
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
                          NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13.0)]
        
        self.createAccountlabel.attributedText = NSAttributedString(string: string, attributes: attributes as [NSAttributedString.Key : Any])
        self.createAccountlabel.sizeToFit()
        self.createAccountlabel.textAlignment = .center
        let handler = {
            (hyperLabel: FRHyperLabel?, substring: String?) -> Void in
            self.click_labelAction(string: substring!)
        }
        
        //Step 3: Add link substrings
        self.createAccountlabel.setLinksForSubstrings(["Create One"], withLinkHandler: handler)
    }
    
    func click_labelAction(string: String)
    {
        if string == "Create One"{
            let vc = CreateAccountMainVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    // MARK:- Create KeyBorad view
    
    func makeNextView()
    {
        self.LoginButtonViewPro.frame = CGRect(x: 0, y: self.view.frame.size.height, width: self.view.frame.size.width, height: 45.0)
        
        self.LoginButtonViewPro.backgroundColor = Black101010
        
        let v_next = UIView(frame: CGRect(x: self.LoginButtonViewPro.frame.size.width - 145, y: 0.0, width: 145, height: self.LoginButtonViewPro.frame.size.height))
        v_next.backgroundColor = .clear
        
        let loginView = UIView(frame: CGRect(x: 25, y: 7.5, width: 145 - 50, height: 30.0))
        loginView.backgroundColor = .clear
        loginView.layer.cornerRadius = 30 / 2
        loginView.clipsToBounds = true
        v_next.addSubview(loginView)
        
        let loginImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: loginView.frame.size.width, height: 30.0))
        loginImageView.backgroundColor = .clear
        loginImageView.clipsToBounds = true
        loginImageView.image = UIImage(named: "loginRectangle1x")
        loginView.addSubview(loginImageView)
        
        let lbl_login = UILabel(frame: CGRect(x: 0, y: 0, width: loginView.frame.size.width, height: 30.0))
        lbl_login.numberOfLines = 0
        lbl_login.text = "Login"
        lbl_login.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl_login.textAlignment = .center
        lbl_login.textColor = .white
        lbl_login.backgroundColor = .clear
        lbl_login.clipsToBounds = true
        loginView.addSubview(lbl_login)
        
        let nxt_btn = UIButton(frame: CGRect(x: 0, y: 0, width: loginView.frame.size.width, height: 30.0))
        nxt_btn.addTarget(self, action: #selector(self.click_login), for: .touchUpInside)
        loginView.addSubview(nxt_btn)
        
        self.LoginButtonViewPro.addSubview(v_next)
        
        let v_divider = UIView(frame: CGRect(x: self.LoginButtonViewPro.frame.size.width - 146, y: 10, width: 1.0, height: 25.0))
        v_divider.backgroundColor = UIColor.white
        self.LoginButtonViewPro.addSubview(v_divider)
        
        let v_text = UIView(frame: CGRect(x: 0, y: 0, width: v_divider.frame.origin.x - 8, height: self.LoginButtonViewPro.frame.size.height))
        v_text.backgroundColor = .clear
        let b_forgot = UIButton(frame: CGRect(x: 0, y: 0, width: v_text.frame.size.width, height: v_text.frame.size.height))
        b_forgot.setTitle("Forgot your password?", for: .normal)
        b_forgot.setTitleColor(UIColor(red: 50.0/255.0, green: 109.0/255.0, blue: 219.0/255.0, alpha: 1.0), for: .normal)
        b_forgot.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        b_forgot.addTarget(self, action: #selector(self.click_forgotPassword), for: .touchUpInside)
        v_text.addSubview(b_forgot)
        
        self.LoginButtonViewPro.addSubview(v_text)
        
        self.LoginButtonViewPro.clipsToBounds = true
        self.LoginButtonViewPro.layer.cornerRadius = 15
        self.LoginButtonViewPro.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
    }
    
    // MARK:- keyBorad Hide/show Method
    
    @objc func keyboardWillShow(_ notification: Notification) {
        UIView.animate(withDuration: 0.8) {
            if !ApiUtillity.sharedInstance.isGreterPhoneX(){
                self.textFieldTop?.constant = 49.82
            }else{
                self.textFieldTop?.constant = 30.82
            }
            self.view.layoutIfNeeded()
        }
        self.ForgotView.isHidden = true
    }
    
    @objc
    func keyboardWillHide(_ notification: NSNotification) {
        UIView.animate(withDuration: 0.8) {
            if !ApiUtillity.sharedInstance.isGreterPhoneX(){
                self.textFieldTop?.constant = 104.82
            }else{
                self.textFieldTop?.constant = 123.82
            }
            self.view.layoutIfNeeded()
        }
        self.keyboardHeight = 0.0
        self.ForgotView.isHidden = false
    }
    
    
    // MARK:- Button Action
    
    @objc func click_login(){
        print("login")
        
        
        self.handleLogin()
        
    }
    
    @objc func click_signWithApple(){
        print("Apple")
        
        if #available(iOS 13.0, *) {
            let appleIDProvider = ASAuthorizationAppleIDProvider()
            let request = appleIDProvider.createRequest()
            request.requestedScopes = [.fullName, .email]
            
            let authorizationController = ASAuthorizationController(authorizationRequests: [request])
            authorizationController.delegate = self
            authorizationController.presentationContextProvider = self
            authorizationController.performRequests()
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    @objc func click_forgotPassword(){
        print("forgot")
        let vc = resetPasswordVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension LoginVC{
    
    
    @objc func handleLogin() {
        
        
        guard let email = self.EmailtextField.text?.lowercased() else {
            return
        }
        guard let password = self.passwordtextField.text else { return }
        
        if ApiUtillity.sharedInstance.isValidEmail(emailStr: self.EmailtextField.text!)
        {
            
            SVProgressHUD.show()
            Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
                
                if error != nil {
                    SVProgressHUD.dismiss()
                    print(error!._code)
                    self.view.makeToast(error?.localizedDescription)
                    return
                }
                
                print("Successfully logged back in with user:", user?.user.uid ?? "")
                SVProgressHUD.dismiss()
                Defaults[.UserPassword] = password
                Defaults[.UserEmail] = email
                let vc = MainVC()
                
                FirebaseClient.sharedInstance.getCurrentUserDataInAppDelegate(controller: self)
                
                self.navigationController?.pushViewController(vc, animated: true)
                
            })
        }
        else
        {
            self.view.makeToast("please enter valid email")
        }
    }
}


// MARK:- SignIn With Apple ID

@available(iOS 13.0, *)
extension LoginVC : ASAuthorizationControllerDelegate {
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
            
            
            print("User Id - \(appleIDCredential.user)")
            print("User Name - \(appleIDCredential.fullName?.description ?? "N/A")")
            print("User Email - \(appleIDCredential.email ?? "N/A")")
            print("Real User Status - \(appleIDCredential.realUserStatus.rawValue)")
            
            if let identityTokenData = appleIDCredential.identityToken,
                let identityTokenString = String(data: identityTokenData, encoding: .utf8) {
                print("Identity Token \(identityTokenString)")
            }
            
            
            Auth.auth().signIn(with: authorization.credential as! AuthCredential) { authResult, error in
              if error != nil {
                // Handle error.
              }
              // User is signed in.
              // IdP data available in authResult.additionalUserInfo.profile.
              // Twitter OAuth access token can also be retrieved by:
              // authResult.credential.accessToken
              // Twitter OAuth ID token can be retrieved by calling:
              // authResult.credential.idToken
              // Twitter OAuth secret can be retrieved by calling:
              // authResult.credential.secret
            }
            
//            self.userEmail = appleIDCredential.email ?? "N/A"
//            self.register()
            
        } else if let passwordCredential = authorization.credential as? ASPasswordCredential {
            // Sign in using an existing iCloud Keychain credential.
            let username = passwordCredential.user
            let password = passwordCredential.password
            
            // For the purpose of this demo app, show the password credential as an alert.
            DispatchQueue.main.async {
                let message = "The app has received your selected credential from the keychain. \n\n Username: \(username)\n Password: \(password)"
                let alertController = UIAlertController(title: "Keychain Credential Received",
                                                        message: message,
                                                        preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                self.present(alertController, animated: true, completion: nil)
            }
        }
    }
}

extension LoginVC : ASAuthorizationControllerPresentationContextProviding {
    
    @available(iOS 13.0, *)
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return self.view.window!
    }
    
}
