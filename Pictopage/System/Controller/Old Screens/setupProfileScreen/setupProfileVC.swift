//
//  setupProfileVC.swift
//  Pictopage
//
//  Created by Grewon on 16/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class setupProfileVC: UIViewController {

    
    
    let userProfileView: UIView = {
        let log = UIView()
        return log
    }()
    
    let userBackgroundImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "userBackgroundRectangle")
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        return backimage
    }()
    
    let userImageView: UIView = {
        let log = UIView()
        return log
    }()
    
    let userImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "userLogo1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let userImagEditView: UIView = {
        let log = UIView()
        return log
    }()
    
    let userImagEdit: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "edit")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let editUserImageButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let viewMore: UIView = {
        let log = UIView()
        return log
    }()
    
    let viewMoreImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "Group1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let viewMoreButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let userNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "First Last"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let viewEditUsername: UIView = {
        let log = UIView()
        return log
    }()
    
    let editusernameImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "edit")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let edituserNameButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let dotview: UIView = {
        let log = UIView()
        log.backgroundColor = .black
        return log
    }()
    
    let usernameLable2: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Username"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let username2EditButton: UIButton = {
        let btn = UIButton()
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = blue
        btn.setTitle("edit", for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Thin", size: 12.0)!
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
    
    let bookmarkCountview: UIView = {
        let log = UIView()
        return log
    }()
    
    let bookmarkQuestionview: UIView = {
        let log = UIView()
        return log
    }()
    
    let bookmarkQuestionImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "question")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let bookmarkQuestionButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let bookmarkCountlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "10"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
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
    
    let pageCountview: UIView = {
        let log = UIView()
        return log
    }()
    
    let pageQuestionview: UIView = {
        let log = UIView()
        return log
    }()
    
    let pageQuestionImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "question")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let pageQuestionButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
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
    
    // Addedview
    
    let Addedview: UIView = {
        let log = UIView()
        return log
    }()
    
    let Addedlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Added"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let AddedCountview: UIView = {
        let log = UIView()
        return log
    }()
    
    let AddedQuestionview: UIView = {
        let log = UIView()
        return log
    }()
    
    let AddedQuestionImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "question")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let AddedQuestionButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let AddedCountlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "8"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // DescriptionVIew
    
    let Descriptionview: UIView = {
        let log = UIView()
        return log
    }()
    
    let Descriptionlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Description"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionQuestionview: UIView = {
        let log = UIView()
        return log
    }()
    
    let DescriptionQuestionImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "question")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let DescriptionQuestionButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let DescriptionEditview: UIView = {
        let log = UIView()
        return log
    }()
    
    let DescriptionEditImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "edit")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let DescriptionEditButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    // pageQuestionDetails
    
    let pagesQuestionDeatils: UIView = {
        let log = UIView()
        return log
    }()
    
    let pagesQuestionDeatilsImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "DetilsRectangle")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
    let pagesQuestionDeatilsCloseButtonView: UIView = {
        let log = UIView()
        return log
    }()
    
    let pagesQuestionDeatilsCloseImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "close")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let pagesQuestionDeatilsCloseButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let pagesQuestionDeatilsTitleImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let PageQuestionDescriptionlable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // Bottom Button view
    
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
    
    let ContinueButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.view.addSubview(self.userProfileView)
        self.userProfileView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 291)
        
        self.userProfileView.addSubview(self.userBackgroundImage)
        self.userBackgroundImage.anchor(top: self.userProfileView.topAnchor, left: self.userProfileView.leftAnchor, bottom: self.userProfileView.bottomAnchor, right: self.userProfileView.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.userProfileView.addSubview(self.userImageView)
        self.userImageView.anchor(top: self.userProfileView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
        self.userImageView.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        
        self.userImageView.addSubview(self.userImage)
        self.userImage.anchor(top: self.userImageView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
        self.userImage.centerXAnchor.constraint(equalTo: self.userImageView.centerXAnchor).isActive = true
        self.userImage.layer.cornerRadius = 50.0
        
        self.userImageView.addSubview(self.userImagEditView)
        self.userImagEditView.anchor(top: nil, left: nil, bottom: self.userImageView.bottomAnchor, right: self.userImageView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        
        self.userImagEditView.addSubview(self.userImagEdit)
        self.userImagEdit.anchor(top: self.userImagEditView.topAnchor, left: self.userImagEditView.leftAnchor, bottom: self.userImagEditView.bottomAnchor, right: self.userImagEditView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.userImagEditView.addSubview(self.editUserImageButton)
        self.editUserImageButton.anchor(top: self.userImagEditView.topAnchor, left: self.userImagEditView.leftAnchor, bottom: self.userImagEditView.bottomAnchor, right: self.userImagEditView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.editUserImageButton.addTarget(self, action: #selector(self.clickEditUserImage), for: .touchUpInside)
        
        self.userProfileView.addSubview(self.userNameLable)
        self.userNameLable.anchor(top: self.userImageView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
        self.userNameLable.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        
        self.userProfileView.addSubview(self.viewEditUsername)
        self.viewEditUsername.anchor(top: nil, left: self.userNameLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 24, height: 24)
        self.viewEditUsername.centerYAnchor.constraint(equalTo: self.userNameLable.centerYAnchor).isActive = true
        
        self.viewEditUsername.addSubview(self.editusernameImage)
        self.editusernameImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 18, height: 18)
        self.editusernameImage.centerYAnchor.constraint(equalTo: self.viewEditUsername.centerYAnchor).isActive = true
        self.editusernameImage.centerXAnchor.constraint(equalTo: self.viewEditUsername.centerXAnchor).isActive = true
        
        self.viewEditUsername.addSubview(self.edituserNameButton)
        self.edituserNameButton.anchor(top: self.viewEditUsername.topAnchor, left: self.viewEditUsername.leftAnchor, bottom: self.viewEditUsername.bottomAnchor, right: self.viewEditUsername.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.edituserNameButton.addTarget(self, action: #selector(self.clickEditUserName), for: .touchUpInside)
        
        self.userProfileView.addSubview(self.dotview)
        self.dotview.anchor(top: self.userNameLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 3, height: 3)
        self.dotview.layer.cornerRadius = 1.5
        self.dotview.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        
        self.userProfileView.addSubview(self.usernameLable2)
        self.usernameLable2.anchor(top: self.viewEditUsername.bottomAnchor, left: nil, bottom: nil, right: self.dotview.leftAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 20)
        
        self.userProfileView.addSubview(self.username2EditButton)
        self.username2EditButton.anchor(top: self.viewEditUsername.bottomAnchor, left: self.dotview.rightAnchor, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 50, height: 18)
        self.username2EditButton.layer.cornerRadius = 9.0
        self.username2EditButton.addTarget(self, action: #selector(self.clickEditUserName2), for: .touchUpInside)
        
        self.userProfileView.addSubview(self.userDataView)
        self.userDataView.anchor(top: self.username2EditButton.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 253, height: 82)
        self.userDataView.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        
        self.userProfileView.addSubview(self.userDataView)
        self.userDataView.anchor(top: self.username2EditButton.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 253, height: 82)
        self.userDataView.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        
        // Steup Bookmark
        
        self.userDataView.addSubview(self.bookmarkview)
        self.bookmarkview.anchor(top: nil, left: nil, bottom: self.userDataView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 84, height: 45)
        self.bookmarkview.centerXAnchor.constraint(equalTo: self.userDataView.centerXAnchor).isActive = true
        
        self.bookmarkview.addSubview(self.bookmarklable)
        self.bookmarklable.anchor(top: nil, left: self.bookmarkview.leftAnchor, bottom: self.bookmarkview.bottomAnchor, right: self.bookmarkview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
        self.bookmarkview.addSubview(self.bookmarkCountview)
        self.bookmarkCountview.anchor(top: self.bookmarkview.topAnchor, left: self.bookmarkview.leftAnchor, bottom: self.bookmarklable.topAnchor, right: self.bookmarkview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.bookmarkCountview.addSubview(self.bookmarkCountlable)
        self.bookmarkCountlable.anchor(top: self.bookmarkCountview.topAnchor, left: nil, bottom: self.bookmarkCountview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.bookmarkCountlable.centerXAnchor.constraint(equalTo: self.bookmarkCountview.centerXAnchor).isActive = true
        
        self.bookmarkCountview.addSubview(self.bookmarkQuestionview)
        self.bookmarkQuestionview.anchor(top: self.bookmarkCountview.topAnchor, left: self.bookmarkCountlable.rightAnchor, bottom: self.bookmarkCountview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 25, height: 0)
        self.bookmarkQuestionview.centerYAnchor.constraint(equalTo: self.bookmarkCountview.centerYAnchor).isActive = true
        
        self.bookmarkQuestionview.addSubview(self.bookmarkQuestionImage)
        self.bookmarkQuestionImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 15, height: 15)
        self.bookmarkQuestionImage.centerXAnchor.constraint(equalTo: self.bookmarkQuestionview.centerXAnchor).isActive = true
        self.bookmarkQuestionImage.centerYAnchor.constraint(equalTo: self.bookmarkQuestionview.centerYAnchor).isActive = true
        
        self.bookmarkQuestionview.addSubview(self.bookmarkQuestionButton)
        self.bookmarkQuestionButton.anchor(top: self.bookmarkQuestionview.topAnchor, left: self.bookmarkQuestionview.leftAnchor, bottom: self.bookmarkQuestionview.bottomAnchor, right: self.bookmarkQuestionview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.bookmarkQuestionButton.addTarget(self, action: #selector(self.clickBookeMarkQuestion), for: .touchUpInside)
        
        // Setup page
        
        self.userDataView.addSubview(self.pageview)
        self.pageview.anchor(top: nil, left: self.userDataView.leftAnchor, bottom: self.userDataView.bottomAnchor, right: self.bookmarkview.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 45)
        
        self.pageview.addSubview(self.pagelable)
        self.pagelable.anchor(top: nil, left: self.pageview.leftAnchor, bottom: self.pageview.bottomAnchor, right: self.pageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
        self.pageview.addSubview(self.pageCountview)
        self.pageCountview.anchor(top: self.pageview.topAnchor, left: self.pageview.leftAnchor, bottom: self.pagelable.topAnchor, right: self.pageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.pageCountview.addSubview(self.pageCountlable)
        self.pageCountlable.anchor(top: self.pageCountview.topAnchor, left: nil, bottom: self.pageCountview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.pageCountlable.centerXAnchor.constraint(equalTo: self.pageCountview.centerXAnchor).isActive = true
        
        self.pageCountview.addSubview(self.pageQuestionview)
        self.pageQuestionview.anchor(top: self.pageCountview.topAnchor, left: self.pageCountlable.rightAnchor, bottom: self.pageCountview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 25, height: 0)
        self.pageQuestionview.centerYAnchor.constraint(equalTo: self.pageCountview.centerYAnchor).isActive = true
        
        self.pageQuestionview.addSubview(self.pageQuestionImage)
        self.pageQuestionImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 15, height: 15)
        self.pageQuestionImage.centerXAnchor.constraint(equalTo: self.pageQuestionview.centerXAnchor).isActive = true
        self.pageQuestionImage.centerYAnchor.constraint(equalTo: self.pageQuestionview.centerYAnchor).isActive = true
        
        self.pageQuestionview.addSubview(self.pageQuestionButton)
        self.pageQuestionButton.anchor(top: self.pageQuestionview.topAnchor, left: self.pageQuestionview.leftAnchor, bottom: self.pageQuestionview.bottomAnchor, right: self.pageQuestionview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.pageQuestionButton.addTarget(self, action: #selector(self.clickPageQuestion), for: .touchUpInside)
        
        // Setup Added view
        
        self.userDataView.addSubview(self.Addedview)
        self.Addedview.anchor(top: nil, left: self.bookmarkview.rightAnchor, bottom: self.userDataView.bottomAnchor, right: self.userDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 45)
        
        self.Addedview.addSubview(self.Addedlable)
        self.Addedlable.anchor(top: nil, left: self.Addedview.leftAnchor, bottom: self.Addedview.bottomAnchor, right: self.Addedview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
        self.Addedview.addSubview(self.AddedCountview)
        self.AddedCountview.anchor(top: self.Addedview.topAnchor, left: self.Addedview.leftAnchor, bottom: self.Addedlable.topAnchor, right: self.Addedview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        self.AddedCountview.addSubview(self.AddedCountlable)
        self.AddedCountlable.anchor(top: self.AddedCountview.topAnchor, left: nil, bottom: self.AddedCountview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.AddedCountlable.centerXAnchor.constraint(equalTo: self.AddedCountview.centerXAnchor).isActive = true
        
        self.AddedCountview.addSubview(self.AddedQuestionview)
        self.AddedQuestionview.anchor(top: self.AddedCountview.topAnchor, left: self.AddedCountlable.rightAnchor, bottom: self.AddedCountview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 25, height: 0)
        self.AddedQuestionview.centerYAnchor.constraint(equalTo: self.AddedCountview.centerYAnchor).isActive = true
        
        self.AddedQuestionview.addSubview(self.AddedQuestionImage)
        self.AddedQuestionImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 15, height: 15)
        self.AddedQuestionImage.centerXAnchor.constraint(equalTo: self.AddedQuestionview.centerXAnchor).isActive = true
        self.AddedQuestionImage.centerYAnchor.constraint(equalTo: self.AddedQuestionview.centerYAnchor).isActive = true
        
        self.AddedQuestionview.addSubview(self.AddedQuestionButton)
        self.AddedQuestionButton.anchor(top: self.AddedQuestionview.topAnchor, left: self.AddedQuestionview.leftAnchor, bottom: self.AddedQuestionview.bottomAnchor, right: self.AddedQuestionview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.AddedQuestionButton.addTarget(self, action: #selector(self.clickAddedQuestion), for: .touchUpInside)
        
        
        // Setup Description view
        
        self.userDataView.addSubview(self.Descriptionview)
        self.Descriptionview.anchor(top: self.userDataView.topAnchor, left: self.userDataView.leftAnchor, bottom: self.bookmarkview.topAnchor, right: self.userDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.Descriptionview.addSubview(self.Descriptionlable)
        self.Descriptionlable.anchor(top: self.Descriptionview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        self.Descriptionlable.centerXAnchor.constraint(equalTo: self.Descriptionview.centerXAnchor).isActive = true
        
        self.Descriptionview.addSubview(self.DescriptionQuestionview)
        self.DescriptionQuestionview.anchor(top: self.Descriptionview.topAnchor, left: nil, bottom: nil, right: self.Descriptionlable.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 5, width: 20, height: 20)
        
        self.DescriptionQuestionview.addSubview(self.DescriptionQuestionImage)
        self.DescriptionQuestionImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 15, height: 15)
        self.DescriptionQuestionImage.centerXAnchor.constraint(equalTo: self.DescriptionQuestionview.centerXAnchor).isActive = true
        self.DescriptionQuestionImage.centerYAnchor.constraint(equalTo: self.DescriptionQuestionview.centerYAnchor).isActive = true
        
        self.DescriptionQuestionview.addSubview(self.DescriptionQuestionButton)
        self.DescriptionQuestionButton.anchor(top: self.DescriptionQuestionview.topAnchor, left: self.DescriptionQuestionview.leftAnchor, bottom: self.DescriptionQuestionview.bottomAnchor, right: self.DescriptionQuestionview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.DescriptionQuestionButton.addTarget(self, action: #selector(self.clickDescriptionQuestion), for: .touchUpInside)
        
        self.Descriptionview.addSubview(self.DescriptionEditview)
        self.DescriptionEditview.anchor(top: self.Descriptionview.topAnchor, left: self.Descriptionlable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        
        self.DescriptionEditview.addSubview(self.DescriptionEditImage)
        self.DescriptionEditImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 15, height: 15)
        self.DescriptionEditImage.centerXAnchor.constraint(equalTo: self.DescriptionEditview.centerXAnchor).isActive = true
        self.DescriptionEditImage.centerYAnchor.constraint(equalTo: self.DescriptionEditview.centerYAnchor).isActive = true
        
        self.DescriptionEditview.addSubview(self.DescriptionEditButton)
        self.DescriptionEditButton.anchor(top: self.DescriptionEditview.topAnchor, left: self.DescriptionEditview.leftAnchor, bottom: self.DescriptionEditview.bottomAnchor, right: self.DescriptionEditview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.DescriptionEditButton.addTarget(self, action: #selector(self.clickDescriptionEdit), for: .touchUpInside)
        
        // setup more view
        
        self.userProfileView.addSubview(self.viewMore)
        self.viewMore.anchor(top: self.userProfileView.topAnchor, left: nil, bottom: nil, right: self.userProfileView.rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 20, width: 30, height: 30)
        
        self.viewMore.addSubview(self.viewMoreImage)
        self.viewMoreImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        self.viewMoreImage.centerXAnchor.constraint(equalTo: self.viewMore.centerXAnchor).isActive = true
        self.viewMoreImage.centerYAnchor.constraint(equalTo: self.viewMore.centerYAnchor).isActive = true
        
        self.viewMore.addSubview(self.viewMoreButton)
        self.viewMoreButton.anchor(top: self.viewMore.topAnchor, left: self.viewMore.leftAnchor, bottom: self.viewMore.bottomAnchor, right: self.viewMore.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.viewMoreButton.addTarget(self, action: #selector(self.clickMore), for: .touchUpInside)
        
        // Bottom Button
        
        self.view.addSubview(self.buttonview)
        self.buttonview.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 66, paddingRight: 0, width: 296, height: 44)
        self.buttonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.buttonview.layer.cornerRadius = 22.0
        
        self.buttonview.addSubview(self.divideImageview)
        self.divideImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 25, height: 25)
        self.divideImageview.centerXAnchor.constraint(equalTo: self.buttonview.centerXAnchor).isActive = true
        self.divideImageview.centerYAnchor.constraint(equalTo: self.buttonview.centerYAnchor).isActive = true
        
        self.buttonview.addSubview(self.skipButton)
        self.skipButton.anchor(top: self.buttonview.topAnchor, left: self.buttonview.leftAnchor, bottom: self.buttonview.bottomAnchor, right: self.divideImageview.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.skipButton.addTarget(self, action: #selector(self.clickSkip), for: .touchUpInside)
        
        self.buttonview.addSubview(self.ContinueButton)
        self.ContinueButton.anchor(top: self.buttonview.topAnchor, left: self.divideImageview.rightAnchor, bottom: self.buttonview.bottomAnchor, right: self.buttonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.ContinueButton.addTarget(self, action: #selector(self.clickContinue), for: .touchUpInside)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
    

    // MARK:- setup Deatils View RunTime
    
    func setupDetailsView(Mainviewtop: CGFloat, Mainviewheight: CGFloat, Mainviewwidth: CGFloat, ImageName: String, descriptionText: String)
    {
        self.view.addSubview(self.pagesQuestionDeatils)
        self.pagesQuestionDeatils.anchor(top: self.userProfileView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: Mainviewtop, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: Mainviewwidth, height: Mainviewheight)
        self.pagesQuestionDeatils.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.pagesQuestionDeatils.addSubview(self.pagesQuestionDeatilsImage)
        self.pagesQuestionDeatilsImage.anchor(top: self.pagesQuestionDeatils.topAnchor, left: self.pagesQuestionDeatils.leftAnchor, bottom: self.pagesQuestionDeatils.bottomAnchor, right: self.pagesQuestionDeatils.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.pagesQuestionDeatilsImage.image = UIImage(named: ImageName)
        
//        self.pagesQuestionDeatils.addSubview(self.pagesQuestionDeatilsTitleImage)
//        self.pagesQuestionDeatilsTitleImage.anchor(top: self.pagesQuestionDeatils.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 103, height: 37)
//        self.pagesQuestionDeatilsTitleImage.centerXAnchor.constraint(equalTo: self.pagesQuestionDeatils.centerXAnchor).isActive = true
//        self.pagesQuestionDeatilsTitleImage.image = UIImage(named: ImageName)
        
        self.pagesQuestionDeatils.addSubview(self.pagesQuestionDeatilsCloseButtonView)
        self.pagesQuestionDeatilsCloseButtonView.anchor(top: self.pagesQuestionDeatils.topAnchor, left: nil, bottom: nil, right: self.pagesQuestionDeatils.rightAnchor, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 16, width: 30, height: 30)
        
        self.pagesQuestionDeatilsCloseButtonView.addSubview(self.pagesQuestionDeatilsCloseImage)
        self.pagesQuestionDeatilsCloseImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 18, height: 18)
        self.pagesQuestionDeatilsCloseImage.centerXAnchor.constraint(equalTo: self.pagesQuestionDeatilsCloseButtonView.centerXAnchor).isActive = true
        self.pagesQuestionDeatilsCloseImage.centerYAnchor.constraint(equalTo: self.pagesQuestionDeatilsCloseButtonView.centerYAnchor).isActive = true
        
        self.pagesQuestionDeatilsCloseButtonView.addSubview(self.pagesQuestionDeatilsCloseButton)
        self.pagesQuestionDeatilsCloseButton.anchor(top: self.pagesQuestionDeatilsCloseButtonView.topAnchor, left: self.pagesQuestionDeatilsCloseButtonView.leftAnchor, bottom: self.pagesQuestionDeatilsCloseButtonView.bottomAnchor, right: self.pagesQuestionDeatilsCloseButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.pagesQuestionDeatilsCloseButton.addTarget(self, action: #selector(self.clickClose), for: .touchUpInside)
        
//        self.pagesQuestionDeatils.addSubview(self.PageQuestionDescriptionlable)
//        self.PageQuestionDescriptionlable.anchor(top: self.pagesQuestionDeatilsTitleImage.bottomAnchor, left: self.pagesQuestionDeatils.leftAnchor, bottom: self.pagesQuestionDeatils.bottomAnchor, right: self.pagesQuestionDeatils.rightAnchor, paddingTop: 4, paddingLeft: 20, paddingBottom: 12, paddingRight: 13, width: 0, height: 0)
//        self.PageQuestionDescriptionlable.text = descriptionText
    }
    
    
    // MARK:- change statusBar color
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .default
    }

    
    // MARK:- Button Action
    
    @objc func clickEditUserImage()
    {
        print("Edit Profile Picture")
    }
    
    @objc func clickEditUserName()
    {
        print("Edit userName")
    }
    
    @objc func clickEditUserName2()
    {
        print("Edit userName 2")
    }
    
    @objc func clickMore()
    {
        let vc = settingVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func clickBookeMarkQuestion()
    {
        print("clickBookeMarkQuestion")
        self.setupDetailsView(Mainviewtop: 25.0, Mainviewheight: 222, Mainviewwidth: 296, ImageName: "bookmarkWithText", descriptionText: "Bookmarks let you keep track of pages. See a page you like? Bookmark it! Bookmarking a page allows the creator of that page to promote you. This can allow you to post pictures to that page. The number of pages you have bookmarked will be visible on your profile.")
    }
    
    @objc func clickPageQuestion()
    {
        print("clickPageQuestion")
        self.setupDetailsView(Mainviewtop: 34.0, Mainviewheight: 206, Mainviewwidth: 296, ImageName: "pageDeatilWithText", descriptionText: "Pages are an imporant part of Pictopage. Pages are where you post your pictures. You can create multiple Pages and you can bookmark Pages created by other users. The number of Pages you have created will be displayed on your Profile.")
    }
    
    @objc func clickAddedQuestion()
    {
        print("clickAddedQuestion") 
    }
    
    @objc func clickDescriptionQuestion()
    {
        print("clickDescriptionQuestion")
    }
    
    @objc func clickDescriptionEdit()
    {
        print("clickDescriptionQuestion")
    }
    
    @objc func clickSkip()
    {
        print("clickSkip")
        
        DispatchQueue.main.async {
            let vc = MainVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func clickContinue()
    {
        print("clickContinue")
        DispatchQueue.main.async {
            let vc = MainVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func clickClose()
    {
        print("clickClose")
        self.pagesQuestionDeatils.removeFromSuperview()
    }
    

}
