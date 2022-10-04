//
//  createAccountFirstnameAndLastnameCell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 16/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class createAccountFirstnameAndLastnameCell: UICollectionViewCell, UITextFieldDelegate {
    
    let mainview: UIView = {
        let v = UIView()
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
        lbl.text = "What’s your name?"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let subtitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "This helps others on Pictopage know who you are.\n\nYour name will be displayed on your profile."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // Firstname Text Field
    let firstnameTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let firstnameTextFieldDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let firstnameTextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Firstname", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    let FirstnameTextFieldTextCountLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .right
        lbl.textColor = .black
        lbl.text = "15"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // Lastname Text Field
    let lastnameTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let lastnameTextFieldDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let lastnameTextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Lastname", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    let LastnameTextFieldTextCountLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .right
        lbl.textColor = .black
        lbl.text = "15"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
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
    
    weak var superVC: CreateAccountMainVC?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.mainview)
        self.mainview.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainview.backgroundColor = .white
        
        
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
        self.topicLabel.anchor(top: self.titleLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 38, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 183, height: 24)
        self.topicLabel.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true
        
        // Subtopic Label
        self.mainview.addSubview(self.subtitleLabel)
        self.subtitleLabel.anchor(top: self.topicLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 21.5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 100.5)
        self.subtitleLabel.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true
        
        // Firstname Text Field
        self.mainview.addSubview(self.firstnameTextFieldView)
        self.firstnameTextFieldView.anchor(top: self.subtitleLabel.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 29, paddingLeft: 39.5, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 24)
        
        self.firstnameTextFieldView.addSubview(self.firstnameTextFieldDividerView)
        self.firstnameTextFieldDividerView.anchor(top: nil, left: self.firstnameTextFieldView.leftAnchor, bottom: self.firstnameTextFieldView.bottomAnchor, right: self.firstnameTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.firstnameTextFieldView.addSubview(self.firstnameTextField)
        self.firstnameTextField.anchor(top: self.firstnameTextFieldView.topAnchor, left: self.firstnameTextFieldView.leftAnchor, bottom: self.firstnameTextFieldView.bottomAnchor, right: self.firstnameTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.firstnameTextField.delegate = self
        self.firstnameTextField.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        
        self.mainview.addSubview(self.FirstnameTextFieldTextCountLabel)
        self.FirstnameTextFieldTextCountLabel.anchor(top: self.firstnameTextFieldView.bottomAnchor, left: nil, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 17)
        
        // Lastname Text Field
        self.mainview.addSubview(self.lastnameTextFieldView)
        self.lastnameTextFieldView.anchor(top: self.firstnameTextFieldView.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 35, paddingLeft: 39.5, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 24)
        
        self.lastnameTextFieldView.addSubview(self.lastnameTextFieldDividerView)
        self.lastnameTextFieldDividerView.anchor(top: nil, left: self.lastnameTextFieldView.leftAnchor, bottom: self.lastnameTextFieldView.bottomAnchor, right: self.lastnameTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.lastnameTextFieldView.addSubview(self.lastnameTextField)
        self.lastnameTextField.anchor(top: self.lastnameTextFieldView.topAnchor, left: self.lastnameTextFieldView.leftAnchor, bottom: self.lastnameTextFieldView.bottomAnchor, right: self.lastnameTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.lastnameTextField.delegate = self
        self.lastnameTextField.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        
        self.mainview.addSubview(self.LastnameTextFieldTextCountLabel)
        self.LastnameTextFieldTextCountLabel.anchor(top: self.lastnameTextFieldView.bottomAnchor, left: nil, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 17)
        
        // Next Button
        
        self.mainview.addSubview(self.nextButtonView)
        self.nextButtonView.anchor(top: self.lastnameTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.nextButtonView.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true
        self.nextButtonView.layer.cornerRadius = 17.5
        self.nextButtonView.clipsToBounds = true
        
        self.nextButtonView.addSubview(self.nextButtonImageView)
        self.nextButtonImageView.anchor(top: self.nextButtonView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.nextButtonView.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonImageView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.nextButton.isEnabled = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:- Validation
    
    @objc func handleTextInputChangeEmail() {
        if self.firstnameTextField.text?.isEmpty == false && self.lastnameTextField.text?.isEmpty == false{
            
//            if self.firstnameTextField.text!.count > 25{
//                self.firstnameTextField.text?.removeLast()
//            }
//
//            if self.lastnameTextField.text!.count > 25{
//                self.lastnameTextField.text?.removeLast()
//            }
            
            if self.firstnameTextField.text!.count > 15{
                self.firstnameTextField.text?.removeLast()
                self.FirstnameTextFieldTextCountLabel.text = String(15 - self.firstnameTextField.text!.count)
            }else{
                self.FirstnameTextFieldTextCountLabel.text = String(15 - self.firstnameTextField.text!.count)
            }
            
            if self.lastnameTextField.text!.count > 15{
                self.lastnameTextField.text?.removeLast()
                self.LastnameTextFieldTextCountLabel.text = String(15 - self.lastnameTextField.text!.count)
            }else{
                self.LastnameTextFieldTextCountLabel.text = String(15 - self.lastnameTextField.text!.count)
            }
            
            createAccountVerifyVC.userFirstname = self.firstnameTextField.text!
            createAccountVerifyVC.userLastName = self.lastnameTextField.text!
            nextButton.isEnabled = true
            nextButtonImageView.image = UIImage(named: "nextButtonEnabled")
        }else {
            
//            if self.firstnameTextField.text!.count > 25{
//                self.firstnameTextField.text?.removeLast()
//            }
//
//            if self.lastnameTextField.text!.count > 25{
//                self.lastnameTextField.text?.removeLast()
//            }
            
            if self.firstnameTextField.text!.count > 15{
                self.firstnameTextField.text?.removeLast()
                self.FirstnameTextFieldTextCountLabel.text = String(15 - self.firstnameTextField.text!.count)
            }else{
                self.FirstnameTextFieldTextCountLabel.text = String(15 - self.firstnameTextField.text!.count)
            }
            
            if self.lastnameTextField.text!.count > 15{
                self.lastnameTextField.text?.removeLast()
                self.LastnameTextFieldTextCountLabel.text = String(15 - self.lastnameTextField.text!.count)
            }else{
                self.LastnameTextFieldTextCountLabel.text = String(15 - self.lastnameTextField.text!.count)
            }
            
            nextButton.isEnabled = false
            nextButtonImageView.image = UIImage(named: "nextButtonDisabled")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.mainview.endEditing(true)
        return false
    }
    
    
}
