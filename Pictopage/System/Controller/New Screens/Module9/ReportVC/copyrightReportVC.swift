//
//  copyrightReportVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 14/10/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class copyrightReportVC: UIViewController {
    
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
    
    let titleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Report"
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
        backimage.image = UIImage(named: "downArrowblack1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let backArrowButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        return btn
    }()
    
    let descriptionLable1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Copyright Claim"
        lbl.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descriptionLable2: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "If you found someone using materials that legally belong to you in this post, please use this form."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descriptionLable3: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "We will email you shortly and ask for more details."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let lineView1: UIView = {
        let logov = UIView()
        logov.backgroundColor = .black
        return logov
    }()
    
    let descriptionView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let descriptionTextview: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        view.textAlignment = .left
        view.autocorrectionType = .no
        return view
    }()
    
    let lineView2: UIView = {
        let logov = UIView()
        logov.backgroundColor = .black
        return logov
    }()
    
    let LettersLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Letters: 500"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let sendButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let sendButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Send", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.mainView)
        self.mainView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 31)
        
        self.headerView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        
        self.headerView.addSubview(self.backArrowView)
        self.backArrowView.anchor(top: self.headerView.topAnchor, left: nil, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 52, height: 31)
        
        self.backArrowView.addSubview(self.backArrowImageview)
        self.backArrowImageview.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 17, height: 10)
        self.backArrowImageview.changeImageColor(color: black10)
        
        self.backArrowView.addSubview(self.backArrowButton)
        self.backArrowButton.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: self.backArrowView.bottomAnchor, right: self.backArrowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backArrowButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.view.addSubview(self.descriptionLable1)
        self.descriptionLable1.anchor(top: self.headerView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        self.view.addSubview(self.descriptionLable2)
        self.descriptionLable2.anchor(top: self.descriptionLable1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 20, paddingLeft: 50, paddingBottom: 0, paddingRight: 50, width: 0, height: 54)
        
        self.view.addSubview(self.descriptionLable3)
        self.descriptionLable3.anchor(top: self.descriptionLable2.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 15, paddingLeft: 50, paddingBottom: 0, paddingRight: 50, width: 0, height: 36)
        
        self.view.addSubview(self.lineView1)
        self.lineView1.anchor(top: self.descriptionLable3.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2)
        
        self.view.addSubview(self.descriptionView)
        self.descriptionView.anchor(top: self.lineView1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 140)
        
        self.descriptionView.addSubview(self.descriptionTextview)
        self.descriptionTextview.anchor(top: self.descriptionView.topAnchor, left: self.descriptionView.leftAnchor, bottom: self.descriptionView.bottomAnchor, right: self.descriptionView.rightAnchor, paddingTop: 5, paddingLeft: 5, paddingBottom: 9, paddingRight: 10, width: 0, height: 0)
        self.descriptionTextview.delegate = self
        self.descriptionTextview.text = "Optional report description…"
        self.descriptionTextview.textColor = UIColor(red: 95.0/255.0, green: 95.0/255.0, blue: 95.0/255.0, alpha: 1.0)
        
        self.view.addSubview(self.lineView2)
        self.lineView2.anchor(top: self.descriptionView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2)
        
        self.view.addSubview(self.LettersLable)
        self.LettersLable.anchor(top: self.lineView2.bottomAnchor, left: nil, bottom: nil, right: self.view.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 27, width: 0, height: 16)
        
        // send Button

        self.view.addSubview(self.sendButtonView)
        self.sendButtonView.anchor(top: self.LettersLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 19, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 111, height: 35)
        self.sendButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.sendButtonView.layer.cornerRadius = 17.5
        self.sendButtonView.clipsToBounds = true
        self.sendButtonView.backgroundColor = black10

        self.sendButtonView.addSubview(self.sendButton)
        self.sendButton.anchor(top: self.sendButtonView.topAnchor, left: self.sendButtonView.leftAnchor, bottom: self.sendButtonView.bottomAnchor, right: self.sendButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.sendButton.addTarget(self, action: #selector(self.click_send), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.addSearchObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.removeSearchObserver()
    }

    // mark:- Action
    
    @objc func click_back(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func click_send(){
        self.dismiss(animated: true, completion: nil)
    }

}


extension copyrightReportVC: UITextViewDelegate{
    
    func textViewDidBeginEditing(_ textView: UITextView)
    {
        if textView.text == "Optional report description…"{
            textView.text = ""
        }
        textView.becomeFirstResponder()
    }

    func textViewDidEndEditing(_ textView: UITextView)
    {
        if textView.text == ""
        {
            textView.text = "Optional report description…"
        }
        textView.resignFirstResponder()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let newText = (textView.text as NSString).replacingCharacters(in: range, with: text)
        let numberOfChars = newText.count
        return numberOfChars < 501
    }
    
    // MARK:- Textview Delegate Method
    
    func addSearchObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.textChange(_:)), name: UITextView.textDidChangeNotification, object: nil)
    }
    
    func removeSearchObserver() {
        self.descriptionTextview.resignFirstResponder()
        NotificationCenter.default.removeObserver(self, name: UITextView.textDidChangeNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func textChange(_ notification: Notification) {
        searchRecordsFirstName(str: self.descriptionTextview.text!)
    }
    
    func searchRecordsFirstName(str: String) {
        if str.count == 0{
            self.LettersLable.text = "Letters: 500"
        }else{
            let myCount = "Letters: \(500-(str.count))"
            self.LettersLable.text = myCount
        }
    }
}
