//
//  createpage_pageNameAndPageIDVC.swift
//  Pictopage
//
//  Created by Grewon on 20/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class createpage_pageNameAndPageIDVC: UIViewController, UITextFieldDelegate {

    
    var keyboradNextButtonView = UIView()
    var keyboradNextButton = UIButton()
    
    let createPageBackImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "CreatePageBackgroundRectangle")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let createPageLogoImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "createPageLogo")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let backButtonView: UIView = {
        let v = UIView()
        return v
    }()
    
    let backButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "backBlack_1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let TitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Name your Page"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let pageNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Page Name"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pagenameMainView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let pagenametextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        txt.autocorrectionType = .no
        txt.textAlignment = .left
        txt.addTarget(self, action: #selector(handleTextInputChangePageName), for: .editingChanged)
        return txt
    }()
    
    let pageIDLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Page ID"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageIDMainView: UIView = {
        let textV = UIView()
        textV.backgroundColor = .white
        return textV
    }()
    
    let pageIDtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        txt.autocorrectionType = .no
        txt.textAlignment = .left
        txt.addTarget(self, action: #selector(handleTextInputChangePageID), for: .editingChanged)
        return txt
    }()
    
    let NextButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let NextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Next", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return btn
    }()
    
    
    @objc func handleTextInputChangePageName() {
        let isFormValid = pagenametextField.text?.isEmpty == false && pageIDtextField.text?.isEmpty == false
        
//        if (pagenametextField.text?.count)! > 400
//        {
//            pagenametextField.text?.removeLast()
//        }
        
        if isFormValid {
            self.NextButton.isEnabled = true
            self.NextButton.backgroundColor = blue
            
            self.keyboradNextButton.isEnabled = true
            self.keyboradNextButton.backgroundColor = blue
            
        } else {
            self.NextButton.isEnabled = false
            self.NextButton.backgroundColor = black1a
            
            self.keyboradNextButton.isEnabled = false
            self.keyboradNextButton.backgroundColor = black1a
        }
    }
    
    @objc func handleTextInputChangePageID() {
        let isFormValid = pagenametextField.text?.isEmpty == false && pageIDtextField.text?.isEmpty == false
        
//        if (pageIDtextField.text?.count)! > 400
//        {
//            pageIDtextField.text?.removeLast()
//        }
        
        if isFormValid {
            self.NextButton.isEnabled = true
            self.NextButton.backgroundColor = blue
            
            self.keyboradNextButton.isEnabled = true
            self.keyboradNextButton.backgroundColor = blue
            
        } else {
            self.NextButton.isEnabled = false
            self.NextButton.backgroundColor = black1a
            
            self.keyboradNextButton.isEnabled = false
            self.keyboradNextButton.backgroundColor = black1a
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.view.backgroundColor = UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
        
        self.makeKeyboradNextView()
        
        // setup background image
        
        self.view.addSubview(self.createPageBackImageview)
        self.createPageBackImageview.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 70)
        self.headerView.backgroundColor = .white
        
        self.headerView.addSubview(self.createPageLogoImageview)
        self.createPageLogoImageview.anchor(top: nil, left: nil, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 183, height: 47)
        self.createPageLogoImageview.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor).isActive = true
        
        self.headerView.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 3, paddingRight: 0, width: 47, height: 47)
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: nil, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 13, paddingRight: 0, width: 23, height: 22)
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: self.backButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // setup title lable
        
        self.view.addSubview(self.TitleLableText)
        self.TitleLableText.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 135, height: 21)
        self.TitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup textfield view
        
        self.view.addSubview(self.TextFieldView)
        self.TextFieldView.anchor(top: self.TitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 300, height: 178)
        self.TextFieldView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.TextFieldView.addSubview(self.pageNameLable)
        self.pageNameLable.anchor(top: self.TextFieldView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 89, height: 20)
        self.pageNameLable.centerXAnchor.constraint(equalTo: self.TextFieldView.centerXAnchor).isActive = true
        
        self.TextFieldView.addSubview(self.pagenameMainView)
        self.pagenameMainView.anchor(top: self.pageNameLable.bottomAnchor, left: self.TextFieldView.leftAnchor, bottom: nil, right: self.TextFieldView.rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 44)
        self.pagenameMainView.layer.cornerRadius = 22
        
        self.pagenameMainView.addSubview(self.pagenametextField)
        self.pagenametextField.anchor(top: self.pagenameMainView.topAnchor, left: self.pagenameMainView.leftAnchor, bottom: self.pagenameMainView.bottomAnchor, right: self.pagenameMainView.rightAnchor, paddingTop: 0, paddingLeft: 16, paddingBottom: 0, paddingRight: 16, width: 0, height: 0)
        self.pagenametextField.inputAccessoryView = self.keyboradNextButtonView
        self.pagenametextField.delegate = self
        
        self.TextFieldView.addSubview(self.pageIDLable)
        self.pageIDLable.anchor(top: self.pagenameMainView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 26, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 60, height: 20)
        self.pageIDLable.centerXAnchor.constraint(equalTo: self.TextFieldView.centerXAnchor).isActive = true
        
        self.TextFieldView.addSubview(self.pageIDMainView)
        self.pageIDMainView.anchor(top: self.pageIDLable.bottomAnchor, left: self.TextFieldView.leftAnchor, bottom: nil, right: self.TextFieldView.rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 44)
        self.pageIDMainView.layer.cornerRadius = 22
        
        self.pageIDMainView.addSubview(self.pageIDtextField)
        self.pageIDtextField.anchor(top: self.pageIDMainView.topAnchor, left: self.pageIDMainView.leftAnchor, bottom: self.pageIDMainView.bottomAnchor, right: self.pageIDMainView.rightAnchor, paddingTop: 0, paddingLeft: 16, paddingBottom: 0, paddingRight: 16, width: 0, height: 0)
        self.pageIDtextField.inputAccessoryView = self.keyboradNextButtonView
        self.pageIDtextField.delegate = self
        
        // setup next Button View
        
        self.view.addSubview(self.NextButtonView)
        self.NextButtonView.anchor(top: self.TextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 38, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 114, height: 36)
        self.NextButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.NextButtonView.addSubview(self.NextButton)
        self.NextButton.anchor(top: self.NextButtonView.topAnchor, left: self.NextButtonView.leftAnchor, bottom: self.NextButtonView.bottomAnchor, right: self.NextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.NextButton.backgroundColor = black1C
        self.NextButton.layer.cornerRadius = 18.0
        self.NextButton.isEnabled = true
        self.NextButton.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        
    }
    

    // MARK:- KeyboradView
    
    func makeKeyboradNextView()
    {
        self.keyboradNextButtonView.frame = CGRect(x: 0, y: self.view.frame.size.height, width: self.view.frame.size.width, height: 44.0)
        self.keyboradNextButtonView.backgroundColor = .white
        
        let v_next = UIView(frame: CGRect(x: self.keyboradNextButtonView.frame.size.width - 124, y: 0.0, width: 124, height: self.keyboradNextButtonView.frame.size.height))
        
        self.keyboradNextButton = UIButton(frame: CGRect(x: 16, y: 12, width: 86, height: 20.0))
        self.keyboradNextButton.setTitle("Next", for: .normal)
        self.keyboradNextButton.setTitleColor(UIColor.white, for: .normal)
        self.keyboradNextButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        self.keyboradNextButton.layer.cornerRadius = 10.0
        self.keyboradNextButton.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        self.keyboradNextButton.isEnabled = false
        self.keyboradNextButton.backgroundColor = black1a
        v_next.addSubview(self.keyboradNextButton)
        
        self.keyboradNextButtonView.addSubview(v_next)
        
        let v_divider = UIImageView(frame: CGRect(x: v_next.frame.origin.x - 1, y: 10, width: 1, height: 24.0))
        v_divider.image = UIImage(named: "KeyboradViewdividerLine")
        v_divider.contentMode = .scaleToFill
        self.keyboradNextButtonView.addSubview(v_divider)
        
        let v_text = UIView(frame: CGRect(x: 0, y: 0, width: v_divider.frame.origin.x - 8, height: self.keyboradNextButtonView.frame.size.height))
        
        let lbl_text = UILabel(frame: CGRect(x: 5, y: 0, width: v_text.frame.size.width - 8, height: v_text.frame.size.height))
        lbl_text.numberOfLines = 0
        lbl_text.text = "Page ID is like a username for your Page. Page ID makes it easier for other users to find your Page."
        lbl_text.font = UIFont(name: "HelveticaNeue-Medium", size: 10.0)!
        lbl_text.textAlignment = .center
        lbl_text.textColor = .black
        v_text.addSubview(lbl_text)
        
        self.keyboradNextButtonView.addSubview(v_text)
        self.keyboradNextButtonView.clipsToBounds = true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    // MARK:- UItextField Delegate Method
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    // MARK:- Button Action
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_next()
    {
        guard let pageName = self.pagenametextField.text, !pageName.isEmpty else {
            self.view.makeToast("Please enter page Name")
            return }
        
        guard let pageid = self.pageIDtextField.text, !pageid.isEmpty else {
            self.view.makeToast("Please enter page ID")
            return }
        
        let vc = createPageDescriptionVC()
        vc.pageName = pageName
        vc.pageNameWithID = pageid
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
