//
//  PictoIDVC.swift
//  Pictopage
//
//  Created by Darshit on 09/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase

class PictoIDVC: UIViewController {

    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerLogoImg: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "pictoIDImage1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
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
    

    let topTitleLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Picto id is an indentication tool\ncurrently in development.\n\nFor now, its nothing more than a\nusername."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let currentPictoIdLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Current Picto id:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let currentPictoIdView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let pictoIdLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "pictoid"//FirebaseClient.sharedInstance.firebaseCurrentUser!.Email!
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let changePictoIdView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let newPictoIdView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let newPictoIdDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor(red: 31.0/255.0, green: 34.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        return logov
    }()
    
    let newPictoIdTextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.tintColor = .black
        txt.keyboardType = UIKeyboardType.emailAddress
        txt.attributedPlaceholder = NSAttributedString(string: "New Picto id",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
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
        txt.tintColor = .black
        txt.attributedPlaceholder = NSAttributedString(string: "Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return txt
    }()
    
    let saveButtonview: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let saveBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Save", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = .clear
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        return btn
    }()
    
    @objc func handleTextInputChange() {
        if newPictoIdTextField.text?.isEmpty == false && PasswordtextField.text?.isEmpty == false {
            saveBtn.isEnabled = true
        } else {
            saveBtn.isEnabled = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // setup Header view
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 61)

        self.headerView.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 61, height: 61)
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.headerView.topAnchor, left: self.backButtonView.leftAnchor, bottom: nil, right: nil, paddingTop: 34.5, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: self.backButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.headerView.addSubview(self.headerLogoImg)
        self.headerLogoImg.anchor(top: self.headerView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 29, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 91, height: 32)
        self.headerLogoImg.centerX(inView: self.headerView)
        
        // setup top title lbl
        self.view.addSubview(self.topTitleLbl)
        self.topTitleLbl.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 101)
        self.topTitleLbl.centerX(inView: self.headerView)
        
        // setup current email Lable
        
        self.view.addSubview(self.currentPictoIdLbl)
        self.currentPictoIdLbl.anchor(top: self.topTitleLbl.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 38.5, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        // setup current email back view
        
        self.view.addSubview(self.currentPictoIdView)
        self.currentPictoIdView.anchor(top: self.currentPictoIdLbl.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 6, paddingLeft: 36.5, paddingBottom: 0, paddingRight: 36.5, width: 0, height: 30)
        self.currentPictoIdView.backgroundColor = GrayEEEEEE
        self.currentPictoIdView.layer.cornerRadius = 15.0
        
        self.currentPictoIdView.addSubview(self.pictoIdLbl)
        self.pictoIdLbl.anchor(top: self.currentPictoIdView.topAnchor, left: self.currentPictoIdView.leftAnchor, bottom: self.currentPictoIdView.bottomAnchor, right: self.currentPictoIdView.rightAnchor, paddingTop: 6, paddingLeft: 10, paddingBottom: 6, paddingRight: 10, width: 0, height: 0)
        
        // setup change email textfield view
        
        self.view.addSubview(self.changePictoIdView)
        self.changePictoIdView.anchor(top: self.currentPictoIdView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 22, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 296, height: 78)
        self.changePictoIdView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
            // setup new email Textfield view
        
        self.changePictoIdView.addSubview(self.newPictoIdView)
        self.newPictoIdView.anchor(top: self.changePictoIdView.topAnchor, left: self.changePictoIdView.leftAnchor, bottom: nil, right: self.changePictoIdView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        
        self.newPictoIdView.addSubview(self.newPictoIdDividerView)
        self.newPictoIdDividerView.anchor(top: nil, left: self.newPictoIdView.leftAnchor, bottom: self.newPictoIdView.bottomAnchor, right: self.newPictoIdView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.newPictoIdView.addSubview(self.newPictoIdTextField)
        self.newPictoIdTextField.fillSuperview()
        self.newPictoIdTextField.delegate = self
        
            // setup New password Textfield view
        
        self.changePictoIdView.addSubview(self.PasswordView)
        self.PasswordView.anchor(top: self.newPictoIdView.bottomAnchor, left: self.changePictoIdView.leftAnchor, bottom: nil, right: self.changePictoIdView.rightAnchor, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        
        self.PasswordView.addSubview(self.PasswordDividerView)
        self.PasswordDividerView.anchor(top: nil, left: self.PasswordView.leftAnchor, bottom: self.PasswordView.bottomAnchor, right: self.PasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.PasswordView.addSubview(self.PasswordtextField)
        self.PasswordtextField.anchor(top: self.PasswordView.topAnchor, left: self.PasswordView.leftAnchor, bottom: self.PasswordView.bottomAnchor, right: self.PasswordView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.PasswordtextField.delegate = self
        
        self.view.addSubview(self.saveButtonview)
        self.saveButtonview.anchor(top: self.PasswordDividerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.saveButtonview.centerX(inView: self.view)
        self.saveButtonview.layer.cornerRadius = 17.5
        self.saveButtonview.clipsToBounds = true
        
        self.saveButtonview.addSubview(self.saveBtn)
        self.saveBtn.fillSuperview()
        self.saveBtn.addTarget(self, action: #selector(self.click_saveBtn), for: .touchUpInside)
        
        self.saveBtn.isEnabled = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- Button Action
    @objc func click_back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_saveBtn() {
        print("DEBUG: Save Btn Tapped")
    }
}


extension PictoIDVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
