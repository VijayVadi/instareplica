//
//  CreateImageCell.swift
//  Pictopage
//
//  Created by Darshit on 05/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class CreateImageCell: UICollectionViewCell {
    
    
    //MARK:- Properties
    let mainView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let slideView:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(rgb: 0xe7e7e7)
        return v
    }()
    
    let BackgroundImageView: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "createPageImagePlaceHolder")
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        return backimage
    }()
    
    //data view
    let dataView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let pageNameLabel:UILabel = {
       let lbl = UILabel()
       lbl.textAlignment = .left
       lbl.textColor = .black
       lbl.text = "Page Name"
       lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
       lbl.numberOfLines = 1
       return lbl
    }()
    
    var byLabel:UILabel = {
        let lbl = UILabel()
        let mainString = "by pictoid"
        let subString = "pictoid"
        let subRange = NSMakeRange(mainString.count - subString.count, subString.count)
        lbl.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: mainString, BoldRange: subRange, font1: UIFont(name: "HelveticaNeue", size: 11.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 11.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        lbl.numberOfLines = 1
        return lbl
    }()
    
    let dotImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "dotImage1x")?.withRenderingMode(.alwaysTemplate)
        logoimg.tintColor = .black
        logoimg.contentMode = .scaleAspectFit
        logoimg.setDimensions(height: 4, width: 4)
        return logoimg
    }()
    
    let noBookmarkLabel:UILabel = {
       let lbl = UILabel()
       lbl.textAlignment = .left
       lbl.textColor = .black
       lbl.text = "# Bookmarks"
       lbl.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
       lbl.numberOfLines = 1
       return lbl
    }()
    
    //sub view
    let subView:UIView = {
        let v = UIView()
        v.clipsToBounds = true
        return v
    }()
    
    let BackgroundImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "add_image_1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        return backimage
    }()
    
    let addImageTapButton:UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = .clear
        button.tintColor = .clear
        return button
    }()
    
    let bookmarkButton:UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = .clear
        button.tintColor = .clear
        button.setImage(UIImage(named: "unBookmark"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        return button
    }()

    
    // user Data
    
    let userInfo: UIView = {
        let v = UIView()
        return v
    }()
    
    let createdByLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Created By"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let userImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "userLogo1x")
        logoimg.contentMode = .scaleAspectFill
        logoimg.clipsToBounds = true
        return logoimg
    }()
    
    let userNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Vijay Vadi"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TimeLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "on\nApril 11, 2018"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
       
        //mainView
        self.addSubview(mainView)
        self.mainView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 212)
        
        //First index
        //slide view
        self.mainView.addSubview(self.slideView)
        self.slideView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 145)
        
        //subview
        
        self.slideView.addSubview(BackgroundImageView)
        self.BackgroundImageView.anchor(top: self.slideView.topAnchor, left: self.slideView.leftAnchor, bottom: self.slideView.bottomAnchor, right: self.slideView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.slideView.clipsToBounds = true

        
        self.slideView.addSubview(self.subView)
        self.subView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 68, height: 57)
        self.subView.centerX(inView: self.slideView)
        self.subView.centerY(inView: self.slideView)
        
        //background add image
        self.subView.addSubview(self.BackgroundImage)
        self.BackgroundImage.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: self.subView.bottomAnchor, right: self.subView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        //add image tap button
        self.subView.addSubview(self.addImageTapButton)
        self.addImageTapButton.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: self.subView.bottomAnchor, right: self.subView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        //data view
        self.mainView.addSubview(self.dataView)
        self.dataView.anchor(top: nil, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 64)
        self.dataView.clipsToBounds = true
        
        //page name label
        self.dataView.addSubview(self.pageNameLabel)
        self.pageNameLabel.anchor(top: self.dataView.topAnchor, left: self.dataView.leftAnchor, bottom: nil, right: nil, paddingTop: 4, paddingLeft: 5.5, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        //stack view
        self.dataView.addSubview(self.byLabel)
        self.byLabel.anchor(top: self.pageNameLabel.bottomAnchor, left: self.dataView.leftAnchor, bottom: nil, right: nil, paddingTop: 3, paddingLeft: 5.5, paddingBottom: 0, paddingRight: 0, width: 0, height: 13)
        
        self.dataView.addSubview(self.dotImageview)
        self.dotImageview.anchor(top: nil, left: self.byLabel.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.dotImageview.centerY(inView: self.byLabel)
        
        self.dataView.addSubview(self.noBookmarkLabel)
        self.noBookmarkLabel.anchor(top: self.pageNameLabel.bottomAnchor, left: self.dotImageview.rightAnchor, bottom: nil, right: nil, paddingTop: 3, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 0, height: 13)
        
        //bookmark button
        self.dataView.addSubview(self.bookmarkButton)
        self.bookmarkButton.anchor(top: nil, left: nil, bottom: self.dataView.bottomAnchor, right: self.dataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 6, paddingRight: 4.5, width: 86, height: 19)
        
        
        //second index
        // user Dataview
        
        self.mainView.addSubview(self.userInfo)
        self.userInfo.anchor(top: self.mainView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 153, height: 181)
        self.userInfo.centerXAnchor.constraint(equalTo: self.mainView.centerXAnchor).isActive = true
        
        self.userInfo.addSubview(self.createdByLable)
        self.createdByLable.anchor(top: self.userInfo.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)
        self.createdByLable.centerXAnchor.constraint(equalTo: self.userInfo.centerXAnchor).isActive = true
        
        self.userInfo.addSubview(self.userImageview)
        self.userImageview.anchor(top: self.createdByLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 53, height: 53)
        self.userImageview.centerXAnchor.constraint(equalTo: self.userInfo.centerXAnchor).isActive = true
        self.userImageview.layer.cornerRadius = 26.5
        
        self.userInfo.addSubview(self.userNameLable)
        self.userNameLable.anchor(top: self.userImageview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        self.userNameLable.centerXAnchor.constraint(equalTo: self.userInfo.centerXAnchor).isActive = true
        
        self.userInfo.addSubview(self.TimeLable)
        self.TimeLable.anchor(top: self.userNameLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 7, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 34)
        self.TimeLable.centerXAnchor.constraint(equalTo: self.userInfo.centerXAnchor).isActive = true
        
    }
}
