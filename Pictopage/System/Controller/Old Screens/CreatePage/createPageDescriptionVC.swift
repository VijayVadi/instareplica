//
//  createPageDescriptionVC.swift
//  Pictopage
//
//  Created by Grewon on 31/12/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class createPageDescriptionVC: UIViewController, UITextViewDelegate {

    
    let createPageBackImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "CreatePageBackgroundRectangle")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    // Header
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
    
    // Title Lable
    let TitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "What is your Page about?"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // SubTitle Lable
    let subTitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Describe your Page to others that might see it."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // Description main view
    
    let descriptionsView: UIView = {
        let v = UIView()
        return v
    }()
    
    let DesTitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Page Description"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descriptionTextMainview: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.layer.cornerRadius = 20.0
        return v
    }()
    
    let descriptionTextview: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        return view
    }()
    
    // Description count view
    
    let descriptionCountview: UIView = {
        let v = UIView()
        v.backgroundColor = GrayD8
        return v
    }()
    
    let DesTextCountTitle: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Letters: 100"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // Skip button view
    
    let skipButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let skipButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Skip", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return btn
    }()
    
    let nextButtonView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let nextButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "new_grediant")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        logoimg.clipsToBounds = true
        return logoimg
    }()
    
    let nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Next", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return btn
    }()
    
    
    
    // veriables
    
    var pageName = String()
    var pageNameWithID = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
        
        // setup background image
        
        self.view.addSubview(self.createPageBackImageview)
        self.createPageBackImageview.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 70)
        
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
        self.TitleLableText.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 27, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 210, height: 21)
        self.TitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup subTitle lable
        
        self.view.addSubview(self.subTitleLableText)
        self.subTitleLableText.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 48, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 210, height: 32)
        self.subTitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
        // setup description view
        
        self.view.addSubview(self.descriptionsView)
        self.descriptionsView.anchor(top: self.subTitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 14.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 300, height: 153)
        self.descriptionsView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.descriptionsView.addSubview(self.DesTitleLableText)
        self.DesTitleLableText.anchor(top: self.descriptionsView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 20)
        self.DesTitleLableText.centerXAnchor.constraint(equalTo: self.descriptionsView.centerXAnchor).isActive = true
        
        self.descriptionsView.addSubview(self.descriptionTextMainview)
        self.descriptionTextMainview.anchor(top: self.DesTitleLableText.bottomAnchor, left: self.descriptionsView.leftAnchor, bottom: self.descriptionsView.bottomAnchor, right: self.descriptionsView.rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.descriptionTextMainview.addSubview(self.descriptionTextview)
        self.descriptionTextview.anchor(top: self.descriptionTextMainview.topAnchor, left: self.descriptionTextMainview.leftAnchor, bottom: self.descriptionTextMainview.bottomAnchor, right: self.descriptionTextMainview.rightAnchor, paddingTop: 9, paddingLeft: 16, paddingBottom: 16, paddingRight: 9, width: 0, height: 0)
        self.descriptionTextview.delegate = self
        
        
        // setup description count view
        
        self.view.addSubview(self.descriptionCountview)
        self.descriptionCountview.anchor(top: self.descriptionsView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 7, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 101, height: 27)
        self.descriptionCountview.centerXAnchor.constraint(equalTo: self.descriptionsView.centerXAnchor).isActive = true
        self.descriptionCountview.layer.cornerRadius = 13.5
        self.descriptionCountview.layer.applySketchShadow()
        
        self.view.addSubview(self.DesTextCountTitle)
        self.DesTextCountTitle.anchor(top: nil, left: self.descriptionCountview.leftAnchor, bottom: nil, right: self.descriptionCountview.rightAnchor, paddingTop: 0, paddingLeft: 9, paddingBottom: 0, paddingRight: 9, width: 0, height: 16)
        self.DesTextCountTitle.centerYAnchor.constraint(equalTo: self.descriptionCountview.centerYAnchor).isActive = true
        
        // setup skip Button View
        
        self.view.addSubview(self.skipButtonView)
        self.skipButtonView.anchor(top: self.descriptionCountview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 114, height: 36)
        self.skipButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.skipButtonView.clipsToBounds = true
        
        self.skipButtonView.addSubview(self.skipButton)
        self.skipButton.anchor(top: self.skipButtonView.topAnchor, left: self.skipButtonView.leftAnchor, bottom: self.skipButtonView.bottomAnchor, right: self.skipButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.skipButton.backgroundColor = black1a
        self.skipButton.layer.cornerRadius = 18.0
        self.skipButton.isEnabled = true
        self.skipButton.addTarget(self, action: #selector(self.click_skip), for: .touchUpInside)
        
        // setup next Button View
        
        self.view.addSubview(self.nextButtonView)
        self.nextButtonView.anchor(top: self.descriptionCountview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 114, height: 36)
        self.nextButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.nextButtonView.layer.cornerRadius = 18.0
        self.nextButtonView.layer.borderColor = UIColor.black.cgColor
        self.nextButtonView.layer.borderWidth = 4.0
        
        self.nextButtonView.addSubview(self.nextButtonImageView)
        self.nextButtonImageView.anchor(top: self.nextButtonView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.nextButtonView.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.nextButton.backgroundColor = .clear
        self.nextButton.isEnabled = true
        self.nextButton.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        
        self.nextButtonView.isHidden = true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.addSearchObserver()
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.removeSearchObserver()
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
        
        if str.count > 100{
            self.descriptionTextview.text.removeLast()
        }else{
            
            if str.count == 0{
                self.skipButtonView.isHidden = false
                self.nextButtonView.isHidden = true
            }else{
                self.skipButtonView.isHidden = true
                self.nextButtonView.isHidden = false
            }
            
            self.DesTextCountTitle.text = "Letters: \(100 - str.count)"
        }
        
    }

    // MARK:- Button Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_next(){
        
        let vc = createPageAddImageVC()
        vc.pageName = self.pageName
        vc.pageNameWithID = self.pageNameWithID
        vc.pageDescriptionText = self.descriptionTextview.text!
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc func click_skip(){
        let vc = createPageAddImageVC()
        vc.pageName = self.pageName
        vc.pageNameWithID = self.pageNameWithID
        vc.pageDescriptionText = ""
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
