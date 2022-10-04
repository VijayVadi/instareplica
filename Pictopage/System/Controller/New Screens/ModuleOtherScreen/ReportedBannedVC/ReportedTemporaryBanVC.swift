//
//  ReportedTemporaryBanVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 14/10/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class ReportedTemporaryBanVC: UIViewController {
    
    
    let userImageView: UIView = {
        let log = UIView()
        return log
    }()
    
    let userBorderImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        backimage.image = UIImage(named: "userProfileBorder1x")
        return backimage
    }()
    
    let userImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        backimage.image = UIImage(named: "reportBanned1x")
        return backimage
    }()
    
    let descriptionLable1Lable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Hey Firstname…\nlooks like its time to take a\nbreak."
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descriptionLable2Lable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "We have decided to pause your account due to one or more community guideline violatons."
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TimeView: UIView = {
        let log = UIView()
        return log
    }()
    
    let descriptionLable3Lable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Time left until Reactivation:"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TimeLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "##:##:##"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descriptionLable4Lable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Message from the Pictopage Team:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ButtonView: UIView = {
        let log = UIView()
        return log
    }()
    
    let ButtonBorderImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        backimage.image = UIImage(named: "buttonGrediantBorder1x")
        return backimage
    }()
    
    let logoutButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Log Out", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        return btn
    }()
    
    let messageTextview: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.view.addSubview(self.userImageView)
        self.userImageView.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 75.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100.0, height: 100.0)
        self.userImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.userImageView.addSubview(self.userBorderImage)
        self.userBorderImage.anchor(top: self.userImageView.topAnchor, left: self.userImageView.leftAnchor, bottom: self.userImageView.bottomAnchor, right: self.userImageView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userBorderImage.clipsToBounds = true
        
        self.userImageView.addSubview(self.userImage)
        self.userImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 58, height: 67)
        self.userImage.centerXAnchor.constraint(equalTo: self.userImageView.centerXAnchor).isActive = true
        self.userImage.centerYAnchor.constraint(equalTo: self.userImageView.centerYAnchor).isActive = true
        self.userImage.clipsToBounds = true
        
        self.view.addSubview(self.descriptionLable1Lable)
        self.descriptionLable1Lable.anchor(top: self.userImageView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 295.0, height: 74.0)
        self.descriptionLable1Lable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let data = FirebaseClient.sharedInstance.firebaseCurrentUser
        if let name = data?.FullName, name.count != 0{
            self.descriptionLable1Lable.text = "Hey \(name)\nlooks like its time to take a\nbreak."
        }
        
        
        self.view.addSubview(self.descriptionLable2Lable)
        self.descriptionLable2Lable.anchor(top: self.descriptionLable1Lable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 311.0, height: 67.0)
        self.descriptionLable2Lable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.view.addSubview(self.TimeView)
        self.TimeView.anchor(top: self.descriptionLable2Lable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 298.0, height: 23.0)
        self.TimeView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.TimeView.addSubview(self.descriptionLable3Lable)
        self.descriptionLable3Lable.anchor(top: self.TimeView.topAnchor, left: self.TimeView.leftAnchor, bottom: self.TimeView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 214.0, height: 0)
        
        self.TimeView.addSubview(self.TimeLable)
        self.TimeLable.anchor(top: self.TimeView.topAnchor, left: self.descriptionLable3Lable.rightAnchor, bottom: self.TimeView.bottomAnchor, right: self.TimeView.rightAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.view.addSubview(self.descriptionLable4Lable)
        self.descriptionLable4Lable.anchor(top: self.TimeView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 17.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 311.0, height: 20.0)
        self.descriptionLable4Lable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.view.addSubview(self.ButtonView)
        self.ButtonView.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 25, paddingRight: 0, width: 232, height: 50)
        self.ButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.ButtonView.addSubview(self.ButtonBorderImage)
        self.ButtonBorderImage.anchor(top: self.ButtonView.topAnchor, left: self.ButtonView.leftAnchor, bottom: self.ButtonView.bottomAnchor, right: self.ButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.ButtonView.addSubview(self.logoutButton)
        self.logoutButton.anchor(top: self.ButtonView.topAnchor, left: self.ButtonView.leftAnchor, bottom: self.ButtonView.bottomAnchor, right: self.ButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.logoutButton.addTarget(self, action: #selector(self.click_logout), for: .touchUpInside)
        
        self.view.addSubview(self.messageTextview)
        self.messageTextview.anchor(top: self.descriptionLable4Lable.bottomAnchor, left: self.view.leftAnchor, bottom: self.ButtonView.topAnchor, right: self.view.rightAnchor, paddingTop: 9, paddingLeft: 25, paddingBottom: 20, paddingRight: 25, width: 0, height: 0)
        self.messageTextview.text = "Message"
    }
    

    // MARK:- Button Action
    
    @objc func click_logout(){
        self.dismiss(animated: true, completion: nil)
    }

}
