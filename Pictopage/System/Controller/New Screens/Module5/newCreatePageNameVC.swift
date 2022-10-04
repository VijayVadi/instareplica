//
//  newCreatePageNameVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 03/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class newCreatePageNameVC: UIViewController {

    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let titleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Create Page"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let backArrowView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let backArrowImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "back_1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let backArrowButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        return btn
    }()
    
    let pageNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Name your Page"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageNameDescriptionLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "A page name is similar to a name you would give a group chat."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // pageName Text Field
    let pageNameTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let pageNameTextFieldDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let pageNameTextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Page Name",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    // next Button
    
    let nextButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Next", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = whiteF9FAF9
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 51)
        
        self.headerView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 32, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        
        self.headerView.addSubview(self.backArrowView)
        self.backArrowView.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 51, height: 51)
        
        self.backArrowView.addSubview(self.backArrowImageview)
        self.backArrowImageview.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: nil, right: nil, paddingTop: 35, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.backArrowView.addSubview(self.backArrowButton)
        self.backArrowButton.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: self.backArrowView.bottomAnchor, right: self.backArrowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backArrowButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.view.addSubview(self.pageNameLable)
        self.pageNameLable.anchor(top: self.headerView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 38, paddingLeft: 109, paddingBottom: 0, paddingRight: 109, width: 0, height: 24)
        
        self.view.addSubview(self.pageNameDescriptionLable)
        self.pageNameDescriptionLable.anchor(top: self.pageNameLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 22, paddingLeft: 47.5, paddingBottom: 0, paddingRight: 47.5, width: 0, height: 41)
        
        // setup pageName textfeild
        
        self.view.addSubview(self.pageNameTextFieldView)
        self.pageNameTextFieldView.anchor(top: self.pageNameDescriptionLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 30, paddingLeft: 39, paddingBottom: 0, paddingRight: 39, width: 0, height: 24)
        
        self.pageNameTextFieldView.addSubview(self.pageNameTextFieldDividerView)
        self.pageNameTextFieldDividerView.anchor(top: nil, left: self.pageNameTextFieldView.leftAnchor, bottom: self.pageNameTextFieldView.bottomAnchor, right: self.pageNameTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.pageNameTextFieldView.addSubview(self.pageNameTextField)
        self.pageNameTextField.anchor(top: self.pageNameTextFieldView.topAnchor, left: self.pageNameTextFieldView.leftAnchor, bottom: self.pageNameTextFieldView.bottomAnchor, right: self.pageNameTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.pageNameTextField.delegate = self
        self.pageNameTextField.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        
        // Change Button

        self.view.addSubview(self.nextButtonView)
        self.nextButtonView.anchor(top: self.pageNameTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 33, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.nextButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.nextButtonView.layer.cornerRadius = 17.5
        self.nextButtonView.clipsToBounds = true
        self.nextButtonView.backgroundColor = .white
        self.nextButtonView.setBorder(color: .black, width: 2.0)

        self.nextButtonView.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.nextButton.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        self.nextButton.isEnabled = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // MARK:- Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_next(){
        let vc = newCreatePageDescriptionVC()
        vc.pageName = self.pageNameTextField.text!
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension newCreatePageNameVC: UITextFieldDelegate{
    
    @objc func handleTextInputChangeEmail() {
        
        if self.pageNameTextField.text?.isEmpty == false {
            self.nextButton.isEnabled = true
        } else {
            self.nextButton.isEnabled = false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}
