//
//  FirstSetpsVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 20/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class FirstSetpsVC: UIViewController {

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
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable1 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "We are happy to have\nyou join our community"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable2 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Click on the buttons bellow to access\nmore information or skip ahead into\nPictopage"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let tutorialView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let tutorialImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "TutorialShape1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFill
        return backButtonImageView
    }()
    
    let tutorialTitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Tutorial"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let tutorialDescriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "A whole new way to create, share, and explore."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let CommunityView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let CommunityImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "Flag1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFill
        return backButtonImageView
    }()
    
    let CommunityTitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Community Guidelines"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let CommunityDescriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "How to create, share, and explore safely."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let CEOMessageView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let CEOMessageImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "userLogo1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFill
        return backButtonImageView
    }()
    
    let CEOMessageTitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "A message from the CEO"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let CEOMessageDescriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Vijay Vadi talks about Pictopage and Page inc."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let enterPictoPageView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let enterPictoPageImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "EnterPictoPage1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let enterPictoPageButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    var userEmail = String()
    var userPassword = String()
    var userFisrtname = String()
    var userLastName = String()
    var userBirthday = String()
    var userPictoID = String()
    var userBio = String()
    var uploadedImageURl = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // Profile Image view
        self.view.addSubview(self.profileImageView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.profileImageView.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 53, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 95, height: 95)
        }else{
            self.profileImageView.anchor(top: self.view.safeTopAnchor, left: nil, bottom: nil, right: nil, paddingTop: 65, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 95, height: 95)
        }
        self.profileImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.profileImageView.layer.cornerRadius = 47.5
        self.profileImageView.clipsToBounds = true
        
        //Name Lable
        self.view.addSubview(self.NameLable)
        self.NameLable.anchor(top: self.profileImageView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 24, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 24)
        
        // discription lable 1
        self.view.addSubview(self.DescriptionsLable1)
        self.DescriptionsLable1.anchor(top: self.NameLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 17, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 49)
        
        // discription lable 2
        self.view.addSubview(self.DescriptionsLable2)
        self.DescriptionsLable2.anchor(top: self.DescriptionsLable1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 17, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 61)
        
        // tutorial view
        self.view.addSubview(self.tutorialView)
        self.tutorialView.anchor(top: self.DescriptionsLable2.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 18, paddingLeft: 47, paddingBottom: 0, paddingRight: 47, width: 0, height: 59)
        self.tutorialView.layer.applySketchShadow()
        self.tutorialView.layer.cornerRadius = 14.0
        
        self.tutorialView.addSubview(self.tutorialImageView)
        self.tutorialImageView.anchor(top: nil, left: self.tutorialView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15.56, paddingBottom: 0, paddingRight: 0, width: 34.22, height: 34.22)
        self.tutorialImageView.centerYAnchor.constraint(equalTo: self.tutorialView.centerYAnchor).isActive = true
        
        self.tutorialView.addSubview(self.tutorialTitleLable)
        self.tutorialTitleLable.anchor(top: self.tutorialView.topAnchor, left: self.tutorialImageView.rightAnchor, bottom: nil, right: self.tutorialView.rightAnchor, paddingTop: 6, paddingLeft: 11, paddingBottom: 0, paddingRight: 13, width: 0, height: 17)
        
        self.tutorialView.addSubview(self.tutorialDescriptionLable)
        self.tutorialDescriptionLable.anchor(top: self.tutorialTitleLable.bottomAnchor, left: self.tutorialImageView.rightAnchor, bottom: self.tutorialView.bottomAnchor, right: self.tutorialView.rightAnchor, paddingTop: 0, paddingLeft: 11, paddingBottom: 4, paddingRight: 13, width: 0, height: 0)
        
        //Community view
        self.view.addSubview(self.CommunityView)
        self.CommunityView.anchor(top: self.tutorialView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 14, paddingLeft: 47, paddingBottom: 0, paddingRight: 47, width: 0, height: 59)
        self.CommunityView.layer.applySketchShadow()
        self.CommunityView.layer.cornerRadius = 14.0
        
        self.CommunityView.addSubview(self.CommunityImageView)
        self.CommunityImageView.anchor(top: nil, left: self.CommunityView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 18.6, paddingBottom: 0, paddingRight: 0, width: 28.42, height: 34.17)
        self.CommunityImageView.centerYAnchor.constraint(equalTo: self.CommunityView.centerYAnchor).isActive = true
        
        self.CommunityView.addSubview(self.CommunityTitleLable)
        self.CommunityTitleLable.anchor(top: self.CommunityView.topAnchor, left: self.CommunityImageView.rightAnchor, bottom: nil, right: self.CommunityView.rightAnchor, paddingTop: 6, paddingLeft: 13, paddingBottom: 0, paddingRight: 13, width: 0, height: 17)
        
        self.CommunityView.addSubview(self.CommunityDescriptionLable)
        self.CommunityDescriptionLable.anchor(top: self.CommunityTitleLable.bottomAnchor, left: self.CommunityImageView.rightAnchor, bottom: self.CommunityView.bottomAnchor, right: self.CommunityView.rightAnchor, paddingTop: 0, paddingLeft: 13, paddingBottom: 4, paddingRight: 13, width: 0, height: 0)
        
        //Community view
        self.view.addSubview(self.CEOMessageView)
        self.CEOMessageView.anchor(top: self.CommunityView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 14, paddingLeft: 47, paddingBottom: 0, paddingRight: 47, width: 0, height: 59)
        self.CEOMessageView.layer.applySketchShadow()
        self.CEOMessageView.layer.cornerRadius = 14.0
        
        self.CEOMessageView.addSubview(self.CEOMessageImageView)
        self.CEOMessageImageView.anchor(top: nil, left: self.CEOMessageView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 35, height: 35)
        self.CEOMessageImageView.centerYAnchor.constraint(equalTo: self.CEOMessageView.centerYAnchor).isActive = true
        
        self.CEOMessageView.addSubview(self.CEOMessageTitleLable)
        self.CEOMessageTitleLable.anchor(top: self.CEOMessageView.topAnchor, left: self.CEOMessageImageView.rightAnchor, bottom: nil, right: self.CEOMessageView.rightAnchor, paddingTop: 6, paddingLeft: 13, paddingBottom: 0, paddingRight: 13, width: 0, height: 17)
        
        self.CEOMessageView.addSubview(self.CEOMessageDescriptionLable)
        self.CEOMessageDescriptionLable.anchor(top: self.CEOMessageTitleLable.bottomAnchor, left: self.CEOMessageImageView.rightAnchor, bottom: self.CEOMessageView.bottomAnchor, right: self.CEOMessageView.rightAnchor, paddingTop: 0, paddingLeft: 13, paddingBottom: 4, paddingRight: 13, width: 0, height: 0)
        
        // Enter Pictopage view
        self.view.addSubview(self.enterPictoPageView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.enterPictoPageView.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 20, paddingRight: 0, width: 232, height: 49)
        }else{
            self.enterPictoPageView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 76, paddingRight: 0, width: 232, height: 49)
        }
        self.enterPictoPageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.enterPictoPageView.clipsToBounds = true
        
        self.enterPictoPageView.addSubview(self.enterPictoPageImageView)
        self.enterPictoPageImageView.anchor(top: self.enterPictoPageView.topAnchor, left: self.enterPictoPageView.leftAnchor, bottom: self.enterPictoPageView.bottomAnchor, right: self.enterPictoPageView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.enterPictoPageView.addSubview(self.enterPictoPageButton)
        self.enterPictoPageButton.anchor(top: self.enterPictoPageView.topAnchor, left: self.enterPictoPageView.leftAnchor, bottom: self.enterPictoPageView.bottomAnchor, right: self.enterPictoPageView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.enterPictoPageButton.addTarget(self, action: #selector(self.click_enter), for: .touchUpInside)
        
        self.setValue()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    // MARK:- set value
    
    func setValue(){
        
        self.NameLable.text = self.userFisrtname + " " + self.userLastName
//        self.pictoIDLable.text = self.userPictoID
//        self.bioLable.text = self.userBio
        
        let image = self.uploadedImageURl
        self.profileImageView.kf.indicatorType = .activity
        self.profileImageView.kf.setImage(with: URL(string: image))
        
    }

    // MARK:- Button Action
    
    @objc func click_enter(){
        print("click enter")
        let vc = MainVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
}
