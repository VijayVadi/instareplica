//
//  createanAccount_Birthday.swift
//  Pictopage
//
//  Created by Vijay Vadi on 5/7/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

/*
import UIKit
import IQKeyboardManagerSwift

class createAccountBirthdayVC: UIViewController, UITextFieldDelegate {

    
    // MARK:- veriables
    
    let dateFormatter = DateFormatter()
    let locale = NSLocale.current
    var datePicker : UIDatePicker!
//    let toolBar = UIToolbar()
    
    
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
        lbl.text = "When's your birthday?"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let LableText1: UIView = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "This help us decide if you are old enough to use Pictopage."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let DOBView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let DOBtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Lastname",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    let DOBButton: UIButton = {
        let btn = UIButton()
        return btn
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
    
    // MARK:- viewDidLoad
    
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
        self.TextView.anchor(top: self.logoView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 69)
        
        self.TextView.addSubview(self.LableText)
        self.LableText.anchor(top: self.TextView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 169, height: 20.0)
        self.LableText.centerXAnchor.constraint(equalTo: self.TextView.centerXAnchor).isActive = true
        
        self.TextView.addSubview(self.LableText1)
        self.LableText1.anchor(top: self.LableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 258, height: 41)
        self.LableText1.centerXAnchor.constraint(equalTo: self.TextView.centerXAnchor).isActive = true
        
        
        // TextField view
        
        self.view.addSubview(self.TextFieldView)
        self.TextFieldView.anchor(top: self.TextView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 46, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 44)
        
        self.TextFieldView.addSubview(self.DOBView)
        self.DOBView.anchor(top: self.TextFieldView.topAnchor, left: self.TextFieldView.leftAnchor, bottom: nil, right: self.TextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 44)
        self.DOBView.layer.cornerRadius = 22
        
        self.DOBView.addSubview(self.DOBtextField)
        self.DOBtextField.anchor(top: self.DOBView.topAnchor, left: self.DOBView.leftAnchor, bottom: self.DOBView.bottomAnchor, right: self.DOBView.rightAnchor, paddingTop: 0, paddingLeft: 16, paddingBottom: 0, paddingRight: 16, width: 0, height: 0)
        self.DOBtextField.text = ApiUtillity.sharedInstance.GetCurrentDate()
        self.DOBtextField.delegate = self
        
//        self.DOBView.addSubview(self.DOBButton)
//        self.DOBButton.anchor(top: self.DOBView.topAnchor, left: self.DOBView.leftAnchor, bottom: self.DOBView.bottomAnchor, right: self.DOBView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
//        self.DOBButton.addTarget(self, action: #selector(self.opendatePicker), for: .touchUpInside)
        
        // Next Button view
        
        self.view.addSubview(self.nextView)
        self.nextView.anchor(top: self.TextFieldView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 46, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 44)
        
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
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //MARK:- textFiled Delegate
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.DOBtextField)
    }
    
    // MARK:- Create Date Picker

    func pickUpDate(_ textField : UITextField){

        // DatePicker
        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 250))
        self.datePicker.backgroundColor = UIColor(red: 0.0/255.0, green: 5.0/255.0, blue: 10.0/255.0, alpha: 1.0)
        self.datePicker.setValue(UIColor.white, forKeyPath: "textColor")
        self.datePicker.datePickerMode = UIDatePicker.Mode.date
        let currentDate: Date = NSDate() as Date
        self.datePicker.maximumDate = currentDate
        textField.inputView = self.datePicker

        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .black
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()

        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
    }
    
    @objc func doneClick() {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        dateFormatter1.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let myString = dateFormatter1.string(from: datePicker.date)
        let yourDate = dateFormatter1.date(from: myString)
        dateFormatter1.dateFormat = "MMMM dd yyyy"
        let myStringafd = dateFormatter1.string(from: yourDate!)
        DOBtextField.text = dateFormatter1.string(from: yourDate!)
        self.CheckYears(yourDate: myStringafd)
        
    }
    
    @objc func cancelClick() {
        DOBtextField.resignFirstResponder()
    }
    
    
    
    func CheckYears(yourDate: String)
    {
        self.DOBtextField.text = yourDate
        DOBtextField.resignFirstResponder()
    }
    
    // MARK:- Button Action
    
    @objc func click_next()
    {
        if self.DOBtextField.text!.count == 0
        {
            self.view.makeToast("Please select Date of Birth")
        }
        else
        {
            let date = Date()
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMMM dd yyyy"
            dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
            
            guard let date11 = dateFormatter.date(from: self.DOBtextField.text!) else {
                fatalError()
            }
            
            let calendar = Calendar.current
            let date1 = calendar.startOfDay(for: date11)
            let date2 = calendar.startOfDay(for: date)
            
            let components = calendar.dateComponents([.year], from: date1, to: date2)
            print(components)
            
            if components.year! >= 13
            {
                createAccountSelectUsernameVC.userDOB = self.DOBtextField.text!
                let vc = createAccountSelectUsernameVC()
                self.navigationController?.pushViewController(vc, animated: true)
            }
            else
            {
                self.view.makeToast("To must be 13 years old to register into the app.")
            }
        }
    }
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }

}
 */
