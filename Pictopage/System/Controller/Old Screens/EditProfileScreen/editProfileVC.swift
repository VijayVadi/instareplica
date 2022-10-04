//
//  editProfileVC.swift
//  Pictopage
//
//  Created by Grewon on 28/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import Firebase
import SVProgressHUD
import FirebaseFirestore

class editProfileVC: UIViewController, UIGestureRecognizerDelegate {

    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headersubView: UIView = {
        let logov = UIView()
        return logov
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
    
    let pageTitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.text = "Edit your Profile"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.textColor = UIColor.black
        lbl.textAlignment = .center
        return lbl
    }()
    
    let editProfileMainView: UIView = {
        let v = UIView()
        return v
    }()
    
    let editProfileBackgroundImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "editProfileBackground")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let userProfilePictureView: UIView = {
        let v = UIView()
        return v
    }()
    
    let userProfileImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "userLogo1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFill
        return logoimg
    }()
    
    let userProfilePictureEditView: UIView = {
        let v = UIView()
        return v
    }()
    
    let userProfilePictureEditImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "edit")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let userProfilePictureEditButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let userNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Vijay Vadi"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let userNameEditView: UIView = {
        let v = UIView()
        return v
    }()
    
    let userNameEditImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "edit")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let userNameEditButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let balckDotviewOne: UIView = {
        let v = UIView()
        v.backgroundColor = .black
        v.clipsToBounds = true
        return v
    }()
    
    let userNameLable1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Username"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    let editUsernameView: UIView = {
        let log = UIView()
        return log
    }()
    
    let editUserNameButton: UIButton = {
        let btn = UIButton()
        btn.setTitleColor(.white, for: .normal)
        btn.setTitle("Edit", for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Thin", size: 9.0)!
        return btn
    }()

    let userName1EditView: UIView = {
        let v = UIView()
        return v
    }()
    
    let userName1EditImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "edit")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let userName1EditButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let userDataView: UIView = {
        let log = UIView()
        return log
    }()
    
    // bookmark view
    
    let bookmarkview: UIView = {
        let log = UIView()
        return log
    }()
    
    let bookmarklable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Bookmarked"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let bookmarkCountlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "10"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let bookmarkButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    // pageview
    
    let pageview: UIView = {
        let log = UIView()
        return log
    }()
    
    let pagelable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Pages"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageCountlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "2"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    // Added view
    
    let addedview: UIView = {
        let log = UIView()
        return log
    }()
    
    let addedlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Added"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let addedCountlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "8"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let addedButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let Descriptionlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Founder and CEO of Page inc."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionEditView: UIView = {
        let v = UIView()
        return v
    }()
    
    let DescriptionEditImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "edit")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()

    let DescriptionEditButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let saveButtonview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let saveButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Save", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return btn
    }()
    
    let changePasswordAndEmailView: UIView = {
        let v = UIView()
        return v
    }()
    
    let changePasswordAndEmailable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = UIColor(red: 102.0/255.0, green: 102.0/255.0, blue: 102.0/255.0, alpha: 1.0)
        lbl.text = "Your Email, Password, and Birthday can be changed in"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let settingLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Settings"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let tempTextfiled: UITextField = {
        let txt = UITextField()
        txt.autocorrectionType = .no
        return txt
    }()
    
    
    var editDataView = UIView()
    var editDataTextCountLable = UILabel()
    var editDataTextfield = UITextField()
    
    var editDataText = String()
    var editDataTag = Int()
    
    
    var userfullNameStr = String()
    var userNameStr = String()
    var userBioStr = String()
    var userPageCountStr = String()
    var userImageStr = String()
    
    var selectImage = UIImage()
    var uploadedImageURl = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.CreateEditDataView()

        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        self.view.backgroundColor = UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
        
        self.view.addSubview(self.tempTextfiled)
        self.tempTextfiled.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 110, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 50, height: 30)
        self.tempTextfiled.isHidden = true
        self.tempTextfiled.delegate = self
        self.tempTextfiled.inputAccessoryView = self.editDataView
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 80)
        
        self.headerView.addSubview(self.headersubView)
        self.headersubView.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
        
        self.headersubView.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: nil, left: self.headersubView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        self.backButtonView.centerYAnchor.constraint(equalTo: self.headersubView.centerYAnchor).isActive = true
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 22, height: 22)
        self.backButtonImageView.centerXAnchor.constraint(equalTo: self.backButtonView.centerXAnchor).isActive = true
        self.backButtonImageView.centerYAnchor.constraint(equalTo: self.backButtonView.centerYAnchor).isActive = true
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: self.backButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.headersubView.addSubview(self.pageTitleLabel)
        self.pageTitleLabel.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        self.pageTitleLabel.centerXAnchor.constraint(equalTo: self.headersubView.centerXAnchor).isActive = true
        self.pageTitleLabel.centerYAnchor.constraint(equalTo: self.headersubView.centerYAnchor).isActive = true
        
        
        // setup editProfile Main view
        
        self.view.addSubview(self.editProfileMainView)
        self.editProfileMainView.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 271, height: 249)
        self.editProfileMainView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.editProfileMainView.addSubview(self.editProfileBackgroundImageView)
        self.editProfileBackgroundImageView.anchor(top: self.editProfileMainView.topAnchor, left: self.editProfileMainView.leftAnchor, bottom: self.editProfileMainView.bottomAnchor, right: self.editProfileMainView.rightAnchor, paddingTop: -5, paddingLeft: -5, paddingBottom: -9, paddingRight: -5, width: 0, height: 0)
        
        // setup user profile picture view
        
        self.editProfileMainView.addSubview(self.userProfilePictureView)
        self.userProfilePictureView.anchor(top: self.editProfileMainView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 94, height: 89)
        self.userProfilePictureView.clipsToBounds = true
        self.userProfilePictureView.centerXAnchor.constraint(equalTo: self.editProfileMainView.centerXAnchor).isActive = true
        
        self.userProfilePictureView.addSubview(self.userProfileImageView)
        self.userProfileImageView.anchor(top: self.userProfilePictureView.topAnchor, left: self.userProfilePictureView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 89, height: 89)
        self.userProfileImageView.layer.cornerRadius = 44.5
        self.userProfileImageView.clipsToBounds = true
        
        self.userProfilePictureView.addSubview(self.userProfilePictureEditView)
        self.userProfilePictureEditView.anchor(top: nil, left: nil, bottom: self.userProfilePictureView.bottomAnchor, right: self.userProfilePictureView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 30, height: 30)
        self.userProfilePictureView.clipsToBounds = true
        
        self.userProfilePictureEditView.addSubview(self.userProfilePictureEditImage)
        self.userProfilePictureEditImage.anchor(top: nil, left: nil, bottom: self.userProfilePictureEditView.bottomAnchor, right: self.userProfilePictureEditView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        
        self.userProfilePictureEditView.addSubview(self.userProfilePictureEditButton)
        self.userProfilePictureEditButton.anchor(top: self.userProfilePictureEditView.topAnchor, left: self.userProfilePictureEditView.leftAnchor, bottom: self.userProfilePictureEditView.bottomAnchor, right: self.userProfilePictureEditView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userProfilePictureEditButton.addTarget(self, action: #selector(self.click_editProfilePicture), for: .touchUpInside)
        
        
        // setup firestname And lastname lable
        
        self.editProfileMainView.addSubview(self.userNameLable)
        self.userNameLable.anchor(top: self.userProfilePictureView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 7, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        self.userNameLable.centerXAnchor.constraint(equalTo: self.editProfileMainView.centerXAnchor).isActive = true
        
        self.editProfileMainView.addSubview(self.userNameEditView)
        self.userNameEditView.anchor(top: nil, left: self.userNameLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 30, height: 30)
        self.userNameEditView.clipsToBounds = true
        self.userNameEditView.centerYAnchor.constraint(equalTo: self.userNameLable.centerYAnchor).isActive = true
        
        self.userNameEditView.addSubview(self.userNameEditImage)
        self.userNameEditImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        self.userNameEditImage.centerYAnchor.constraint(equalTo: self.userNameEditView.centerYAnchor).isActive = true
        self.userNameEditImage.centerXAnchor.constraint(equalTo: self.userNameEditView.centerXAnchor).isActive = true
        
        self.userNameEditView.addSubview(self.userNameEditButton)
        self.userNameEditButton.anchor(top: self.userNameEditView.topAnchor, left: self.userNameEditView.leftAnchor, bottom: self.userNameEditView.bottomAnchor, right: self.userNameEditView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userNameEditButton.addTarget(self, action: #selector(self.click_editFullname), for: .touchUpInside)
        
        // Setup balck dot view
        
        self.editProfileMainView.addSubview(self.balckDotviewOne)
        self.balckDotviewOne.anchor(top: self.userNameLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 3, height: 3)
        self.balckDotviewOne.centerXAnchor.constraint(equalTo: self.editProfileMainView.centerXAnchor).isActive = true
        self.balckDotviewOne.layer.cornerRadius = 1.5
        
        // Setup username lable
        
        self.editProfileMainView.addSubview(self.userNameLable1)
        self.userNameLable1.anchor(top: self.userNameLable.bottomAnchor, left: nil, bottom: nil, right: self.balckDotviewOne.leftAnchor, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 16)
        
        // setup edit username view
        
        self.editProfileMainView.addSubview(self.editUsernameView)
        self.editUsernameView.anchor(top: self.userNameLable.bottomAnchor, left: self.balckDotviewOne.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 40, height: 15)
        self.editUsernameView.clipsToBounds = true
        self.editUsernameView.layer.cornerRadius = 5
        self.editUsernameView.backgroundColor = UIColor(red: 43.0/255.0, green: 97.0/255.0, blue: 238.0/255.0, alpha: 1.0)
        
        self.editUsernameView.addSubview(self.editUserNameButton)
        self.editUserNameButton.anchor(top: self.editUsernameView.topAnchor, left: self.editUsernameView.leftAnchor, bottom: self.editUsernameView.bottomAnchor, right: self.editUsernameView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.editUserNameButton.addTarget(self, action: #selector(self.click_editUserName), for: .touchUpInside)
        
        // setup edit username button
        
        self.editProfileMainView.addSubview(self.userName1EditView)
        self.userName1EditView.anchor(top: nil, left: nil, bottom: nil, right: self.userNameLable1.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 5, width: 30, height: 30)
        self.userName1EditView.clipsToBounds = true
        self.userName1EditView.centerYAnchor.constraint(equalTo: self.userNameLable1.centerYAnchor).isActive = true
        
        self.userName1EditView.addSubview(self.userName1EditImage)
        self.userName1EditImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        self.userName1EditImage.centerYAnchor.constraint(equalTo: self.userName1EditView.centerYAnchor).isActive = true
        self.userName1EditImage.centerXAnchor.constraint(equalTo: self.userName1EditView.centerXAnchor).isActive = true
        
        self.userName1EditView.addSubview(self.userName1EditButton)
        self.userName1EditButton.anchor(top: self.userName1EditView.topAnchor, left: self.userName1EditView.leftAnchor, bottom: self.userName1EditView.bottomAnchor, right: self.userName1EditView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userName1EditButton.addTarget(self, action: #selector(self.click_editUserName), for: .touchUpInside)
        
        // setup userdata view
        
        self.editProfileMainView.addSubview(self.userDataView)
        self.userDataView.anchor(top: nil, left: nil, bottom: self.editProfileMainView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 10, paddingRight: 0, width: 240, height: 40)
        self.userDataView.centerXAnchor.constraint(equalTo: self.editProfileMainView.centerXAnchor).isActive = true
        
            // Steup Bookmark
        
            self.userDataView.addSubview(self.bookmarkview)
            self.bookmarkview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 40)
            self.bookmarkview.centerXAnchor.constraint(equalTo: self.userDataView.centerXAnchor).isActive = true
            self.bookmarkview.centerYAnchor.constraint(equalTo: self.userDataView.centerYAnchor).isActive = true
        
            self.bookmarkview.addSubview(self.bookmarkCountlable)
            self.bookmarkCountlable.anchor(top: self.bookmarkview.topAnchor, left: self.bookmarkview.leftAnchor, bottom: nil, right: self.bookmarkview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
            self.bookmarkview.addSubview(self.bookmarklable)
            self.bookmarklable.anchor(top: self.bookmarkCountlable.bottomAnchor, left: self.bookmarkview.leftAnchor, bottom: nil, right: self.bookmarkview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
            self.bookmarkview.addSubview(self.bookmarkButton)
            self.bookmarkButton.anchor(top: self.bookmarkview.topAnchor, left: self.bookmarkview.leftAnchor, bottom: self.bookmarkview.bottomAnchor, right: self.bookmarkview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
            self.bookmarkButton.addTarget(self, action: #selector(self.click_bookmark), for: .touchUpInside)
        
        
            // Setup page
        
            self.userDataView.addSubview(self.pageview)
            self.pageview.anchor(top: nil, left: nil, bottom: nil, right: self.bookmarkview.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 40)
        
            self.pageview.addSubview(self.pageCountlable)
            self.pageCountlable.anchor(top: self.pageview.topAnchor, left: self.pageview.leftAnchor, bottom: nil, right: self.pageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
            self.pageview.addSubview(self.pagelable)
            self.pagelable.anchor(top: self.pageCountlable.bottomAnchor, left: self.pageview.leftAnchor, bottom: nil, right: self.pageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
            self.pageview.addSubview(self.pageButton)
            self.pageButton.anchor(top: self.pageview.topAnchor, left: self.pageview.leftAnchor, bottom: self.pageview.bottomAnchor, right: self.pageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
            self.pageButton.addTarget(self, action: #selector(self.click_pages), for: .touchUpInside)
        
            // Setup page
        
            self.userDataView.addSubview(self.addedview)
            self.addedview.anchor(top: nil, left: self.bookmarkview.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 40)
        
            self.addedview.addSubview(self.addedCountlable)
            self.addedCountlable.anchor(top: self.addedview.topAnchor, left: self.addedview.leftAnchor, bottom: nil, right: self.addedview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
            self.addedview.addSubview(self.addedlable)
            self.addedlable.anchor(top: self.addedCountlable.bottomAnchor, left: self.addedview.leftAnchor, bottom: nil, right: self.addedview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
            self.addedview.addSubview(self.addedButton)
            self.addedButton.anchor(top: self.addedview.topAnchor, left: self.addedview.leftAnchor, bottom: self.addedview.bottomAnchor, right: self.addedview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
            self.addedButton.addTarget(self, action: #selector(self.click_added), for: .touchUpInside)
        
        // setup description label
        
        self.editProfileMainView.addSubview(self.Descriptionlable)
        self.Descriptionlable.anchor(top: self.userNameLable1.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.Descriptionlable.centerXAnchor.constraint(equalTo: self.editProfileMainView.centerXAnchor).isActive = true
        
        self.editProfileMainView.addSubview(self.DescriptionEditView)
        self.DescriptionEditView.anchor(top: nil, left: self.Descriptionlable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 25, height: 25)
        self.DescriptionEditView.clipsToBounds = true
        self.DescriptionEditView.centerYAnchor.constraint(equalTo: self.Descriptionlable.centerYAnchor).isActive = true
        
        self.DescriptionEditView.addSubview(self.DescriptionEditImage)
        self.DescriptionEditImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        self.DescriptionEditImage.centerYAnchor.constraint(equalTo: self.DescriptionEditView.centerYAnchor).isActive = true
        self.DescriptionEditImage.centerXAnchor.constraint(equalTo: self.DescriptionEditView.centerXAnchor).isActive = true

        self.DescriptionEditView.addSubview(self.DescriptionEditButton)
        self.DescriptionEditButton.anchor(top: self.DescriptionEditView.topAnchor, left: self.DescriptionEditView.leftAnchor, bottom: self.DescriptionEditView.bottomAnchor, right: self.DescriptionEditView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.DescriptionEditButton.addTarget(self, action: #selector(self.click_editBio), for: .touchUpInside)
        
        // Save button view
        
        self.view.addSubview(self.saveButtonview)
        self.saveButtonview.anchor(top: self.editProfileMainView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 113, height: 44)
        self.saveButtonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.saveButtonview.addSubview(self.saveButton)
        self.saveButton.anchor(top: self.saveButtonview.topAnchor, left: self.saveButtonview.leftAnchor, bottom: self.saveButtonview.bottomAnchor, right: self.saveButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.saveButton.backgroundColor = black1a
        self.saveButton.layer.cornerRadius = 22
        self.saveButton.addTarget(self, action: #selector(self.click_save), for: .touchUpInside)
        
        self.view.addSubview(self.changePasswordAndEmailView)
        self.changePasswordAndEmailView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 32, paddingBottom: 17, paddingRight: 32, width: 0, height: 32)
        
        self.changePasswordAndEmailView.addSubview(self.changePasswordAndEmailable)
        self.changePasswordAndEmailable.anchor(top: self.changePasswordAndEmailView.topAnchor, left: self.changePasswordAndEmailView.leftAnchor, bottom: nil, right: self.changePasswordAndEmailView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        
        self.changePasswordAndEmailView.addSubview(self.settingLable)
        self.settingLable.anchor(top: nil, left: self.changePasswordAndEmailView.leftAnchor, bottom: self.changePasswordAndEmailView.bottomAnchor, right: self.changePasswordAndEmailView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        
        let settingLabletap = UITapGestureRecognizer(target: self, action: #selector(self.tapFunction))
        settingLable.isUserInteractionEnabled = true
        settingLable.addGestureRecognizer(settingLabletap)
        
        
        NotificationCenter.default.addObserver(self,selector: #selector(keyboardWillShow),name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        IQKeyboardManager.shared.enable = false
        
        self.setValue()
    }
    
    
    // MARK:- Custom Function
    
    func setValue(){
        
        self.userNameLable.text = self.userfullNameStr
        self.userNameLable1.text = self.userNameStr
        self.Descriptionlable.text = self.userBioStr
        
        let image = self.userImageStr
        self.userProfileImageView.kf.indicatorType = .activity
        self.userProfileImageView.kf.setImage(with: URL(string: image))
        
        self.selectImage = self.userProfileImageView.image!
        
        self.pageCountlable.text = self.userPageCountStr
        
    }
    
    // MARK:- Create EditName view
    
    func CreateEditDataView()
    {
        self.editDataView.frame = CGRect(x: 0, y: self.view.frame.size.height + 44, width: self.view.frame.size.width, height: 44.0)
        self.editDataView.backgroundColor = .white
        
        let v_next = UIView(frame: CGRect(x: self.editDataView.frame.size.width - 69, y: 8, width: 67, height: 28))
        
        let nextBtn = UIButton(frame: CGRect(x: 0, y: 0, width: v_next.frame.size.width, height: v_next.frame.size.height))
        nextBtn.setTitle("Save", for: .normal)
        nextBtn.setTitleColor(UIColor.white, for: .normal)
        nextBtn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        nextBtn.layer.cornerRadius = 14.0
        nextBtn.addTarget(self, action: #selector(self.click_save), for: .touchUpInside)
        nextBtn.backgroundColor = black1a
        v_next.addSubview(nextBtn)
        self.editDataView.addSubview(v_next)
        
        self.editDataTextCountLable = UILabel(frame: CGRect(x: v_next.frame.origin.x - 22, y: 12, width: 18, height: 20))
        self.editDataTextCountLable.text = "\(self.editDataText.count)"
        self.editDataTextCountLable.textAlignment = .center
        self.editDataTextCountLable.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        self.editDataTextCountLable.textColor = UIColor(red: 78.0/255.0, green: 78.0/255.0, blue: 78.0/255.0, alpha: 1.0)
        self.editDataView.addSubview(self.editDataTextCountLable)
        
        let textview = UIView(frame: CGRect(x: 9, y: 4, width: self.editDataTextCountLable.frame.origin.x - 2 - 9, height: 36))
        textview.layer.borderColor = UIColor.black.cgColor
        textview.layer.borderWidth = 1.0
        textview.layer.cornerRadius = 18.0
        
        self.editDataTextfield = UITextField(frame: CGRect(x: 15, y: 0, width: textview.frame.size.width - 15, height: textview.frame.size.height))
        self.editDataTextfield.text = self.editDataText
        self.editDataTextfield.textColor = UIColor(red: 78.0/255.0, green: 78.0/255.0, blue: 78.0/255.0, alpha: 1.0)
        self.editDataTextfield.borderStyle = UITextField.BorderStyle.none
        self.editDataTextfield.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        self.editDataTextfield.autocorrectionType = .no
        self.editDataTextfield.textAlignment = .left
        self.editDataTextfield.addTarget(self, action: #selector(handleTextInputChangeName), for: .editingChanged)
        self.editDataTextfield.delegate = self
        textview.addSubview(self.editDataTextfield)
        
        self.editDataView.addSubview(textview)
        self.editDataView.clipsToBounds = true
    }

    // MARK:- keyBorad Hide/show Method
    
    @objc func keyboardWillShow(_ notification: Notification) {
        self.editDataTextfield.becomeFirstResponder()
    }
    
    @objc
    func keyboardWillHide(_ notification: NSNotification) {
        
    }
    
    
    // MARK:- Button Action
    
    @objc func tapFunction(sender:UITapGestureRecognizer) {
        let vc = settingVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_editProfilePicture()
    {
        print("click edit profile picture")
        
        ImagePicker().pickImage(self){ image in
            
            self.selectImage = image
            self.userProfileImageView.image = image
        }
    }
    
    @objc func click_editBio(){
        self.editDataTextfield.text = self.Descriptionlable.text!
        self.editDataTextCountLable.text = "\(self.Descriptionlable.text!.count)"
        self.editDataTag = 3
        self.tempTextfiled.becomeFirstResponder()
    }
    
    @objc func click_editFullname(){
        self.editDataTextfield.text = self.userNameLable.text!
        self.editDataTextCountLable.text = "\(self.userNameLable.text!.count)"
        self.editDataTag = 1
        self.tempTextfiled.becomeFirstResponder()
    }
    
    @objc func click_editUserName(){
        print("click add user name")
        
        self.editDataTextfield.text = self.userNameLable1.text!
        self.editDataTextCountLable.text = "\(self.userNameLable1.text!.count)"
        self.editDataTag = 2
        self.tempTextfiled.becomeFirstResponder()
    }
    
    @objc func click_bookmark()
    {
        print("click bookmark")
    }
    
    @objc func click_pages()
    {
        print("click pages")
    }
    
    @objc func click_added()
    {
        print("click added")
    }
    
    @objc func click_save()
    {
        print("click save")
        
        if self.editDataTag == 1{
            self.editDataTag = 0
            self.editDataTextfield.resignFirstResponder()
            self.tempTextfiled.becomeFirstResponder()
            self.userNameLable.text = self.editDataTextfield.text!
        }else if self.editDataTag == 2{
            self.editDataTag = 0
            self.editDataTextfield.resignFirstResponder()
            self.tempTextfiled.becomeFirstResponder()
            self.userNameLable1.text = self.editDataTextfield.text!
        }else if self.editDataTag == 3{
            self.editDataTag = 0
            self.editDataTextfield.resignFirstResponder()
            self.tempTextfiled.becomeFirstResponder()
            self.Descriptionlable.text = self.editDataTextfield.text!
        }
        
        self.view.endEditing(true)
        
        self.uploadUserProfileImage()
    }

}

extension editProfileVC: UITextFieldDelegate{
    
    
    // MARK:- Textfield Text Change Method
    
    @objc func handleTextInputChangeName() {
        
        self.editDataTextCountLable.text = "\(self.editDataTextfield.text!.count)"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.editDataTextfield.resignFirstResponder()
        self.tempTextfiled.becomeFirstResponder()
        self.tempTextfiled.resignFirstResponder()
        
        if self.editDataTag == 1{
            self.editDataTag = 0
            self.userNameLable.text = self.editDataTextfield.text!
        }else if self.editDataTag == 2{
            self.editDataTag = 0
            self.userNameLable1.text = self.editDataTextfield.text!
        }else if self.editDataTag == 3{
            self.editDataTag = 0
            self.Descriptionlable.text = self.editDataTextfield.text!
        }
        
        return true
    }
}


// MARK:- Update User Data

extension editProfileVC{
    
    func uploadUserProfileImage(){
        
        
        let image = self.selectImage
        guard let uploadData = image.jpegData(compressionQuality: 0.5) else { return }
        
        SVProgressHUD.show()
        let filename = NSUUID().uuidString
        let deviceID = UIDevice.current.identifierForVendor!.uuidString
        print(deviceID)
        
        let storageRef = Storage.storage().reference().child("pages").child(deviceID).child("userProfileImage").child(filename)
        storageRef.putData(uploadData, metadata: nil) { (metadata, err) in
            
            if let err = err {
                self.navigationItem.rightBarButtonItem?.isEnabled = true
                SVProgressHUD.dismiss()
                self.saveButton.isEnabled = true
                print("Failed to upload post image:", err)
                return
            }
            
            storageRef.downloadURL(completion: { (downloadURL, err) in
                if let err = err {
                    SVProgressHUD.dismiss()
                    self.saveButton.isEnabled = true
                    print("Failed to retrieve downloadURL:", err)
                    return
                }
                
                guard let imageUrl = downloadURL?.absoluteString else { return }
                SVProgressHUD.dismiss()
                print("Successfully uploaded post image:", imageUrl)
                self.uploadedImageURl = imageUrl
                self.updateUserData()
            })
        }
        
    }
    
    func updateUserData(){
        
        let db = Firestore.firestore()
        
        let washingtonRef = db.collection("users").document(Auth.auth().currentUser!.uid)
        
        washingtonRef.updateData([
            "Bio": self.Descriptionlable.text!,
            "ProfilePicture": self.uploadedImageURl,
            "FullName": self.userNameLable.text!
        ]) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
                
                FirebaseClient.sharedInstance.updateUserDataInPagesTable(userFullName: self.userNameLable.text!, userProfilePicture: self.uploadedImageURl) { (_) in
                    FirebaseClient.sharedInstance.updateUserDataInPostsTable(userFullName: self.userNameLable.text!, userProfilePicture: self.uploadedImageURl) { (isUpdate) in
                        if isUpdate{
                            self.navigationController?.popViewController(animated: true)
                        }
                    }
                }
            }
        }
        
    }
    
}
