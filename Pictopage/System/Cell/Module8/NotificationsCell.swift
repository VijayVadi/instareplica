//
//  NotificationsCell.swift
//  Pictopage
//
//  Created by Darshit on 09/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class NotificationsCell: UITableViewCell {

    static let cellID = "NotificationsCell"
    
    //main container view
    let mainView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let topTitleLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "These are universal controls for all\nnotifications.\n\nYou can mute notifications from certain\npages in page settings."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let postNotiLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Post Notifications"
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let controlNotiLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Controls for Notifications that relate\nto all of your posts"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var likeCommentsView:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    var likeView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    var commentView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let likeImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "likeComment1x")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let commentImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "noti_comment")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let likesLbl : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Likes"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let commentsLbl : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Comments"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let likeSwitchImage:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "notificationSwitch1x")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let commentSwitchImage:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "comment_switch_off")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let topDividerImage:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "noti_divider")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let pageNotiLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Page Notifications"
        lbl.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let controlPageNotiLbl: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Controls for Notifications that relate\nto all Pages"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var postBookmarkView:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    var postView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    var bookmarkView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let postImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "noti_post")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let bookmarkImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "noti_bookmark")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let postsLbl : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Posts"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let bookmarkLbl : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let postSwitchImage:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "notificationSwitch1x")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let bookmarkSwitchImage:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "comment_switch_off")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //main container view
        self.addSubview(self.mainView)
        self.mainView.fillSuperview()
        
        //top section label
        self.mainView.addSubview(self.topTitleLbl)
        self.topTitleLbl.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 30, paddingLeft: 42.5, paddingBottom: 0, paddingRight: 42.5, width: 0, height: 90)
        
        //post notifications lbl
        self.mainView.addSubview(self.postNotiLbl)
        self.postNotiLbl.anchor(top: self.topTitleLbl.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 22)
        self.postNotiLbl.centerX(inView: self.mainView)
        
        //control noti label
        self.mainView.addSubview(self.controlNotiLbl)
        self.controlNotiLbl.anchor(top: self.postNotiLbl.bottomAnchor, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 10, paddingLeft: 68, paddingBottom: 0, paddingRight: 68, width: 0, height: 36)
        
        self.mainView.addSubview(self.likeCommentsView)
        self.likeCommentsView.anchor(top: self.controlNotiLbl.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 325, height: 150)
        self.likeCommentsView.centerXToSuperview()
        
        self.likeCommentsView.addSubview(self.likeView)
        self.likeView.anchor(top: self.likeCommentsView.topAnchor, left: self.likeCommentsView.leftAnchor, bottom: self.likeCommentsView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 150)
        self.likeView.layer.cornerRadius = 25
        self.likeView.layer.applySketchShadow()
        
        self.likeView.addSubview(self.likeImageView)
        self.likeImageView.anchor(top: self.likeView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 45, height: 39)
        self.likeImageView.centerX(inView: self.likeView)
        
        self.likeView.addSubview(self.likesLbl)
        self.likesLbl.anchor(top: self.likeImageView.bottomAnchor, left: self.likeView.leftAnchor, bottom: nil, right: self.likeView.rightAnchor, paddingTop: 8, paddingLeft: 55, paddingBottom: 0, paddingRight: 55, width: 0, height: 21)
        
        self.likeView.addSubview(self.likeSwitchImage)
        self.likeSwitchImage.anchor(top: self.likesLbl.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 51, height: 24)
        self.likeSwitchImage.centerX(inView: self.likeView)
        
        self.likeCommentsView.addSubview(self.commentView)
        self.commentView.anchor(top: self.likeCommentsView.topAnchor, left: nil, bottom: self.likeCommentsView.bottomAnchor, right: self.likeCommentsView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 150)
        self.commentView.layer.cornerRadius = 25
        self.commentView.layer.applySketchShadow()
        
        self.commentView.addSubview(self.commentImageView)
        self.commentImageView.anchor(top: self.commentView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 44, height: 40)
        self.commentImageView.centerX(inView: self.commentView)
        
        self.commentView.addSubview(self.commentsLbl)
        self.commentsLbl.anchor(top: self.commentImageView.bottomAnchor, left: self.commentView.leftAnchor, bottom: nil, right: self.commentView.rightAnchor, paddingTop: 7, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 21)
        
        self.commentView.addSubview(self.commentSwitchImage)
        self.commentSwitchImage.anchor(top: self.commentsLbl.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 51, height: 24)
        self.commentSwitchImage.centerX(inView: self.commentView)
        
        self.mainView.addSubview(self.topDividerImage)
        self.topDividerImage.anchor(top: self.likeCommentsView.bottomAnchor, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        //post notifications lbl
        self.mainView.addSubview(self.pageNotiLbl)
        self.pageNotiLbl.anchor(top: self.topDividerImage.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 22)
        self.pageNotiLbl.centerX(inView: self.mainView)
        
        //control noti label
        self.mainView.addSubview(self.controlPageNotiLbl)
        self.controlPageNotiLbl.anchor(top: self.pageNotiLbl.bottomAnchor, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 10, paddingLeft: 68, paddingBottom: 0, paddingRight: 68, width: 0, height: 36)
        
        
        self.mainView.addSubview(self.postBookmarkView)
        self.postBookmarkView.anchor(top: self.controlPageNotiLbl.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 325, height: 150)
        self.postBookmarkView.centerXToSuperview()
        
        self.postBookmarkView.addSubview(self.postView)
        self.postView.anchor(top: self.postBookmarkView.topAnchor, left: self.postBookmarkView.leftAnchor, bottom: self.postBookmarkView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 150)
        self.postView.layer.cornerRadius = 25
        self.postView.layer.applySketchShadow()
        
        self.postView.addSubview(self.postImageView)
        self.postImageView.anchor(top: self.postView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 65, height: 39)
        self.postImageView.centerX(inView: self.postView)
        
        self.postView.addSubview(self.postsLbl)
        self.postsLbl.anchor(top: self.postImageView.bottomAnchor, left: self.postView.leftAnchor, bottom: nil, right: self.postView.rightAnchor, paddingTop: 10, paddingLeft: 53, paddingBottom: 0, paddingRight: 53, width: 0, height: 21)
        
        self.postView.addSubview(self.postSwitchImage)
        self.postSwitchImage.anchor(top: self.postsLbl.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 51, height: 24)
        self.postSwitchImage.centerX(inView: self.postView)
        
        self.postBookmarkView.addSubview(self.bookmarkView)
        self.bookmarkView.anchor(top: self.postBookmarkView.topAnchor, left: nil, bottom: self.postBookmarkView.bottomAnchor, right: self.postBookmarkView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 150)
        self.bookmarkView.layer.cornerRadius = 25
        self.bookmarkView.layer.applySketchShadow()
        
        self.bookmarkView.addSubview(self.bookmarkImageView)
        self.bookmarkImageView.anchor(top: self.bookmarkView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 28, height: 36)
        self.bookmarkImageView.centerX(inView: self.bookmarkView)
        
        self.bookmarkView.addSubview(self.bookmarkLbl)
        self.bookmarkLbl.anchor(top: self.bookmarkImageView.bottomAnchor, left: self.bookmarkView.leftAnchor, bottom: nil, right: self.bookmarkView.rightAnchor, paddingTop: 11, paddingLeft: 30.5, paddingBottom: 0, paddingRight: 30.5, width: 0, height: 21)
        
        self.bookmarkView.addSubview(self.bookmarkSwitchImage)
        self.bookmarkSwitchImage.anchor(top: self.bookmarkLbl.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 51, height: 24)
        self.bookmarkSwitchImage.centerX(inView: self.bookmarkView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
