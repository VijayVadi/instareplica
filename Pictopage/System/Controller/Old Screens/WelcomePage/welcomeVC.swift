//
//  welcomeVC.swift
//  Pictopage
//
//  Created by Grewon on 14/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class welcomeVC: UIViewController {

    let backgroundImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "background")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
    let LableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Welcome to Pictopage\nFirstname"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let LableText1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Only one step left to complete your\naccount, setting up your profle."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let LableText2: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "You can choose to do this now or\nlater."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let buttonview: UIView = {
        let log = UIView()
        log.backgroundColor = black1a
        return log
    }()
    
    let divideImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "Line")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let skipButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Skip", for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        btn.setTitleColor(UIColor.white, for: .normal)
        return btn
    }()
    
    let setupProfileButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Setup Profile", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.backgroundImage)
        self.backgroundImage.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.view.addSubview(self.LableText)
        self.LableText.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 75, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 228, height: 50.0)
        self.LableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.view.addSubview(self.LableText1)
        self.LableText1.anchor(top: self.LableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 55, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 346, height: 60.0)
        self.LableText1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.view.addSubview(self.LableText2)
        self.LableText2.anchor(top: self.LableText1.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 26, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 316, height: 60.0)
        self.LableText2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.view.addSubview(self.buttonview)
        self.buttonview.anchor(top: self.LableText2.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 105, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 296, height: 44)
        self.buttonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.buttonview.layer.cornerRadius = 22.0
        
        self.buttonview.addSubview(self.divideImageview)
        self.divideImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 25, height: 25)
        self.divideImageview.centerXAnchor.constraint(equalTo: self.buttonview.centerXAnchor).isActive = true
        self.divideImageview.centerYAnchor.constraint(equalTo: self.buttonview.centerYAnchor).isActive = true
        
        self.buttonview.addSubview(self.skipButton)
        self.skipButton.anchor(top: self.buttonview.topAnchor, left: self.buttonview.leftAnchor, bottom: self.buttonview.bottomAnchor, right: self.divideImageview.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.skipButton.addTarget(self, action: #selector(self.click_skip), for: .touchUpInside)
        
        self.buttonview.addSubview(self.setupProfileButton)
        self.setupProfileButton.anchor(top: self.buttonview.topAnchor, left: self.divideImageview.rightAnchor, bottom: self.buttonview.bottomAnchor, right: self.buttonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.setupProfileButton.addTarget(self, action: #selector(self.click_setupProfile), for: .touchUpInside)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

    // MARK:- Button Action
    
    @objc func click_skip()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_setupProfile()
    {
        let vc = setupProfileVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
