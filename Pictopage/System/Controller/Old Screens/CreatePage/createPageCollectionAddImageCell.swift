//
//  createPageCollectionAddImageCell.swift
//  Pictopage
//
//  Created by Grewon on 18/09/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class createPageCollectionAddImageCell: UICollectionViewCell {
    
    
    let mainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let subview: UIView = {
        let v = UIView()
        return v
    }()
    
    // Page Imageview Data
    
    let BackgroundImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "createPageImagePlaceHolder")
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        return backimage
    }()
    
    let ImagePlaceHolder: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "imagePlaceHolder")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
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
    
    let TotalBookmarkLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .right
        lbl.textColor = .black
        lbl.text = "0 Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let dotImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "dotImage1x")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let TotalPostsLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "0 Posts"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var backgroundImageBottomConstraint = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.mainview)
        self.mainview.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainview.addSubview(self.subview)
        self.subview.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.BackgroundImage)
        self.BackgroundImage.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: nil, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backgroundImageBottomConstraint = self.BackgroundImage.bottomAnchor.constraint(equalTo: self.subview.bottomAnchor, constant: 0)
        self.backgroundImageBottomConstraint.isActive = true
        
        // pageData View
        
        self.subview.addSubview(self.ImagePlaceHolder)
        self.ImagePlaceHolder.anchor(top: self.subview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 72, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 43, height: 43)
        self.ImagePlaceHolder.centerXAnchor.constraint(equalTo: self.subview.centerXAnchor).isActive = true
        
        // user Dataview
        
        self.subview.addSubview(self.userInfo)
        self.userInfo.anchor(top: self.subview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 153, height: 181)
        self.userInfo.centerXAnchor.constraint(equalTo: self.subview.centerXAnchor).isActive = true
        
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
        
        self.userInfo.addSubview(self.TotalBookmarkLable)
        self.TotalBookmarkLable.anchor(top: nil, left: self.userInfo.leftAnchor, bottom: self.userInfo.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 90, height: 16)
        
        self.userInfo.addSubview(self.dotImageview)
        self.dotImageview.anchor(top: nil, left: self.TotalBookmarkLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 3, height: 3)
        self.dotImageview.centerYAnchor.constraint(equalTo: self.TotalBookmarkLable.centerYAnchor).isActive = true
        
        self.userInfo.addSubview(self.TotalPostsLable)
        self.TotalPostsLable.anchor(top: nil, left: self.dotImageview.rightAnchor, bottom: self.userInfo.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 43, height: 16)
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
