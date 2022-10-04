//
//  createAccountPictoIDCell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 17/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase

class createAccountPictoIDCell: UICollectionViewCell, UITextFieldDelegate {
    
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
    
    let topicImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "pictoIDImage1x")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    let subtitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Picto id is a indentication tool currently in development.\n\nFor now, its nothing more than a username."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // Email Text Field
    let pictoIDTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let correctpictoIDImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "correct_1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let pictoIDTextFieldDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    
    let pictoIDTextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Picto id",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    let pictoIDTextFieldTextCountLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .right
        lbl.textColor = .black
        lbl.text = "25"
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
    
    static var isValidePictoID = Bool()
    
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
        //        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // Topic Image
        self.mainview.addSubview(self.topicImage)
        self.topicImage.anchor(top: self.titleLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 38, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 91, height: 32)
        self.topicImage.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true

        // Subtopic Label
        self.mainview.addSubview(self.subtitleLabel)
        self.subtitleLabel.anchor(top: self.topicImage.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 101.97)
        self.subtitleLabel.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true

        // Email Text Field
        self.mainview.addSubview(self.pictoIDTextFieldView)
        self.pictoIDTextFieldView.anchor(top: self.subtitleLabel.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 26.03, paddingLeft: 39, paddingBottom: 0, paddingRight: 39, width: 0, height: 24)
        
        self.pictoIDTextFieldView.addSubview(self.correctpictoIDImageView)
        self.correctpictoIDImageView.anchor(top: nil, left: nil, bottom: nil, right: self.pictoIDTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 5, width: 18, height: 18)
        self.correctpictoIDImageView.centerYAnchor.constraint(equalTo: self.pictoIDTextFieldView.centerYAnchor).isActive = true

        self.pictoIDTextFieldView.addSubview(self.pictoIDTextFieldDividerView)
        self.pictoIDTextFieldDividerView.anchor(top: nil, left: self.pictoIDTextFieldView.leftAnchor, bottom: self.pictoIDTextFieldView.bottomAnchor, right: self.pictoIDTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)

        self.pictoIDTextFieldView.addSubview(self.pictoIDTextField)
        self.pictoIDTextField.anchor(top: self.pictoIDTextFieldView.topAnchor, left: self.pictoIDTextFieldView.leftAnchor, bottom: self.pictoIDTextFieldView.bottomAnchor, right: self.pictoIDTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.pictoIDTextField.delegate = self
        self.pictoIDTextField.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        self.pictoIDTextField.addTarget(self, action: #selector(checkPictoidIsvalidOrNot), for: .editingChanged)
        
        self.mainview.addSubview(self.pictoIDTextFieldTextCountLabel)
        self.pictoIDTextFieldTextCountLabel.anchor(top: self.pictoIDTextFieldView.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 5, paddingLeft: 39, paddingBottom: 0, paddingRight: 39, width: 0, height: 17)
        
        // Next Button

        self.mainview.addSubview(self.nextButtonView)
        self.nextButtonView.anchor(top: self.pictoIDTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.nextButtonView.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true
        self.nextButtonView.layer.cornerRadius = 17.5
        self.nextButtonView.clipsToBounds = true

        self.nextButtonView.addSubview(self.nextButtonImageView)
        self.nextButtonImageView.anchor(top: self.nextButtonView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        self.nextButtonView.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonImageView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        //        self.nextButton.addTarget(self, action: #selector(self.nextButtonClicked), for: .touchUpInside)
        self.nextButton.isEnabled = false
        
        self.correctpictoIDImageView.isHidden = true
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK:- Validation
    
    @objc func handleTextInputChangeEmail() {
        
        if self.pictoIDTextField.text?.isEmpty == false{
            
            if self.pictoIDTextField.text!.count > 25{
                self.pictoIDTextField.text?.removeLast()
                self.pictoIDTextFieldTextCountLabel.text = String(25 - self.pictoIDTextField.text!.count)
            }else{
                self.pictoIDTextFieldTextCountLabel.text = String(25 - self.pictoIDTextField.text!.count)
            }
            createAccountVerifyVC.userPictoID = self.pictoIDTextField.text!.lowercased()
            nextButton.isEnabled = true
            nextButtonImageView.image = UIImage(named: "nextButtonEnabled")
       }else{
            nextButton.isEnabled = false
            nextButtonImageView.image = UIImage(named: "nextButtonDisabled")
            self.pictoIDTextFieldTextCountLabel.text = "25"
       }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.mainview.endEditing(true)
        return false
    }
    
    func isValidName(sender: String) -> Bool{
        let hasSpecialCharacters =  sender.range(of: ".*[^A-Za-z0-9].*", options: .regularExpression) != nil
        if hasSpecialCharacters{
            return true
        }else{
            return false
        }
    }
}

extension String {
   var containsSpecialCharacter: Bool {
      let regex = ".*[^A-Za-z0-9].*"
      let testString = NSPredicate(format:"SELF MATCHES %@", regex)
      return testString.evaluate(with: self)
   }
}

extension createAccountPictoIDCell{
    
    @objc func checkPictoidIsvalidOrNot(){
        
        if let pictoID = self.pictoIDTextField.text, pictoID.count != 0{
            
            if pictoID.containsSpecialCharacter == false{
                Firestore.firestore().collection("users").whereField("PictoID", isEqualTo: pictoID.lowercased()).getDocuments() { (querySnapshot, err) in
                    if let err = err {
                        print("Error getting documents: \(err)")
                        createAccountPictoIDCell.isValidePictoID = true
                        self.correctpictoIDImageView.isHidden = false
                        self.correctpictoIDImageView.image = UIImage(named: "correct_1x")
                    } else {
                        if let documents = querySnapshot?.documents, documents.count != 0{
                            createAccountPictoIDCell.isValidePictoID = false
                            self.correctpictoIDImageView.isHidden = false
                            self.correctpictoIDImageView.image = UIImage(named: "inCorrect_1x")
                        }else{
                            createAccountPictoIDCell.isValidePictoID = true
                            self.correctpictoIDImageView.isHidden = false
                            self.correctpictoIDImageView.image = UIImage(named: "correct_1x")
                        }
                    }
                }
            }else{
                createAccountPictoIDCell.isValidePictoID = false
                self.correctpictoIDImageView.isHidden = false
                self.correctpictoIDImageView.image = UIImage(named: "inCorrect_1x")
            }
        }else{
            self.correctpictoIDImageView.isHidden = true
        }
        
        
    }
    
}
