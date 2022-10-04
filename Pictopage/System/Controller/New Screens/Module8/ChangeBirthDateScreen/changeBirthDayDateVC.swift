//
//  changeBirthDayDateVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 18/03/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage
import FirebaseAuth

class changeBirthDayDateVC: UIViewController {
    
    
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
        lbl.text = "Birthday"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ChangeBirthdateTitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Change your Birthday"
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ChangeBirthdateSubTitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "This helps us determine if your old enough to use\n Pictopage."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ChangeBirthdateDescriptionLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Also, you can only change this a few times."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let changeBirthdayView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let yourBirthdayLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Your Birthday:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let changeBirthdayTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let changeBirthdayDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let changeBirthdaytextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Current Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    let continueButtonview: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
 
    let continueButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = .clear
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        return btn
    }()
    
    let BlackDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .black
        return logov
    }()
    
    let shedowView: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.21)
        logov.clipsToBounds = true
        return logov
    }()
    
    let addPassowrdPopupView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        logov.clipsToBounds = true
        logov.layer.cornerRadius = 25.0
        return logov
    }()
    
    let addPassowrdPopupTitleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Password"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let addPassowrdPopupDescriptionLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Your password is required for\nsecurity."
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let addPasswordTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let addPasswordDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let addPasswordtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.isSecureTextEntry = true
        txt.attributedPlaceholder = NSAttributedString(string: "Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    let addPassowrdPopupChangingBirthDateDescriptionLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "You are changing your birthday to"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let addPassowrdPopupChangingBirthDateLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let changeBirthdayButtonview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let changeBirthdayImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "new_grediant")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let changeBirthdayButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Change Birthday", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        return btn
    }()
    
    let cancelButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Cancel", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        return btn
    }()
    
    let newDatePickerView: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = .date
        return picker
    }()
    
    let datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        return picker
    }()
    
    let dateFormatter = DateFormatter()
    let locale = NSLocale.current
//    var datePicker : UIDatePicker!
    
    var newDOB = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
