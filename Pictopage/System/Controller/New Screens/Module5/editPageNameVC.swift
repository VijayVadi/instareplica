//
//  editPageNameVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 03/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase

class editPageNameVC: UIViewController {

    let mainView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerDividerImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "bookmarkdivider1x")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
    let titleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Page Name"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let backArrowView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
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
    
    let dataView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
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
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 95.0/255.0, green: 95.0/255.0, blue: 95.0/255.0, alpha: 1.0)])
        //        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    // Change Button
    
    let changeButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let changeButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Change", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        return btn
    }()
    
    var pageId = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.mainView)
        self.mainView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 35)
        
        self.headerView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        
        self.headerView.addSubview(self.backArrowView)
        self.backArrowView.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 35, height: 35)
        
        self.backArrowView.addSubview(self.backArrowImageview)
        self.backArrowImageview.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: nil, right: nil, paddingTop: 19, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.backArrowView.addSubview(self.backArrowButton)
        self.backArrowButton.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: self.backArrowView.bottomAnchor, right: self.backArrowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backArrowButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // setup data view
        
        self.view.addSubview(self.dataView)
        self.dataView.anchor(top: self.backArrowView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 80.5, paddingLeft: 39, paddingBottom: 0, paddingRight: 39, width: 0, height: 92)
        
        // setup pageName textfeild
        
        self.dataView.addSubview(self.pageNameTextFieldView)
        self.pageNameTextFieldView.anchor(top: self.dataView.topAnchor, left: self.dataView.leftAnchor, bottom: nil, right: self.dataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        
        self.pageNameTextFieldView.addSubview(self.pageNameTextFieldDividerView)
        self.pageNameTextFieldDividerView.anchor(top: nil, left: self.pageNameTextFieldView.leftAnchor, bottom: self.pageNameTextFieldView.bottomAnchor, right: self.pageNameTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.pageNameTextFieldView.addSubview(self.pageNameTextField)
        self.pageNameTextField.anchor(top: self.pageNameTextFieldView.topAnchor, left: self.pageNameTextFieldView.leftAnchor, bottom: self.pageNameTextFieldView.bottomAnchor, right: self.pageNameTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.pageNameTextField.delegate = self
        self.pageNameTextField.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        
        // Change Button

        self.dataView.addSubview(self.changeButtonView)
        self.changeButtonView.anchor(top: self.pageNameTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 33, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 111, height: 35)
        self.changeButtonView.centerXAnchor.constraint(equalTo: self.dataView.centerXAnchor).isActive = true
        self.changeButtonView.layer.cornerRadius = 17.5
        self.changeButtonView.clipsToBounds = true
        self.changeButtonView.backgroundColor = black10

        
        self.changeButtonView.addSubview(self.changeButton)
        self.changeButton.anchor(top: self.changeButtonView.topAnchor, left: self.changeButtonView.leftAnchor, bottom: self.changeButtonView.bottomAnchor, right: self.changeButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
                self.changeButton.addTarget(self, action: #selector(self.click_change), for: .touchUpInside)
        self.changeButton.isEnabled = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // MARK:- Action
    
    @objc func click_back(){
        self.dismiss(animated: false, completion: nil)
    }

    @objc func click_change(){
        if self.pageNameTextField.text!.count == 0{
            self.view.makeToast("Please add page name")
        }else{
            self.updatePageName()
        }
    }
}


extension editPageNameVC: UITextFieldDelegate{
    
    @objc func handleTextInputChangeEmail() {
        
        if self.pageNameTextField.text?.isEmpty == false {
            self.changeButton.isEnabled = true
        } else {
            self.changeButton.isEnabled = false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

extension editPageNameVC{
    
    func updatePageName(){
        
        let db = Firestore.firestore()
        
        let washingtonRef = db.collection("Pages").document(self.pageId)
        
        washingtonRef.updateData([
            "page_name": self.pageNameTextField.text!
        ]) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
                
                self.navigationController?.view.makeToast("PageName Changed Successfully")
                
                FirebaseClient.sharedInstance.updatePageDataInPosTable(pageID: self.pageId, pageName: self.pageNameTextField.text!) { (isComplete) in
                    self.dismiss(animated: false, completion: nil)
                }
            }
        }
    }
    
}
