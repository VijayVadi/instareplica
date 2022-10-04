//
//  createAccountSelectUsernameVC.swift
//  Pictopage
//
//  Created by Grewon on 12/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import FRHyperLabel
import IQKeyboardManagerSwift
import Firebase
import SVProgressHUD
import FirebaseFirestore

class createAccountSelectUsernameVC: UIViewController, UITextFieldDelegate {

    
    // MARK:- veriables
    
    static var userEmail = String()
    static var userPassword = String()
    static var userFirstName = String()
    static var userLastName = String()
    static var userUserName = String()
    static var userDOB = String()
    
    var nextButtonView = UIView()
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
        lbl.text = "Choose a Username"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let LableText1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "This helps your friends find you"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let userNameView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let userNametextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Username",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
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
    
    let termsView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let termslabel1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "By tapping \"Create Account\", you"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let termslabel2: FRHyperLabel = {
        let TCLabel = FRHyperLabel()
        return TCLabel
    }()
    
    let termslabel3: FRHyperLabel = {
        let TCLabel = FRHyperLabel()
        return TCLabel
    }()
    
    let createAccountView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let createAccountButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Create Account", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return btn
    }()
    
    var uploadedImageURl = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.makeNextView()
        
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
        
        // Textfiled view
        
        self.view.addSubview(self.TextFieldView)
        self.TextFieldView.anchor(top: self.TextView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 62, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 44)
        
        self.TextFieldView.addSubview(self.userNameView)
        self.userNameView.anchor(top: self.TextFieldView.topAnchor, left: self.TextFieldView.leftAnchor, bottom: nil, right: self.TextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 300, height: 44)
        self.userNameView.layer.cornerRadius = 22
        
        self.userNameView.addSubview(self.userNametextField)
        self.userNametextField.anchor(top: self.userNameView.topAnchor, left: self.userNameView.leftAnchor, bottom: self.userNameView.bottomAnchor, right: self.userNameView.rightAnchor, paddingTop: 0, paddingLeft: 16.0, paddingBottom: 0, paddingRight: 16.0, width: 0, height: 0)
        self.userNametextField.inputAccessoryView = self.nextButtonView
        self.userNametextField.delegate = self
        self.userNametextField.keyboardAppearance = .alert
        
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
        
        // terms and Condition view
        
        self.view.addSubview(self.termsView)
        self.termsView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.backButtonMainView.topAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 40, paddingBottom: 38, paddingRight: 40, width: 0, height: 60)
        
        self.termsView.addSubview(self.termslabel1)
        self.termslabel1.anchor(top: self.termsView.topAnchor, left: self.termsView.leftAnchor, bottom: nil, right: self.termsView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
        self.termsView.addSubview(self.termslabel2)
        self.termslabel2.anchor(top: self.termslabel1.bottomAnchor, left: self.termsView.leftAnchor, bottom: nil, right: self.termsView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
        self.termsView.addSubview(self.termslabel3)
        self.termslabel3.anchor(top: self.termslabel2.bottomAnchor, left: self.termsView.leftAnchor, bottom: nil, right: self.termsView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
        // create account view
        
        self.view.addSubview(self.createAccountView)
        self.createAccountView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.termsView.topAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 17, paddingRight: 8, width: 0, height: 44)
        
        self.createAccountView.addSubview(self.createAccountButton)
        self.createAccountButton.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 44)
        self.createAccountButton.backgroundColor = black1a
        self.createAccountButton.layer.cornerRadius = 22
        self.createAccountButton.centerYAnchor.constraint(equalTo: self.createAccountView.centerYAnchor).isActive = true
        self.createAccountButton.centerXAnchor.constraint(equalTo: self.createAccountView.centerXAnchor).isActive = true
        self.createAccountButton.addTarget(self, action: #selector(self.click_createAccount), for: .touchUpInside)
        
        
        // keyborad notifier
        
        NotificationCenter.default.addObserver(self,selector: #selector(keyboardWillShow),name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        self.userNametextField.text = (createAccountSelectUsernameVC.userFirstName + "_" + createAccountSelectUsernameVC.userLastName).lowercased()
        
        self.initTermsLabel()
        self.initPolicyLabel()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- Create KeyBorad view
    
    func makeNextView()
    {
        self.nextButtonView.frame = CGRect(x: 0, y: self.view.frame.size.height, width: self.view.frame.size.width, height: 44.0)
        self.nextButtonView.backgroundColor = dullBack
        
        let v_next = UIView(frame: CGRect(x: self.nextButtonView.frame.size.width - 124, y: 0.0, width: 124, height: self.nextButtonView.frame.size.height))
        
        let lbl_next = UILabel(frame: CGRect(x: 16, y: 12, width: 86, height: 20.0))
        lbl_next.numberOfLines = 0
        lbl_next.text = "Create Account"
        lbl_next.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lbl_next.textAlignment = .center
        lbl_next.textColor = .white
        lbl_next.backgroundColor = blue
        lbl_next.layer.cornerRadius = 10.0
        lbl_next.clipsToBounds = true
        v_next.addSubview(lbl_next)
        
        let nxt_btn = UIButton(frame: CGRect(x: 0, y: 0, width: v_next.frame.size.width, height: v_next.frame.size.height))
        nxt_btn.addTarget(self, action: #selector(self.click_createAccount), for: .touchUpInside)
        v_next.addSubview(nxt_btn)
        
        self.nextButtonView.addSubview(v_next)
        
        let v_divider = UIView(frame: CGRect(x: v_next.frame.origin.x - 1, y: 10, width: 1, height: 24.0))
        v_divider.backgroundColor = GrayD8
        self.nextButtonView.addSubview(v_divider)
        
        let v_text = UIView(frame: CGRect(x: 0, y: 0, width: v_divider.frame.origin.x - 8, height: self.nextButtonView.frame.size.height))
        
        let lbl_text = FRHyperLabel(frame: CGRect(x: 0, y: 0, width: v_text.frame.size.width, height: v_text.frame.size.height))
        
        lbl_text.numberOfLines = 0
        lbl_text.textAlignment = .center
        let string = "By tapping \"Create Account\", you agree to the Terms and Conditions and Privacy Policy."
        
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
                          NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Medium", size: 11.0)!]
        
        lbl_text.attributedText = NSAttributedString(string: string, attributes: attributes)
        
        let handler = {
            (hyperLabel: FRHyperLabel?, substring: String?) -> Void in
            self.click_labelAction(string: substring!)
        }
        
        //Step 3: Add link substrings
        lbl_text.setLinksForSubstrings(["Terms and Conditions", "Privacy Policy"], withLinkHandler: handler)
        
        v_text.addSubview(lbl_text)
        self.nextButtonView.addSubview(v_text)
        
        self.nextButtonView.clipsToBounds = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    // MARK:- keyBorad Hide/show Method
    
    @objc func keyboardWillShow(_ notification: Notification) {
        
        self.createAccountView.isHidden = true
        self.termsView.isHidden = true
    }
    
    @objc
    func keyboardWillHide(_ notification: NSNotification) {
        self.createAccountView.isHidden = false
        self.termsView.isHidden = false
    }
    
    // MARK:- Textfiled Delegate Method
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK:- FRHyperLable
    
    func initTermsLabel()
    {
        //\nPrivacy Policy.
        
        self.termslabel2.numberOfLines = 0
        self.termslabel2.textAlignment = .center
        let string = "agree to the Terms and Conditions and"
        
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
                          NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Light", size: 17.0)!]
        
        self.termslabel2.attributedText = NSAttributedString(string: string, attributes: attributes)
        
        let handler = {
            (hyperLabel: FRHyperLabel?, substring: String?) -> Void in
            self.click_labelAction(string: substring!)
        }
        
        //Step 3: Add link substrings
        self.termslabel2.setLinksForSubstrings(["Terms and Conditions"], withLinkHandler: handler)
    }
    
    func initPolicyLabel()
    {
        //\nPrivacy Policy.
        
        self.termslabel3.numberOfLines = 0
        self.termslabel3.textAlignment = .center
        let string = "Privacy Policy"
        
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
                          NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Light", size: 17.0)!]
        
        self.termslabel3.attributedText = NSAttributedString(string: string, attributes: attributes)
        
        let handler = {
            (hyperLabel: FRHyperLabel?, substring: String?) -> Void in
            self.click_labelAction(string: substring!)
        }
        
        //Step 3: Add link substrings
        self.termslabel3.setLinksForSubstrings(["Privacy Policy"], withLinkHandler: handler)
    }
    
    
    func click_labelAction(string: String)
    {
        if string == "Privacy Policy"
        {
            print("privacy")
        }
        else
        {
            print("terms")
        }
    }
    
    // MARK:- Button Action

    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_createAccount()
    {
        
        let whitespace = NSCharacterSet.whitespaces
        
        let range = self.userNametextField.text!.rangeOfCharacter(from: whitespace)
        
        // range will be nil if no whitespace is found
        if let test = range {
            print("whitespace found")
            print(test)
            self.view.makeToast("Please remove space in username")
            return
        }
        else
        {
            self.uploadUserProfileImage()
        }        
    }
    
}

// MARK:- Firebase Function

extension createAccountSelectUsernameVC{
    
    func uploadUserProfileImage(){
        
        let image = UIImage(named: "userLogo1x")
        guard let uploadData = image!.jpegData(compressionQuality: 0.5) else { return }
        
        SVProgressHUD.show()
        let filename = NSUUID().uuidString
        let deviceID = UIDevice.current.identifierForVendor!.uuidString
        print(deviceID)
        
        let storageRef = Storage.storage().reference().child("pages").child(deviceID).child("userProfileImage").child(filename)
        storageRef.putData(uploadData, metadata: nil) { (metadata, err) in
            
            if let err = err {
                self.navigationItem.rightBarButtonItem?.isEnabled = true
                SVProgressHUD.dismiss()
                self.createAccountButton.isEnabled = true
                print("Failed to upload post image:", err)
                return
            }
            
            storageRef.downloadURL(completion: { (downloadURL, err) in
                if let err = err {
                    SVProgressHUD.dismiss()
                    self.createAccountButton.isEnabled = true
                    print("Failed to retrieve downloadURL:", err)
                    return
                }
                
                guard let imageUrl = downloadURL?.absoluteString else { return }
                SVProgressHUD.dismiss()
                print("Successfully uploaded post image:", imageUrl)
                self.uploadedImageURl = imageUrl
                self.createAccount()
            })
        }
        
    }
    
    
    func createAccount()
    {
        var ref: DocumentReference? = nil
        SVProgressHUD.show()
        
        Auth.auth().createUser(withEmail: createAccountSelectUsernameVC.userEmail, password: createAccountSelectUsernameVC.userPassword, completion: { (user, error: Error?) in
            
            if error != nil {
                SVProgressHUD.dismiss()
                print(error!._code)
                self.view.makeToast(error?.localizedDescription)
                return
            }
            
            Defaults[.UserEmail] = createAccountSelectUsernameVC.userEmail
            Defaults[.UserPassword] = createAccountSelectUsernameVC.userPassword
            
            print("Successfully created user:", user?.user.uid ?? "")
            
            let params = [
                "Bio": "",
                "DOB": createAccountSelectUsernameVC.userDOB,
                "Status": "",
                "Email": createAccountSelectUsernameVC.userEmail,
                "FullName": createAccountSelectUsernameVC.userFirstName + " " + createAccountSelectUsernameVC.userLastName,
                "UserName": (createAccountSelectUsernameVC.userFirstName + "_" + createAccountSelectUsernameVC.userLastName).lowercased(),
                "ProfilePicture": self.uploadedImageURl,
                "Token": Defaults[.FCMToken]
            ]
            
            ref = Firestore.firestore().collection("users").document((user?.user.uid)!)
            ref?.setData(params, completion: { (err) in
                if let err = err {
                    SVProgressHUD.dismiss()
                    print("Error adding document: \(err)")
                } else {
                    print("Document added with ID: \(ref!.documentID)")
                    
                    Defaults[.UserPassword] = createAccountSelectUsernameVC.userPassword
                    Defaults[.UserEmail] = createAccountSelectUsernameVC.userEmail
                    
                    self.addUserName(userID: ref!.documentID)
                }
            })
            
        })
        
    }
    
    func addUserName(userID: String)
    {
        let db = Firestore.firestore()
        
        let docData = [userID : (createAccountSelectUsernameVC.userFirstName + "_" + createAccountSelectUsernameVC.userLastName).lowercased()]
        
        db.collection("userNames").document(userID).setData(docData) { err in
            if let err = err {
                SVProgressHUD.dismiss()
                print("Error writing document: \(err)")
            } else {
                SVProgressHUD.dismiss()
                print("Document successfully written!")
                
                let vc = MainVC()
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}