//        self.doDatePicker()
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 53)
        
        self.headerView.addSubview(self.headerSubView)
        self.headerSubView.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 53)
        
        self.headerSubView.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: nil, left: self.headerSubView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 53, height: 53)
        self.backButtonView.centerYAnchor.constraint(equalTo: self.headerSubView.centerYAnchor).isActive = true
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: nil, right: nil, paddingTop: 34.5, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: self.backButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.headerSubView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerSubView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 32, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 21)
        self.titleLable.centerXAnchor.constraint(equalTo: self.headerSubView.centerXAnchor).isActive = true
        
        // setup change birthday Title Lable
        
        self.view.addSubview(self.ChangeBirthdateTitleLableText)
        self.ChangeBirthdateTitleLableText.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 204, height: 22)
        self.ChangeBirthdateTitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup change birthday SubTitle Lable
        
        self.view.addSubview(self.ChangeBirthdateSubTitleLableText)
        self.ChangeBirthdateSubTitleLableText.anchor(top: self.ChangeBirthdateTitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 342, height: 36)
        self.ChangeBirthdateSubTitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup change birthday Desc Lable
        
        self.view.addSubview(self.ChangeBirthdateDescriptionLableText)
        self.ChangeBirthdateDescriptionLableText.anchor(top: self.ChangeBirthdateSubTitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 342, height: 18)
        self.ChangeBirthdateDescriptionLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
        // setup change birthday View
        
        self.view.addSubview(self.changeBirthdayView)
        self.changeBirthdayView.anchor(top: self.ChangeBirthdateDescriptionLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 298, height: 135)
        self.changeBirthdayView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.changeBirthdayView.addSubview(self.yourBirthdayLableText)
        self.yourBirthdayLableText.anchor(top: self.changeBirthdayView.topAnchor, left: self.changeBirthdayView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 92, height: 18)
        
        
        if #available(iOS 14.0, *) {
            
            self.changeBirthdayView.addSubview(self.newDatePickerView)
            self.newDatePickerView.anchor(top: self.yourBirthdayLableText.bottomAnchor, left: self.changeBirthdayView.leftAnchor, bottom: nil, right: self.changeBirthdayView.rightAnchor, paddingTop: 16, paddingLeft: 39.5, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 0)
            self.newDatePickerView.addTarget(self, action: #selector(datePickerChanged(picker:)), for: .valueChanged)
            
            self.changeBirthdayView.addSubview(self.continueButtonview)
            self.continueButtonview.anchor(top: self.newDatePickerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 33, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 111, height: 35)
            self.continueButtonview.centerXAnchor.constraint(equalTo: self.changeBirthdayView.centerXAnchor).isActive = true
            self.continueButtonview.layer.cornerRadius = 17.5
            self.continueButtonview.clipsToBounds = true
            
            self.continueButtonview.addSubview(self.continueButton)
            self.continueButton.fillSuperview()
            self.continueButton.addTarget(self, action: #selector(self.click_continue), for: .touchUpInside)
            
        }else{
            self.changeBirthdayView.addSubview(self.changeBirthdayTextFieldView)
            self.changeBirthdayTextFieldView.anchor(top: self.yourBirthdayLableText.bottomAnchor, left: self.changeBirthdayView.leftAnchor, bottom: nil, right: self.changeBirthdayView.rightAnchor, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
            
            self.changeBirthdayTextFieldView.addSubview(self.changeBirthdayDividerView)
            self.changeBirthdayDividerView.anchor(top: nil, left: self.changeBirthdayTextFieldView.leftAnchor, bottom: self.changeBirthdayTextFieldView.bottomAnchor, right: self.changeBirthdayTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
            
            self.changeBirthdayTextFieldView.addSubview(self.changeBirthdaytextField)
            self.changeBirthdaytextField.anchor(top: self.changeBirthdayTextFieldView.topAnchor, left: self.changeBirthdayTextFieldView.leftAnchor, bottom: self.changeBirthdayTextFieldView.bottomAnchor, right: self.changeBirthdayTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
            self.changeBirthdaytextField.delegate = self
            self.changeBirthdaytextField.text = ApiUtillity.sharedInstance.GetCurrentDate()
            
            self.changeBirthdayView.addSubview(self.continueButtonview)
            self.continueButtonview.anchor(top: self.changeBirthdayTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 33, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 111, height: 35)
            self.continueButtonview.centerXAnchor.constraint(equalTo: self.changeBirthdayView.centerXAnchor).isActive = true
            self.continueButtonview.layer.cornerRadius = 17.5
            self.continueButtonview.clipsToBounds = true
            
            self.continueButtonview.addSubview(self.continueButton)
            self.continueButton.fillSuperview()
            self.continueButton.addTarget(self, action: #selector(self.click_continue), for: .touchUpInside)
            
            
            self.view.addSubview(self.datePicker)
            self.datePicker.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 215)
            
            self.datePicker.backgroundColor = UIColor(red: 0.0/255.0, green: 5.0/255.0, blue: 10.0/255.0, alpha: 1.0)
            self.datePicker.addTarget(self, action: #selector(datePickerChanged(picker:)), for: .valueChanged)
            
            self.view.addSubview(self.BlackDividerView)
            self.BlackDividerView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.datePicker.topAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 5)
        }
        
        
        
        // Create password popVIew
        
        self.view.addSubview(self.shedowView)
        self.shedowView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.shedowView.addSubview(self.addPassowrdPopupView)
        self.addPassowrdPopupView.anchor(top: self.shedowView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 106, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 315, height: 276)
        self.addPassowrdPopupView.centerXAnchor.constraint(equalTo: self.shedowView.centerXAnchor).isActive = true
        
        self.addPassowrdPopupView.addSubview(self.addPassowrdPopupTitleLable)
        self.addPassowrdPopupTitleLable.anchor(top: self.addPassowrdPopupView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 92, height: 24)
        self.addPassowrdPopupTitleLable.centerXAnchor.constraint(equalTo: self.addPassowrdPopupView.centerXAnchor).isActive = true
        
        self.addPassowrdPopupView.addSubview(self.addPassowrdPopupDescriptionLable)
        self.addPassowrdPopupDescriptionLable.anchor(top: self.addPassowrdPopupTitleLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 234, height: 36)
        self.addPassowrdPopupDescriptionLable.centerXAnchor.constraint(equalTo: self.addPassowrdPopupView.centerXAnchor).isActive = true
        
        self.addPassowrdPopupView.addSubview(self.addPasswordTextFieldView)
        self.addPasswordTextFieldView.anchor(top: self.addPassowrdPopupDescriptionLable.bottomAnchor, left: self.addPassowrdPopupView.leftAnchor, bottom: nil, right: self.addPassowrdPopupView.rightAnchor, paddingTop: 17, paddingLeft: 23, paddingBottom: 0, paddingRight: 23, width: 0, height: 24)
        
        self.addPasswordTextFieldView.addSubview(self.addPasswordDividerView)
        self.addPasswordDividerView.anchor(top: nil, left: self.addPasswordTextFieldView.leftAnchor, bottom: self.addPasswordTextFieldView.bottomAnchor, right: self.addPasswordTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.addPasswordTextFieldView.addSubview(self.addPasswordtextField)
        self.addPasswordtextField.anchor(top: self.addPasswordTextFieldView.topAnchor, left: self.addPasswordTextFieldView.leftAnchor, bottom: self.addPasswordTextFieldView.bottomAnchor, right: self.addPasswordTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.addPasswordtextField.delegate = self
        
        self.addPassowrdPopupView.addSubview(self.addPassowrdPopupChangingBirthDateDescriptionLable)
        self.addPassowrdPopupChangingBirthDateDescriptionLable.anchor(top: self.addPasswordTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 21, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 226, height: 18)
        self.addPassowrdPopupChangingBirthDateDescriptionLable.centerXAnchor.constraint(equalTo: self.addPassowrdPopupView.centerXAnchor).isActive = true
        
        self.addPassowrdPopupView.addSubview(self.addPassowrdPopupChangingBirthDateLable)
        self.addPassowrdPopupChangingBirthDateLable.anchor(top: self.addPassowrdPopupChangingBirthDateDescriptionLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)
        self.addPassowrdPopupChangingBirthDateLable.centerXAnchor.constraint(equalTo: self.addPassowrdPopupView.centerXAnchor).isActive = true
        
        self.addPassowrdPopupView.addSubview(self.changeBirthdayButtonview)
        self.changeBirthdayButtonview.anchor(top: self.addPassowrdPopupChangingBirthDateLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 114, height: 36)
        self.changeBirthdayButtonview.centerXAnchor.constraint(equalTo: self.addPassowrdPopupView.centerXAnchor).isActive = true
        self.changeBirthdayButtonview.layer.cornerRadius = 18.0
        self.changeBirthdayButtonview.clipsToBounds = true
        
        self.changeBirthdayButtonview.addSubview(self.changeBirthdayImageview)
        self.changeBirthdayImageview.anchor(top: self.changeBirthdayButtonview.topAnchor, left: self.changeBirthdayButtonview.leftAnchor, bottom: self.changeBirthdayButtonview.bottomAnchor, right: self.changeBirthdayButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.changeBirthdayButtonview.addSubview(self.changeBirthdayButton)
        self.changeBirthdayButton.anchor(top: self.changeBirthdayButtonview.topAnchor, left: self.changeBirthdayButtonview.leftAnchor, bottom: self.changeBirthdayButtonview.bottomAnchor, right: self.changeBirthdayButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.changeBirthdayButton.addTarget(self, action: #selector(self.click_changeBirthday), for: .touchUpInside)
        
        self.addPassowrdPopupView.addSubview(self.cancelButton)
        self.cancelButton.anchor(top: self.changeBirthdayButtonview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 234, height: 18)
        self.cancelButton.centerXAnchor.constraint(equalTo: self.addPassowrdPopupView.centerXAnchor).isActive = true
        self.cancelButton.addTarget(self, action: #selector(self.click_cancel), for: .touchUpInside)
        
        self.shedowView.isHidden = true
        
        if let usr = FirebaseClient.sharedInstance.firebaseCurrentUser{
            self.changeBirthdaytextField.text = usr.DOB
            print(usr.DOB)
            
            let dateFormater = DateFormatter()
            dateFormater.dateFormat = "MMMM dd, yyyy"
            let birthdayDate = dateFormater.date(from: usr.DOB!)!
            self.newDatePickerView.setDate(birthdayDate, animated: true)
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- Button Action
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_continue()
    {
        print("conitnue")
        
        if self.changeBirthdaytextField.text!.count == 0
        {
            self.view.makeToast("Please select Date of Birth")
        }
        else
        {
            
            if #available(iOS 14.0, *) {
                
                let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
                let now = Date()
                let calcAge = calendar.components(.year, from: self.newDatePickerView.date, to: now, options: [])
                let age = calcAge.year
                
                if age! >= 13
                {
                    print("show password view")
                    self.addPassowrdPopupChangingBirthDateLable.text = self.newDOB
                    self.shedowView.isHidden = false
                }
                else
                {
                    self.view.makeToast("To must be 13 years old to register into the app.")
                }
            }else{
                let dateFormater = DateFormatter()
                dateFormater.dateFormat = "MMMM dd, yyyy"
                let birthdayDate = dateFormater.date(from: self.changeBirthdaytextField.text!)
                let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
                let now = Date()
                let calcAge = calendar.components(.year, from: birthdayDate!, to: now, options: [])
                let age = calcAge.year
                
                if age! >= 13
                {
                    print("show password view")
                    self.addPassowrdPopupChangingBirthDateLable.text = self.changeBirthdaytextField.text!
                    self.shedowView.isHidden = false
                }
                else
                {
                    self.view.makeToast("To must be 13 years old to register into the app.")
                }
            }
            
            
            
        }
        
    }
    
    @objc func click_changeBirthday()
    {
        print("change birthday")
        
        
        if Defaults[.UserPassword] == self.addPasswordtextField.text!{
            self.changeBirthday()
        }
        else{
            self.view.makeToast("Please enter valid password")
        }
    }
    
    @objc func click_cancel()
    {
        print("cancel")
        self.shedowView.isHidden = true
    }
    
    // Create Date Picker
    
//    func doDatePicker(){
//        // DatePicker
//        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: self.view.frame.size.height - 215, width: self.view.frame.size.width, height: 215))
//        self.datePicker?.backgroundColor = UIColor.white
//        self.datePicker?.datePickerMode = UIDatePicker.Mode.date
//        self.datePicker?.maximumDate = Date()
//        self.datePicker?.addTarget(self, action: #selector(datePickerChanged(picker:)), for: .valueChanged)
//        view.addSubview(self.datePicker)
//    }

//    @objc func datePickerChanged(picker: UIDatePicker) {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MMMM dd, yyyy"
//        let strDate = dateFormatter.string(from: datePicker.date)
//        self.changeBirthdaytextField.text = strDate
//    }
    
    @objc func datePickerChanged(picker: UIDatePicker) {
        print(picker.date)
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        dateFormatter1.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        if #available(iOS 14.0, *) {
            let myString = dateFormatter1.string(from: self.newDatePickerView.date)
            let yourDate = dateFormatter1.date(from: myString)
            dateFormatter1.dateFormat = "MMMM dd, yyyy"
            let myStringafd = dateFormatter1.string(from: yourDate!)
            self.newDOB = myStringafd
        }else{
            let myString = dateFormatter1.string(from: self.datePicker.date)
            let yourDate = dateFormatter1.date(from: myString)
            dateFormatter1.dateFormat = "MMMM dd, yyyy"
            let myStringafd = dateFormatter1.string(from: yourDate!)
            self.changeBirthdaytextField.text = myStringafd
            self.changeBirthdaytextField.resignFirstResponder()
        }
        
        
    }
}



extension changeBirthDayDateVC: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension changeBirthDayDateVC{
    
    func changeBirthday()
    {
        let db = Firestore.firestore()
        
        let washingtonRef = db.collection("users").document(Auth.auth().currentUser!.uid)
        
        var c_Date = String()
        
        if #available(iOS 14.0, *) {
            c_Date = self.newDOB
        }else{
            c_Date = self.changeBirthdaytextField.text!
        }
        
        washingtonRef.updateData([
            "DOB": c_Date
        ]) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
                FirebaseClient.sharedInstance.getCurrentUserDataInAppDelegate(controller: changeBirthDayDateVC())
                self.navigationController?.view.makeToast("Birthday Changed Successfully")
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}
