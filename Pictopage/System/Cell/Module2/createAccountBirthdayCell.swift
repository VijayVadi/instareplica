//
//  createAccountBirthdayCell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 16/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class createAccountBirthdayCell: UICollectionViewCell {
    
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
        lbl.text = "When's your birthday?"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let subtitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "This will help us decide if you are old enough to use Pictopage.\n\nYour birthday won’t be visible to other users."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DOBTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let DOBTextFieldDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
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
    
    let datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        return picker
    }()
    
    let DatePickerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor.black
        return logov
    }()
    
    let newDatePickerView: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = .date
        return picker
    }()
    
    let dateFormatter = DateFormatter()
    let locale = NSLocale.current
    
    weak var superVC: CreateAccountMainVC?
    
//    var newDatePickerView:UIDatePicker = UIDatePicker()
    
    
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
        
        // Topic Label
        self.mainview.addSubview(self.topicLabel)
        self.topicLabel.anchor(top: self.titleLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 38, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 215, height: 24)
        self.topicLabel.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true
        
        // Subtopic Label
        self.mainview.addSubview(self.subtitleLabel)
        self.subtitleLabel.anchor(top: self.topicLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 21, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 114)
        self.subtitleLabel.centerXAnchor.constraint(equalTo: self.mainview.centerXAnchor).isActive = true
        
        
        
        if #available(iOS 14.0, *) {
            
            self.mainview.addSubview(self.newDatePickerView)
            self.newDatePickerView.anchor(top: self.subtitleLabel.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 16, paddingLeft: 39.5, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 0)
            self.newDatePickerView.addTarget(self, action: #selector(datePickerChanged(picker:)), for: .valueChanged)
            
            // Next Button view
            
            self.mainview.addSubview(self.nextView)
            self.nextView.anchor(top: self.newDatePickerView.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 30, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 35)
            
        } else {
            
            // Firstname Text Field
            self.mainview.addSubview(self.DOBTextFieldView)
            self.DOBTextFieldView.anchor(top: self.subtitleLabel.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 16, paddingLeft: 39.5, paddingBottom: 0, paddingRight: 39.5, width: 0, height: 24)
            
            self.DOBTextFieldView.addSubview(self.DOBTextFieldDividerView)
            self.DOBTextFieldDividerView.anchor(top: nil, left: self.DOBTextFieldView.leftAnchor, bottom: self.DOBTextFieldView.bottomAnchor, right: self.DOBTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
            
            self.DOBTextFieldView.addSubview(self.DOBtextField)
            self.DOBtextField.anchor(top: self.DOBTextFieldView.topAnchor, left: self.DOBTextFieldView.leftAnchor, bottom: self.DOBTextFieldView.bottomAnchor, right: self.DOBTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
            
            self.DOBtextField.text = ApiUtillity.sharedInstance.GetCurrentDate()
            self.DOBtextField.isUserInteractionEnabled = false
            
            self.mainview.addSubview(self.datePicker)
            self.datePicker.anchor(top: nil, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 215)
            
            self.datePicker.backgroundColor = UIColor(red: 0.0/255.0, green: 5.0/255.0, blue: 10.0/255.0, alpha: 1.0)
            self.datePicker.addTarget(self, action: #selector(datePickerChanged(picker:)), for: .valueChanged)
            
            self.mainview.addSubview(self.DatePickerView)
            self.DatePickerView.anchor(top: nil, left: self.mainview.leftAnchor, bottom: self.datePicker.topAnchor, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 5)
            
            // Next Button view
            
            self.mainview.addSubview(self.nextView)
            self.nextView.anchor(top: self.DOBTextFieldView.bottomAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 30, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 35)
        }
        
        self.nextView.addSubview(self.nextButton)
        self.nextButton.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.nextButton.backgroundColor = black1a
        self.nextButton.layer.cornerRadius = 17.5
        self.nextButton.centerYAnchor.constraint(equalTo: self.nextView.centerYAnchor).isActive = true
        self.nextButton.centerXAnchor.constraint(equalTo: self.nextView.centerXAnchor).isActive = true
        self.nextButton.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        
        
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func datePickerChanged(picker: UIDatePicker) {
        print(picker.date)
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        dateFormatter1.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = dateFormatter1.string(from: datePicker.date)
        let yourDate = dateFormatter1.date(from: myString)
        dateFormatter1.dateFormat = "MMMM dd, yyyy"
        let myStringafd = dateFormatter1.string(from: yourDate!)
        self.DOBtextField.text = myStringafd
        DOBtextField.resignFirstResponder()
    }
    
    // MARK:- Button Action
    
    @objc func click_next()
    {
        if let svc = superVC {
            if #available(iOS 14.0, *) {
                
                print(self.newDatePickerView.date)
                let dateFormatter1 = DateFormatter()
                dateFormatter1.dateStyle = .medium
                dateFormatter1.timeStyle = .none
                dateFormatter1.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let myString = dateFormatter1.string(from: self.newDatePickerView.date)
                let yourDate = dateFormatter1.date(from: myString)
                dateFormatter1.dateFormat = "MMMM dd, yyyy"
                let myStringafd = dateFormatter1.string(from: yourDate!)
                
                svc.click_thiredCellNextButton(text: myStringafd)
            }else{
                svc.click_thiredCellNextButton(text: self.DOBtextField.text!)
            }
            
        }
    }
    
    // MARK:- create datePicker
    
//    func doDatePicker(){
//        // DatePicker
//        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 200))
//        self.datePicker?.backgroundColor = UIColor.white
//        self.datePicker?.datePickerMode = UIDatePickerMode.dateAndTime
//        datePicker.center = view.center
//        view.addSubview(self.datePicker)
//
//        // ToolBar
//
//        toolBar.barStyle = .default
//        toolBar.isTranslucent = true
//        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
//        toolBar.sizeToFit()
//
//        // Adding Button ToolBar
//        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(HVACViewController.doneClick))
//        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(HVACViewController.cancelClick))
//        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: true)
//        toolBar.isUserInteractionEnabled = true
//
//        self.view.addSubview(toolBar)
//        self.toolBar.isHidden = false
//
//
//    }
}

//extension createAccountBirthdayCell: UITextFieldDelegate{
//
//    @objc func handleTapEvent(){
//        self.pickUpDate(self.DOBtextField)
//    }
//
//    func pickUpDate(_ textField : UITextField){
//        self.newDatePickerView.datePickerMode = UIDatePicker.Mode.date
//        self.newDatePickerView.minuteInterval = 15
//        self.newDatePickerView.minimumDate = NSDate() as Date
//        // datePickerView = datePickerView
//        let toolBar = UIToolbar()
//        toolBar.sizeToFit()
//        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneTapped))
//        toolBar.setItems([spaceButton, doneButton], animated: false)
//        toolBar.isUserInteractionEnabled = true
//        self.DOBtextField.inputView = self.newDatePickerView
//        self.DOBtextField.inputAccessoryView = toolBar
//        self.newDatePickerView.addTarget(self, action: #selector(self.datePickerValueChanged(_:)), for: .valueChanged)
//
//    }
//
//    @objc func doneTapped() {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .medium
//        dateFormatter.dateFormat = "MMMM dd, yyyy"
//        self.DOBtextField.text = dateFormatter.string(from: self.newDatePickerView.date)
//       // dateInMillis = datePickerView.date.millisecondsSince1970 Wednesday, 01.07.2020
//        self.DOBtextField.resignFirstResponder()
//
//    }
//
//    @objc func datePickerValueChanged(_ sender: UIDatePicker) {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .medium
//        dateFormatter.dateFormat = "MMMM dd, yyyy"
//        self.DOBtextField.text = dateFormatter.string(from: sender.date)
//      //  dateInMillis = datePickerView.date.millisecondsSince1970
//        _ = dateFormatter.string(from: sender.date)
//    }
//}
