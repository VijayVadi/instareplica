//
//  deletePageVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 03/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase

class deletePageVC: UIViewController {

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
        lbl.text = "Delete Page"
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
    
    let descripitonLable1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Deleting this page means it will be lost permanently.\n\nYou won’t be able to recover any posts you made to this page after unless you have saved them somewhere else.\n\nDeleting this page will notify all of it’s bookmarkers and after you delete this page, it cannot be undone.\n\nYour password is required for security."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // password Text Field
    let passwordTextFieldView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let passwordTextFieldDividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black1F2225
        return logov
    }()
    
    let passwordTextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Password",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 95.0/255.0, green: 95.0/255.0, blue: 95.0/255.0, alpha: 1.0)])
        //        txt.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        return txt
    }()
    
    // Change Button
    
    let deletePageButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let deletePageImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "deletePage1x")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
    let deletePageButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Delete Page", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        return btn
    }()
    
    var pageID = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.mainView)
        self.mainView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 35)
        
        //        self.headerView.addSubview(self.headerDividerImageview)
        //        self.headerDividerImageview.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.headerView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        
        self.headerView.addSubview(self.backArrowView)
        self.backArrowView.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 22, paddingBottom: 0, paddingRight: 0, width: 35, height: 35)
        
        self.backArrowView.addSubview(self.backArrowImageview)
        self.backArrowImageview.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: nil, right: nil, paddingTop: 19, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.backArrowView.addSubview(self.backArrowButton)
        self.backArrowButton.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: self.backArrowView.bottomAnchor, right: self.backArrowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backArrowButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.view.addSubview(self.descripitonLable1)
        self.descripitonLable1.anchor(top: self.backArrowView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 23.5, paddingLeft: 27, paddingBottom: 0, paddingRight: 27, width: 0, height: 234)
        
        // setup password textfeild
        
        self.view.addSubview(self.passwordTextFieldView)
        self.passwordTextFieldView.anchor(top: self.descripitonLable1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 19, paddingLeft: 39, paddingBottom: 0, paddingRight: 39, width: 0, height: 24)
        
        self.passwordTextFieldView.addSubview(self.passwordTextFieldDividerView)
        self.passwordTextFieldDividerView.anchor(top: nil, left: self.passwordTextFieldView.leftAnchor, bottom: self.passwordTextFieldView.bottomAnchor, right: self.passwordTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.passwordTextFieldView.addSubview(self.passwordTextField)
        self.passwordTextField.anchor(top: self.passwordTextFieldView.topAnchor, left: self.passwordTextFieldView.leftAnchor, bottom: self.passwordTextFieldView.bottomAnchor, right: self.passwordTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.passwordTextField.delegate = self
        self.passwordTextField.addTarget(self, action: #selector(handleTextInputChangeEmail), for: .editingChanged)
        
        // DeletePage Button

        self.view.addSubview(self.deletePageButtonView)
        self.deletePageButtonView.anchor(top: self.passwordTextFieldView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 26, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 168, height: 41)
        self.deletePageButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.deletePageButtonView.layer.cornerRadius = 20.5
        self.deletePageButtonView.clipsToBounds = true
        self.deletePageButtonView.backgroundColor = black10

        self.deletePageButtonView.addSubview(self.deletePageImageview)
        self.deletePageImageview.anchor(top: self.deletePageButtonView.topAnchor, left: self.deletePageButtonView.leftAnchor, bottom: self.deletePageButtonView.bottomAnchor, right: self.deletePageButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.deletePageButtonView.addSubview(self.deletePageButton)
        self.deletePageButton.anchor(top: self.deletePageButtonView.topAnchor, left: self.deletePageButtonView.leftAnchor, bottom: self.deletePageButtonView.bottomAnchor, right: self.deletePageButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.deletePageButton.addTarget(self, action: #selector(self.click_delete), for: .touchUpInside)
        self.deletePageButton.isEnabled = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // MARK:- Action
    
    @objc func click_back(){
        self.dismiss(animated: false, completion: nil)
    }
    
    @objc func click_delete(){
//        self.dismiss(animated: false, completion: nil)
        
        if passwordTextField.text!.count == 0{
            self.view.makeToast("Please enter your password.")
        }else if self.passwordTextField.text! != Defaults[.UserPassword]{
            self.view.makeToast("Please enter valid password.")
        }else{
            self.deletePage()
        }
        
    }
}

extension deletePageVC: UITextFieldDelegate{
    
    @objc func handleTextInputChangeEmail() {
        
        if self.passwordTextField.text?.isEmpty == false {
            self.deletePageButton.isEnabled = true
        } else {
            self.deletePageButton.isEnabled = false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

extension deletePageVC{
    
    func deletePage(){
        
        let db = Firestore.firestore()
        let washingtonRef = db.collection("Pages").document(self.pageID)

        washingtonRef.delete() { err in
            if let err = err {
                print("Error removing document: \(err)")
            } else {
                print("Document successfully removed!")

                FirebaseClient.sharedInstance.deletePostWhenPageDelete(pageID: self.pageID) { (isDelete) in
                    PageSettingVC.isDeletePage = true
                    self.dismiss(animated: false, completion: nil)
                }

            }
        }
        
        
        
    }
    
}
