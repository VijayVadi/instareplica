//
//  addCaptionVC.swift
//  Pictopage
//
//  Created by Grewon on 26/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

class addCaptionVC: UIViewController {

    let backgroundImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "background")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
    let pageTitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 13.0)!
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        return lbl
    }()
    
    let addCaptionView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let addCaptiontextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 16.0)!
        txt.attributedPlaceholder = NSAttributedString(string: "Add a Caption…",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        txt.textColor = UIColor.black
        return txt
    }()
    
    let closeButtonMainView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let closeImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "OvalOpp50")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let closeButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "close_white1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let closeButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let nextButtonMainView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let nextImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "OvalRightOpp80")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()

    let nextButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "backWithRound")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()

    let nextButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    var selectImage = UIImage()
    var keyCaptionView = UIView()
    var keyCaptionTextfield = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.makeAddcaptionView()
        
        self.view.addSubview(self.backgroundImage)
        self.backgroundImage.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backgroundImage.image = selectImage
        
        // Setup pageTitleLable
        
        self.view.addSubview(self.pageTitleLabel)
        self.pageTitleLabel.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 22)
        self.pageTitleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let myString = "Post To "
        let myString1 = "Nature"
        let targetString = myString + myString1
        let range = NSMakeRange(0, myString.count - 1)
        self.pageTitleLabel.attributedText = ApiUtillity.sharedInstance.attributedString(from: targetString, nonBoldRange: range, font1: UIFont(name: "HelveticaNeue-Medium", size: 18.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 18.0)!)
        self.pageTitleLabel.isHidden = true
        
        // setup close button
        
        self.view.addSubview(self.closeButtonMainView)
        self.closeButtonMainView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0.0, paddingLeft: -8, paddingBottom: -8, paddingRight: 0, width: 70, height: 70)
        
        self.closeButtonMainView.addSubview(self.closeImageview)
        self.closeImageview.anchor(top: self.closeButtonMainView.topAnchor, left: self.closeButtonMainView.leftAnchor, bottom: self.closeButtonMainView.bottomAnchor, right: self.closeButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.closeButtonMainView.addSubview(self.closeButtonImageview)
        self.closeButtonImageview.anchor(top: nil, left: self.closeButtonMainView.leftAnchor, bottom: self.closeButtonMainView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: 22, paddingRight: 0, width: 22, height: 22)
        
        self.closeButtonMainView.addSubview(self.closeButton)
        self.closeButton.anchor(top: self.closeButtonMainView.topAnchor, left: self.closeButtonMainView.leftAnchor, bottom: self.closeButtonMainView.bottomAnchor, right: self.closeButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.closeButton.addTarget(self, action: #selector(self.click_close), for: .touchUpInside)
        
        // setup Next button
        
        self.view.addSubview(self.nextButtonMainView)
        self.nextButtonMainView.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0.0, paddingLeft: 0, paddingBottom: -8, paddingRight: -8, width: 70, height: 70)
        
        self.nextButtonMainView.addSubview(self.nextImageview)
        self.nextImageview.anchor(top: self.nextButtonMainView.topAnchor, left: self.nextButtonMainView.leftAnchor, bottom: self.nextButtonMainView.bottomAnchor, right: self.nextButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        self.nextButtonMainView.addSubview(self.nextButtonImageview)
        self.nextButtonImageview.anchor(top: nil, left: nil, bottom: self.nextButtonMainView.bottomAnchor, right: self.nextButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 16, paddingRight: 16, width: 30, height: 30)

        self.nextButtonMainView.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonMainView.topAnchor, left: self.nextButtonMainView.leftAnchor, bottom: self.nextButtonMainView.bottomAnchor, right: self.nextButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.nextButton.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        
        // setip addCaption view
        
        self.view.addSubview(self.addCaptionView)
        self.addCaptionView.anchor(top: nil, left: self.closeButtonMainView.rightAnchor, bottom: self.view.bottomAnchor, right: self.nextButtonMainView.leftAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 8, paddingRight: 10, width: 0, height: 34)
        self.addCaptionView.layer.cornerRadius = 17.0
        
        self.addCaptionView.addSubview(self.addCaptiontextField)
        self.addCaptiontextField.anchor(top: self.addCaptionView.topAnchor, left: self.addCaptionView.leftAnchor, bottom: self.addCaptionView.bottomAnchor, right: self.addCaptionView.rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 0)
        self.addCaptiontextField.delegate = self
        self.addCaptiontextField.keyboardAppearance = .alert
        self.addCaptiontextField.inputAccessoryView = self.keyCaptionView
        
        IQKeyboardManager.shared.enable = false
        
        // keyborad notifier
        
        NotificationCenter.default.addObserver(self,selector: #selector(keyboardWillShow),name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.addCaptiontextField.text = self.keyCaptionTextfield.text!
        self.keyCaptionTextfield.resignFirstResponder()
        self.addCaptiontextField.resignFirstResponder()
        self.view.endEditing(true)
    }

    // MARK:- Button Action
    
    @objc func click_close()
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func click_next()
    {
//        if self.keyCaptionTextfield.text!.count == 0 {
//            self.view.makeToast("Please enter caption text")
//        }else if self.addCaptiontextField.text!.count == 0{
//            self.view.makeToast("Please enter caption text")
//        }else{
//            let vc = sharePostScreen()
//            vc.caption = self.addCaptiontextField.text!
//            vc.postImage = self.selectImage
//            self.navigationController?.pushViewController(vc, animated: true)
//        }
        
        let vc = sharePostScreen()
        vc.caption = self.keyCaptionTextfield.text!
        vc.postImage = self.selectImage
        self.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK:- keyBorad Hide/show Method
    
    @objc func keyboardWillShow(_ notification: Notification) {
        self.keyCaptionTextfield.becomeFirstResponder()
    }
    
    @objc
    func keyboardWillHide(_ notification: NSNotification) {
        
    }
    
    // MARK:- Create KeyBorad view
    
    func makeAddcaptionView()
    {
        self.keyCaptionView.frame = CGRect(x: 0, y: self.view.frame.size.height, width: self.view.frame.size.width, height: 44.0)
        self.keyCaptionView.backgroundColor = .clear
        
        let v_next = UIView(frame: CGRect(x: self.keyCaptionView.frame.size.width - 34 - 9, y: 0.0, width: 34, height: 34))

        let nextimage = UIImageView(frame: CGRect(x: 0, y: 0, width: v_next.frame.size.width, height: v_next.frame.size.height))
        nextimage.image = UIImage(named: "backWithRound")
        nextimage.contentMode = .scaleAspectFit
        v_next.addSubview(nextimage)
        
        let nxt_btn = UIButton(frame: CGRect(x: 0, y: 0, width: v_next.frame.size.width, height: v_next.frame.size.height))
        nxt_btn.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        v_next.addSubview(nxt_btn)
        
        self.keyCaptionView.addSubview(v_next)

        let v_text = UIView(frame: CGRect(x: 8, y: 0, width: v_next.frame.origin.x - 15, height: 34))
        v_text.backgroundColor = .white
        v_text.layer.cornerRadius = 17
        
        self.keyCaptionTextfield = UITextField(frame: CGRect(x: 8, y: 0, width: v_text.frame.size.width - 16, height: v_text.frame.size.height))
        self.keyCaptionTextfield.borderStyle = UITextField.BorderStyle.none
        self.keyCaptionTextfield.font = UIFont(name: "HelveticaNeue-Light", size: 16.0)!
        self.keyCaptionTextfield.keyboardAppearance = .alert
        self.keyCaptionTextfield.delegate = self
        self.keyCaptionTextfield.autocorrectionType = .yes
        self.keyCaptionTextfield.textColor = .black
        v_text.addSubview(self.keyCaptionTextfield)
        
        self.keyCaptionView.addSubview(v_text)
        self.keyCaptionView.clipsToBounds = true
        
    }
}

extension addCaptionVC: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.addCaptiontextField.text = self.keyCaptionTextfield.text!
        self.keyCaptionTextfield.resignFirstResponder()
        self.addCaptiontextField.resignFirstResponder()
        
        return true
    }
}
