//
//  profiltCreatorBioVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 20/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

class profiltCreatorBioVC: UIViewController {

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
        lbl.text = "Profile Creator"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DataView: UIView = {
        let v = UIView()
        return v
    }()
    
    let DataViewBackgroundImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "profileCreatorGredian1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let ImageMainView: UIView = {
        let v = UIView()
        return v
    }()
    
    let ImageMainBorderImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "userProfileBorder1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let profileImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "userLogo1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFill
        return backButtonImageView
    }()
    
    let NameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Firstname Lastname"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pictoIDLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "pictoID"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let bioLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Your bio goes here"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable1 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Add a bio"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable2 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Use your bio to tell people\nabout yourself."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let addBioView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.layer.borderColor = UIColor.black.cgColor
        v.layer.borderWidth = 2.0
        return v
    }()
    
    let bioTextview: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        view.textAlignment = .center
        view.textContainer.maximumNumberOfLines = 5
        view.autocorrectionType = .no
        return view
    }()
    
    let orSkipView: UIView = {
        let v = UIView()
        return v
    }()
    
    let orSkipLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "or Skip"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let skipButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        return btn
    }()
    
    let saveButtonView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.layer.borderColor = black10.cgColor
        v.layer.borderWidth = 2.0
        return v
    }()
    
    let saveButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Save", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        return btn
    }()
    
    let blurView: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        return v
    }()
    
    let letterCountView: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        return v
    }()
    
    let letterCountLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Letter: 200"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let rowsCountLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Rows: 5"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let saveButtonView1: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.layer.borderColor = black10.cgColor
        v.layer.borderWidth = 2.0
        return v
    }()
    
    let saveButton1: UIButton = {
        let btn = UIButton()
        btn.setTitle("Save", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        return btn
    }()
    
    var addBioViewTop : NSLayoutConstraint?
    var saveButtonBottom : NSLayoutConstraint?
    
    var userEmail = String()
    var userPassword = String()
    var userFisrtname = String()
    var userLastName = String()
    var userBirthday = String()
    var userPictoID = String()
    var uploadedImageURl = String()
    var userBio = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // Header View
        self.view.addSubview(self.headerview)
        self.headerview.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
        
        // Title Label
        self.headerview.addSubview(self.titleLabel)
        self.titleLabel.anchor(top: self.headerview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 147, height: 21)
        self.titleLabel.centerXAnchor.constraint(equalTo: self.headerview.centerXAnchor).isActive = true
        
        // Back Button
        self.headerview.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: nil, right: nil, paddingTop: 14.5, paddingLeft: 27, paddingBottom: 0, paddingRight: 0, width: 9, height: 15)
        
        self.headerview.addSubview(self.backButton)
        self.backButton.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: self.headerview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 36, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // Data View
        
        self.view.addSubview(self.DataView)
        self.DataView.anchor(top: self.headerview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 282, height: 226)
        self.DataView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.DataView.clipsToBounds = true
        
        self.DataView.addSubview(self.DataViewBackgroundImageView)
        self.DataViewBackgroundImageView.anchor(top: self.DataView.topAnchor, left: self.DataView.leftAnchor, bottom: self.DataView.bottomAnchor, right: self.DataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.DataView.addSubview(self.ImageMainView)
        self.ImageMainView.anchor(top: self.DataView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 28, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 71.5, height: 71.5)
        self.ImageMainView.centerXAnchor.constraint(equalTo: self.DataView.centerXAnchor).isActive = true
        
        self.ImageMainView.addSubview(self.ImageMainBorderImageView)
        self.ImageMainBorderImageView.anchor(top: self.ImageMainView.topAnchor, left: self.ImageMainView.leftAnchor, bottom: self.ImageMainView.bottomAnchor, right: self.ImageMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.ImageMainView.addSubview(self.profileImageView)
        self.profileImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        self.profileImageView.centerXAnchor.constraint(equalTo: self.ImageMainView.centerXAnchor).isActive = true
        self.profileImageView.centerYAnchor.constraint(equalTo: self.ImageMainView.centerYAnchor).isActive = true
        self.profileImageView.layer.cornerRadius = 22.5
        self.profileImageView.clipsToBounds = true
        
        self.DataView.addSubview(self.NameLable)
        self.NameLable.anchor(top: self.ImageMainView.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 18)
        
        self.DataView.addSubview(self.pictoIDLable)
        self.pictoIDLable.anchor(top: self.NameLable.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 9.5, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 16)
        
        self.DataView.addSubview(self.bioLable)
        self.bioLable.anchor(top: self.pictoIDLable.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 9, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 0)
        
        // discription lable 1
        self.view.addSubview(self.DescriptionsLable1)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.DescriptionsLable1.anchor(top: self.DataView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 24)
        }else{
            self.DescriptionsLable1.anchor(top: self.DataView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 24)
        }
        
        // discription lable 2
        self.view.addSubview(self.DescriptionsLable2)
        self.DescriptionsLable2.anchor(top: self.DescriptionsLable1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 3, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 45)
        
        // orSkipView
        self.view.addSubview(self.orSkipView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.orSkipView.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 18, paddingRight: 0, width: 62, height: 22)
        }else{
            self.orSkipView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 88, paddingRight: 0, width: 62, height: 22)
        }
        self.orSkipView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.orSkipView.addSubview(self.orSkipLable)
        self.orSkipLable.anchor(top: self.orSkipView.topAnchor, left: self.orSkipView.leftAnchor, bottom: self.orSkipView.bottomAnchor, right: self.orSkipView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        let myString = "or Skip"
        let myString1 = "Skip"
        let targetString = myString
        let range = NSMakeRange(myString.count - myString1.count, myString1.count)
        
        self.orSkipLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: targetString, BoldRange: range, font1: UIFont(name: "HelveticaNeue", size: 19.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 19.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        
        self.orSkipView.addSubview(self.skipButton)
        self.skipButton.anchor(top: self.orSkipView.topAnchor, left: self.orSkipView.leftAnchor, bottom: self.orSkipView.bottomAnchor, right: self.orSkipView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.skipButton.addTarget(self, action: #selector(self.click_skip), for: .touchUpInside)
        
        // save button
        self.view.addSubview(self.saveButtonView)
        self.saveButtonView.anchor(top: nil, left: nil, bottom: self.orSkipView.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 15, paddingRight: 0, width: 281, height: 45)
        self.saveButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.saveButtonView.layer.cornerRadius = 22.5
        self.saveButtonView.clipsToBounds = true
        
        self.saveButtonView.addSubview(self.saveButton)
        self.saveButton.anchor(top: self.saveButtonView.topAnchor, left: self.saveButtonView.leftAnchor, bottom: self.saveButtonView.bottomAnchor, right: self.saveButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.saveButton.addTarget(self, action: #selector(self.click_save), for: .touchUpInside)
        
        // blur view
        self.view.addSubview(self.blurView)
        self.blurView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.blurView.isHidden = true
        
        //add bio view
        self.view.addSubview(self.addBioView)
        self.addBioView.anchor(top: nil, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 121)
        self.addBioView.layer.cornerRadius = 14.0
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.addBioViewTop = self.addBioView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 414)
        }else{
            self.addBioViewTop = self.addBioView.topAnchor.constraint(equalTo: self.view.safeTopAnchor, constant: 393)
        }
        self.addBioViewTop?.isActive = true
        self.addBioView.clipsToBounds = true
        
        self.addBioView.addSubview(self.bioTextview)
        self.bioTextview.anchor(top: self.addBioView.topAnchor, left: self.addBioView.leftAnchor, bottom: self.addBioView.bottomAnchor, right: self.addBioView.rightAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 8, paddingRight: 10, width: 0, height: 0)
        self.bioTextview.delegate = self
                
        // Lettor Count view
        
        self.view.addSubview(self.letterCountView)
        self.letterCountView.anchor(top: self.addBioView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 136, height: 45)
        self.letterCountView.layer.cornerRadius = 22.5
        self.letterCountView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.letterCountView.clipsToBounds = true

        self.letterCountView.addSubview(self.letterCountLable)
        self.letterCountLable.anchor(top: self.letterCountView.topAnchor, left: self.letterCountView.leftAnchor, bottom: nil, right: self.letterCountView.rightAnchor, paddingTop: 4, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 16)
        let myCount = "Letters: 200"
        let myCount1 = "200"
        let myCounttargetString = myCount
        let myrange = NSMakeRange(myCount.count - myCount1.count, myCount1.count)
        
        self.letterCountLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: myCounttargetString, BoldRange: myrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        
        self.letterCountView.addSubview(self.rowsCountLable)
        self.rowsCountLable.anchor(top: self.letterCountLable.bottomAnchor, left: self.letterCountView.leftAnchor, bottom: self.letterCountView.bottomAnchor, right: self.letterCountView.rightAnchor, paddingTop: 5, paddingLeft: 8, paddingBottom: 4, paddingRight: 8, width: 0, height: 0)
        let RowsCount = "Rows: 5"
        let RowsCount1 = "5"
        let RowsCounttargetString = RowsCount
        let Rowsrange = NSMakeRange(RowsCount.count - RowsCount1.count, RowsCount1.count)
        
        self.rowsCountLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: RowsCounttargetString, BoldRange: Rowsrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        
        
        // save button 1
        self.view.addSubview(self.saveButtonView1)
        self.saveButtonView1.anchor(top: self.letterCountView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 65, paddingRight: 0, width: 281, height: 45)
        self.saveButtonView1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.saveButtonView1.layer.cornerRadius = 22.5
        self.saveButtonView1.clipsToBounds = true
        
        self.saveButtonView1.addSubview(self.saveButton1)
        self.saveButton1.anchor(top: self.saveButtonView1.topAnchor, left: self.saveButtonView1.leftAnchor, bottom: self.saveButtonView1.bottomAnchor, right: self.saveButtonView1.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.saveButton1.addTarget(self, action: #selector(self.click_save), for: .touchUpInside)
        
        self.letterCountView.isHidden = true
        self.saveButtonView1.isHidden = true
        
        self.bioTextview.text = "Type Here…"
        self.bioTextview.textColor = UIColor.black
        
        NotificationCenter.default.addObserver(self,selector: #selector(keyboardWillShow),name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    
        self.setValue()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        IQKeyboardManager.shared.enableAutoToolbar = false
        IQKeyboardManager.shared.enable = false
        self.addSearchObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        IQKeyboardManager.shared.enableAutoToolbar = true
        IQKeyboardManager.shared.enable = true
        self.removeSearchObserver()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- set value
    
    func setValue(){
        
        self.NameLable.text = self.userFisrtname + " " + self.userLastName
        self.pictoIDLable.text = self.userPictoID
        
        let image = self.uploadedImageURl
        self.profileImageView.kf.indicatorType = .activity
        self.profileImageView.kf.setImage(with: URL(string: image))
        
    }
    
    // MARK:- keyBorad Hide/show Method
        
    @objc func keyboardWillShow(_ notification: Notification) {
        UIView.animate(withDuration: 0.8) {
            self.addBioViewTop?.constant = 200.0
            self.view.layoutIfNeeded()
        }
        self.blurView.isHidden = false
        self.letterCountView.isHidden = false
        self.saveButtonView1.isHidden = false
    }
        
    @objc func keyboardWillHide(_ notification: NSNotification) {
        UIView.animate(withDuration: 0.8) {
            self.addBioViewTop?.constant = 414.0
            self.view.layoutIfNeeded()
        }
        self.blurView.isHidden = true
        self.letterCountView.isHidden = true
        self.saveButtonView1.isHidden = true
    }

    // MARK:- Button Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_skip(){
        print("select skip")
        let vc = profiltCreatorPreviewVC()
        vc.userEmail = self.userEmail
        vc.userFisrtname = self.userFisrtname
        vc.userLastName = self.userLastName
        vc.userPassword = self.userPassword
        vc.userBirthday = self.userBirthday
        vc.userPictoID = self.userPictoID
        vc.uploadedImageURl = self.uploadedImageURl
//        vc.userBio = self.userBio
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func click_save(){
        print("select save")
        
        self.view.endEditing(true)
        
        self.updateUserData()
    }
}

extension profiltCreatorBioVC: UITextViewDelegate{
    
    // MARK:- Textview Delegate Method
    
    func addSearchObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.textChange(_:)), name: UITextView.textDidChangeNotification, object: nil)
    }
    
    func removeSearchObserver() {
        self.bioTextview.resignFirstResponder()
        NotificationCenter.default.removeObserver(self, name: UITextView.textDidChangeNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func textChange(_ notification: Notification) {
        searchRecordsFirstName(str: self.bioTextview.text!)
    }
    
    func searchRecordsFirstName(str: String) {
        if str.count == 0{
            self.bioLable.text = "Your bio goes here"
            self.userBio = ""
        }else{
            self.bioLable.text = str
            self.userBio = str
        }
        
        if str.count == 0{
            let myCount = "Letters: 200"
            let myCount1 = "200"
            let myCounttargetString = myCount
            let myrange = NSMakeRange(myCount.count - myCount1.count, myCount1.count)
            self.letterCountLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: myCounttargetString, BoldRange: myrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        }else{
            let myCount = "Letters: \(200-(str.count))"
            let myCount1 = "\(200-(str.count))"
            let myCounttargetString = myCount
            let myrange = NSMakeRange(myCount.count - myCount1.count, myCount1.count)
            self.letterCountLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: myCounttargetString, BoldRange: myrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        }
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Type Here…"{
            textView.text = nil
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Type Here…"
            textView.textColor = UIColor.black
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let newText = (textView.text as NSString).replacingCharacters(in: range, with: text)
        let numberOfChars = newText.count
        return numberOfChars < 201
    }
    
}


extension profiltCreatorBioVC{
    
    func updateUserData(){
        
        let params = [
            "Bio": self.userBio
        ]
        
        FirebaseClient.sharedInstance.updateUserData(params: params, completionStatus: { (isUpdate) in
            print(isUpdate)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                let vc = profiltCreatorPreviewVC()
                vc.userEmail = self.userEmail
                vc.userFisrtname = self.userFisrtname
                vc.userLastName = self.userLastName
                vc.userPassword = self.userPassword
                vc.userBirthday = self.userBirthday
                vc.userPictoID = self.userPictoID
                vc.uploadedImageURl = self.uploadedImageURl
                vc.userBio = self.userBio
                self.navigationController?.pushViewController(vc, animated: true)
            })
            
        }) { (error) in
            print(error)
        }
        
    }
    
}
