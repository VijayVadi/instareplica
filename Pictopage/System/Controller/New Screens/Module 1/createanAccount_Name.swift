//
//  createanAccount_Name.swift
//  Pictopage
//
//  Created by Vijay Vadi on 5/7/20.
//  Copyright © 2020 Page inc. All rights reserved.
//

/*
import UIKit
import IQKeyboardManagerSwift

class createAccountUsernameVC: UIViewController, UITextFieldDelegate {

    
    // MARK:- veriables
    
    var nextButtonView = UIView()
    var keyboardHeight = CGFloat()
    var lableNext = UILabel()
    
    
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
    
    let LableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Tell us your name"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let LableText1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "This shows people who you are"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let firstnameMainView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let FirstnametextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Firstname",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    let lastnameMainView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let LastnametextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Lastname",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
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
            
            let isFormValid = FirstnametextField.text?.isEmpty == false && LastnametextField.text?.isEmpty == false
            
            if isFormValid {
                nextButton.isEnabled = true
                nextButton.backgroundColor = blue
            } else {
                nextButton.isEnabled = false
                nextButton.backgroundColor = black1a
            }
        }
    
    // MARK:- viewDidLoad
    
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
        
        
        // Textfield view
        
        self.view.addSubview(self.TextFieldView)
        self.TextFieldView.anchor(top: self.TextView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 62, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 108)
        
        self.TextFieldView.addSubview(self.firstnameMainView)
        self.firstnameMainView.anchor(top: self.TextFieldView.topAnchor, left: self.TextFieldView.leftAnchor, bottom: nil, right: self.TextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 300, height: 44)
        self.firstnameMainView.layer.cornerRadius = 22
        
        self.firstnameMainView.addSubview(self.FirstnametextField)
        self.FirstnametextField.anchor(top: self.firstnameMainView.topAnchor, left: self.firstnameMainView.leftAnchor, bottom: self.firstnameMainView.bottomAnchor, right: self.firstnameMainView.rightAnchor, paddingTop: 0, paddingLeft: 16.0, paddingBottom: 0, paddingRight: 16.0, width: 0, height: 0)
        self.FirstnametextField.inputAccessoryView = self.nextButtonView
        self.FirstnametextField.delegate = self
        self.FirstnametextField.keyboardAppearance = .alert
        
        self.TextFieldView.addSubview(self.lastnameMainView)
        self.lastnameMainView.anchor(top: self.firstnameMainView.bottomAnchor, left: self.TextFieldView.leftAnchor, bottom: nil, right: self.TextFieldView.rightAnchor, paddingTop: 20, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 44)
        self.lastnameMainView.layer.cornerRadius = 22
        
        self.lastnameMainView.addSubview(self.LastnametextField)
        self.LastnametextField.anchor(top: self.lastnameMainView.topAnchor, left: self.lastnameMainView.leftAnchor, bottom: self.lastnameMainView.bottomAnchor, right: self.lastnameMainView.rightAnchor, paddingTop: 0, paddingLeft: 16.0, paddingBottom: 0, paddingRight: 16.0, width: 0, height: 0)
        self.LastnametextField.inputAccessoryView = self.nextButtonView
        self.LastnametextField.delegate = self
        self.LastnametextField.keyboardAppearance = .alert
        
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
        
        // keyborad notifier
        
        NotificationCenter.default.addObserver(self,selector: #selector(keyboardWillShow),name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- Change Statusbar color
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARKK:- Textfield Delegate Method
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK:- Create KeyBorad view
    
    func makeNextView()
    {
        self.nextButtonView.frame = CGRect(x: 0, y: self.view.frame.size.height, width: self.view.frame.size.width, height: 44.0)
        self.nextButtonView.backgroundColor = dullBack
        
        let v_next = UIView(frame: CGRect(x: self.nextButtonView.frame.size.width - 124, y: 0.0, width: 124, height: self.nextButtonView.frame.size.height))
        
        self.lableNext = UILabel(frame: CGRect(x: 16, y: 12, width: 86, height: 20.0))
        self.lableNext.numberOfLines = 0
        self.lableNext.text = "Next"
        self.lableNext.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        self.lableNext.textAlignment = .center
        self.lableNext.textColor = .white
        self.lableNext.backgroundColor = blue
        self.lableNext.layer.cornerRadius = 10.0
        self.lableNext.clipsToBounds = true
        v_next.addSubview(self.lableNext)
        
        let nxt_btn = UIButton(frame: CGRect(x: 0, y: 0, width: v_next.frame.size.width, height: v_next.frame.size.height))
        nxt_btn.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        v_next.addSubview(nxt_btn)
        
        self.nextButtonView.addSubview(v_next)
        
        let v_divider = UIView(frame: CGRect(x: v_next.frame.origin.x - 1, y: 10, width: 1, height: 24.0))
        v_divider.backgroundColor = GrayD8
        self.nextButtonView.addSubview(v_divider)
        
        let v_text = UIView(frame: CGRect(x: 0, y: 0, width: v_divider.frame.origin.x - 8, height: self.nextButtonView.frame.size.height))
        
        let lbl_text = UILabel(frame: CGRect(x: 5, y: 0, width: v_text.frame.size.width - 8, height: v_text.frame.size.height))
        lbl_text.numberOfLines = 0
        lbl_text.text = "An email is on its way, with a link to reset your password, to the email address you entered. if you didn't recevie the link, you can resend the email"
        lbl_text.font = UIFont(name: "HelveticaNeue-Medium", size: 9.0)!
        lbl_text.textAlignment = .center
        lbl_text.textColor = .white
        v_text.addSubview(lbl_text)

        self.nextButtonView.addSubview(v_text)
        self.nextButtonView.clipsToBounds = true
        
    }
    
   
    // MARK:- keyBorad Hide/show Method
    
    @objc func keyboardWillShow(_ notification: Notification) {
        self.nextView.isHidden = true
    }
    
    @objc
    func keyboardWillHide(_ notification: NSNotification) {
        self.keyboardHeight = 0.0
        self.nextView.isHidden = false
    }
    
    // MARK:- Button Action
    
   
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_next()
    {
//        if self.FirstnametextField.text!.count == 0
//        {
//            self.view.makeToast("Please enter firstName")
//        }
//        else if self.LastnametextField.text!.count == 0
//        {
//            self.view.makeToast("Please enter lastName")
//        }
//        else
//        {
//            createAccountSelectUsernameVC.userFirstName = self.FirstnametextField.text!
//            createAccountSelectUsernameVC.userLastName = self.LastnametextField.text!
//            let createAccountBirthday = createAccountBirthdayVC()
//            self.navigationController?.pushViewController(createAccountBirthday, animated: true)
//        }
        
        createAccountSelectUsernameVC.userFirstName = self.FirstnametextField.text!
        createAccountSelectUsernameVC.userLastName = self.LastnametextField.text!
        let createAccountBirthday = createAccountBirthdayVC()
        self.navigationController?.pushViewController(createAccountBirthday, animated: true)
    }

}
 */
