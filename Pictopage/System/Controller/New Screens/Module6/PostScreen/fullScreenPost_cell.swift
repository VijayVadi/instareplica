//
//  fullScreenPost_cell.swift
//  Pictopage
//
//  Created by Grewon on 29/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class fullScreenPost_cell: UICollectionViewCell {
    
    var photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    var headerImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        iv.clipsToBounds = true
        iv.image = UIImage(named: "postScreenTopHeader1x")
        return iv
    }()
    
    var bottomImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        iv.clipsToBounds = true
        iv.image = UIImage(named: "postScreenBottomHeader1x")
        return iv
    }()
    
    let closeview: UIView = {
        let v = UIView()
        return v
    }()
    
    var closeImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "close_white1x")
        iv.clipsToBounds = true
        return iv
    }()
    
    let closeButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    var userProfileImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "userLogo1x")
        iv.clipsToBounds = true
        return iv
    }()
    
    var userProfileImageViewButton: UIButton = {
        let iv = UIButton()
        iv.clipsToBounds = true
        return iv
    }()
    

    let textview: UIView = {
        let v = UIView()
        return v
    }()
    
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Vijay Vadi"
        label.font = UIFont(name: "HelveticaNeue-Thin", size: 20.0)!
        label.textColor = UIColor.white
        label.textAlignment = .left
        return label
    }()
    
    var userNameButton: UIButton = {
        let iv = UIButton()
        iv.clipsToBounds = true
        return iv
    }()
    
    let TimeLabel: UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        return lbl
    }()
    
    var pageNameButton: UIButton = {
        let iv = UIButton()
        iv.clipsToBounds = true
        return iv
    }()
    
    let likeview: UIView = {
        let v = UIView()
        return v
    }()
    
    var likeImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "postLikeGray1x")
        iv.clipsToBounds = true
        return iv
    }()
    
    var likeButton: UIButton = {
        let iv = UIButton()
        iv.clipsToBounds = true
        return iv
    }()
    
    let commentview: UIView = {
        let v = UIView()
        return v
    }()
    
    var commentImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "postcomment1x")
        iv.clipsToBounds = true
        return iv
    }()
    
    var commentButton: UIButton = {
        let iv = UIButton()
        iv.clipsToBounds = true
        return iv
    }()

    let upArrowview: UIView = {
        let v = UIView()
        return v
    }()
    
    var upArrowImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "upArrow_white")
        iv.clipsToBounds = true
        return iv
    }()
    
    var upArrowButton: UIButton = {
        let iv = UIButton()
        iv.clipsToBounds = true
        return iv
    }()
    
    let CaptionTextview: UIView = {
        let v = UIView()
        return v
    }()
    
    let CaptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "This is an example of a caption on a post. Hello"
        label.font = UIFont(name: "HelveticaNeue-Light", size: 16.0)!
        label.textColor = UIColor.white
        label.textAlignment = .left
        return label
    }()
    
    let Reportview: UIView = {
        let v = UIView()
        return v
    }()
    
    
    let downArrowview: UIView = {
        let v = UIView()
        return v
    }()
    
    var downArrowImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "downArrow_white")
        iv.clipsToBounds = true
        return iv
    }()
    
    var downArrowButton: UIButton = {
        let iv = UIButton()
        iv.clipsToBounds = true
        return iv
    }()
    
    let reportButtonview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let reportButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Report", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 11.0)!
        return btn
    }()
    
    let ReportTextView: UIView = {
        let v = UIView()
        return v
    }()
    
    let ReportLikeAndCommentButtonView: UIView = {
        let v = UIView()
        return v
    }()
    
    let ReportlikeMainview: UIView = {
        let v = UIView()
        return v
    }()

    var ReportlikeImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "postLikeGray1x")
        iv.clipsToBounds = true
        return iv
    }()

    let ReportLikeCountLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "324"
        label.font = UIFont(name: "HelveticaNeue-Light", size: 16.0)!
        label.textColor = UIColor.white
        label.textAlignment = .center
        return label
    }()
    
    var ReportlikeButton: UIButton = {
        let iv = UIButton()
        iv.clipsToBounds = true
        return iv
    }()
    
    let ReportCommentMainview: UIView = {
        let v = UIView()
        return v
    }()
    
    var ReportCommentImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "postcomment1x")
        iv.clipsToBounds = true
        return iv
    }()
    
    let ReportCommentCountLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "324"
        label.font = UIFont(name: "HelveticaNeue-Light", size: 16.0)!
        label.textColor = UIColor.white
        label.textAlignment = .center
        return label
    }()
    
    var ReportCommentButton: UIButton = {
        let iv = UIButton()
        iv.clipsToBounds = true
        return iv
    }()
    
    let ReportTextLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "This is an example of a caption on a post. Hello"
        label.font = UIFont(name: "HelveticaNeue-Light", size: 16.0)!
        label.textColor = UIColor.white
        label.textAlignment = .left
        return label
    }()
    
    var reportViewTopConstraint = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(photoImageView)
        self.photoImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.photoImageView.backgroundColor = UIColor.black
        
        self.addSubview(self.headerImageView)
        self.headerImageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 85)
        
        self.addSubview(self.bottomImageView)
        self.bottomImageView.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 85)

        self.addSubview(userProfileImageView)
        self.userProfileImageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        self.userProfileImageView.layer.cornerRadius = 45 / 2
        
        self.addSubview(userProfileImageViewButton)
        self.userProfileImageViewButton.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        self.userProfileImageViewButton.layer.cornerRadius = 45 / 2
        
        self.addSubview(self.closeview)
        self.closeview.anchor(top: nil, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 10, width: 40, height: 40)
        self.closeview.centerYAnchor.constraint(equalTo: self.userProfileImageView.centerYAnchor).isActive = true
        self.closeview.clipsToBounds = true
        
        self.closeview.addSubview(self.closeImageView)
        self.closeImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 25, height: 25)
        self.closeImageView.centerYAnchor.constraint(equalTo: self.closeview.centerYAnchor).isActive = true
        self.closeImageView.centerXAnchor.constraint(equalTo: self.closeview.centerXAnchor).isActive = true
        
        self.addSubview(closeButton)
        self.closeButton.anchor(top: self.closeview.topAnchor, left: self.closeview.leftAnchor, bottom: self.closeview.bottomAnchor, right: self.closeview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        self.addSubview(self.textview)
        self.textview.anchor(top: nil, left: self.userProfileImageView.rightAnchor, bottom: nil, right: self.closeview.leftAnchor, paddingTop: 0, paddingLeft: 7, paddingBottom: 0, paddingRight: 10, width: 0, height: 40)
        self.textview.centerYAnchor.constraint(equalTo: self.userProfileImageView.centerYAnchor).isActive = true
        
        self.textview.addSubview(self.usernameLabel)
        self.usernameLabel.anchor(top: self.textview.topAnchor, left: self.textview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 23)
        
        self.textview.addSubview(self.userNameButton)
        self.userNameButton.anchor(top: self.textview.topAnchor, left: self.textview.leftAnchor, bottom: nil, right: self.textview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 23)
        
        self.textview.addSubview(self.TimeLabel)
        self.TimeLabel.anchor(top: nil, left: self.textview.leftAnchor, bottom: self.textview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
        self.textview.addSubview(self.pageNameButton)
        self.pageNameButton.anchor(top: nil, left: self.textview.leftAnchor, bottom: self.textview.bottomAnchor, right: self.textview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)

        
        // Caption View Up arrow
        self.addSubview(self.likeview)
        self.likeview.anchor(top: nil, left: nil, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 3, paddingRight: 6, width: 45, height: 45)
        self.likeview.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.56)
        self.likeview.layer.cornerRadius = 22.5
        self.likeview.clipsToBounds = true
        
        self.likeview.addSubview(self.likeImageView)
        self.likeImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 23, height: 27)
        self.likeImageView.centerYAnchor.constraint(equalTo: self.likeview.centerYAnchor).isActive = true
        self.likeImageView.centerXAnchor.constraint(equalTo: self.likeview.centerXAnchor).isActive = true
        
        self.likeview.addSubview(self.likeButton)
        self.likeButton.anchor(top: self.likeview.topAnchor, left: self.likeview.leftAnchor, bottom: self.likeview.bottomAnchor, right: self.likeview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.addSubview(self.commentview)
        self.commentview.anchor(top: nil, left: nil, bottom: self.bottomAnchor, right: self.likeview.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 3, paddingRight: 15, width: 45, height: 45)
        self.commentview.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.56)
        self.commentview.layer.cornerRadius = 22.5
        self.commentview.clipsToBounds = true

        self.commentview.addSubview(self.commentImageView)
        self.commentImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 26, height: 23)
        self.commentImageView.centerXAnchor.constraint(equalTo: self.commentview.centerXAnchor).isActive = true
        self.commentImageView.centerYAnchor.constraint(equalTo: self.commentview.centerYAnchor).isActive = true

        self.commentview.addSubview(self.commentButton)
        self.commentButton.anchor(top: self.commentview.topAnchor, left: self.commentview.leftAnchor, bottom: self.commentview.bottomAnchor, right: self.commentview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.addSubview(self.upArrowview)
        self.upArrowview.anchor(top: nil, left: nil, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 7, paddingRight: 0, width: 31, height: 31)
        self.upArrowview.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.upArrowview.clipsToBounds = true
        
        self.upArrowview.addSubview(self.upArrowImageView)
        self.upArrowImageView.anchor(top: self.upArrowview.topAnchor, left: self.upArrowview.leftAnchor, bottom: self.upArrowview.bottomAnchor, right: self.upArrowview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.upArrowview.addSubview(self.upArrowButton)
        self.upArrowButton.anchor(top: self.upArrowview.topAnchor, left: self.upArrowview.leftAnchor, bottom: self.upArrowview.bottomAnchor, right: self.upArrowview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.upArrowButton.addTarget(self, action: #selector(self.clickUpArrow), for: .touchUpInside)
        
        self.addSubview(self.CaptionTextview)
        self.CaptionTextview.anchor(top: nil, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.upArrowview.leftAnchor, paddingTop: 0, paddingLeft: 7, paddingBottom: 8, paddingRight: 8, width: 0, height: 38)
        self.CaptionTextview.clipsToBounds = true
        
        self.CaptionTextview.addSubview(self.CaptionLabel)
        self.CaptionLabel.anchor(top: self.CaptionTextview.topAnchor, left: self.CaptionTextview.leftAnchor, bottom: self.CaptionTextview.bottomAnchor, right: self.CaptionTextview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
                
        // Report Vioew
        
        self.addSubview(self.Reportview)
        self.Reportview.anchor(top: nil, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 110)
        self.Reportview.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.60)
        self.reportViewTopConstraint = self.Reportview.topAnchor.constraint(equalTo: self.topAnchor, constant: self.frame.size.height)
        self.reportViewTopConstraint.isActive = true
        self.Reportview.clipsToBounds = true
        
        self.Reportview.addSubview(self.downArrowview)
        self.downArrowview.anchor(top: self.Reportview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 31, height: 31)
        self.downArrowview.centerXAnchor.constraint(equalTo: self.Reportview.centerXAnchor).isActive = true
        
        self.downArrowview.addSubview(self.downArrowImageView)
        self.downArrowImageView.anchor(top: self.downArrowview.topAnchor, left: self.downArrowview.leftAnchor, bottom: self.downArrowview.bottomAnchor, right: self.downArrowview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.downArrowview.addSubview(self.downArrowButton)
        self.downArrowButton.anchor(top: self.downArrowview.topAnchor, left: self.downArrowview.leftAnchor, bottom: self.downArrowview.bottomAnchor, right: self.downArrowview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.downArrowButton.addTarget(self, action: #selector(self.clickDownArrow), for: .touchUpInside)
        
        self.Reportview.addSubview(self.reportButtonview)
        self.reportButtonview.anchor(top: self.Reportview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 74, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 85, height: 27)
        self.reportButtonview.centerXAnchor.constraint(equalTo: self.Reportview.centerXAnchor).isActive = true
        self.reportButtonview.layer.cornerRadius = 13.5
        self.reportButtonview.clipsToBounds = true
        
        self.reportButtonview.addSubview(self.reportButton)
        self.reportButton.anchor(top: self.reportButtonview.topAnchor, left: self.reportButtonview.leftAnchor, bottom: self.reportButtonview.bottomAnchor, right: self.reportButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.reportButton.backgroundColor = black1F2225
        
        self.Reportview.addSubview(self.ReportTextView)
        self.ReportTextView.anchor(top: self.Reportview.topAnchor, left: self.Reportview.leftAnchor, bottom: nil, right: self.Reportview.rightAnchor, paddingTop: 31, paddingLeft: 7, paddingBottom: 0, paddingRight: 11, width: 0, height: 54)
        
        self.ReportTextView.addSubview(self.ReportLikeAndCommentButtonView)
        self.ReportLikeAndCommentButtonView.anchor(top: self.ReportTextView.topAnchor, left: nil, bottom: self.ReportTextView.bottomAnchor, right: self.ReportTextView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 94, height: 0)
        
        self.ReportLikeAndCommentButtonView.addSubview(self.ReportlikeMainview)
        self.ReportlikeMainview.anchor(top: self.ReportLikeAndCommentButtonView.topAnchor, left: nil, bottom: self.ReportLikeAndCommentButtonView.bottomAnchor, right: self.ReportLikeAndCommentButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 47, height: 0)
        
        self.ReportlikeMainview.addSubview(self.ReportLikeCountLabel)
        self.ReportLikeCountLabel.anchor(top: nil, left: self.ReportlikeMainview.leftAnchor, bottom: self.ReportlikeMainview.bottomAnchor, right: self.ReportlikeMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 1, paddingRight: 0, width: 0, height: 18)
                
        self.ReportlikeMainview.addSubview(self.ReportlikeImageView)
        self.ReportlikeImageView.anchor(top: self.ReportlikeMainview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 27, height: 23)
        self.ReportlikeImageView.centerXAnchor.constraint(equalTo: self.ReportlikeMainview.centerXAnchor).isActive = true
        
        self.ReportlikeMainview.addSubview(self.ReportlikeButton)
        self.ReportlikeButton.anchor(top: self.ReportlikeMainview.topAnchor, left: self.ReportlikeMainview.leftAnchor, bottom: self.ReportlikeMainview.bottomAnchor, right: self.ReportlikeMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.ReportLikeAndCommentButtonView.addSubview(self.ReportCommentMainview)
        self.ReportCommentMainview.anchor(top: self.ReportLikeAndCommentButtonView.topAnchor, left: self.ReportLikeAndCommentButtonView.leftAnchor, bottom: self.ReportLikeAndCommentButtonView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 47, height: 0)
        
        self.ReportCommentMainview.addSubview(self.ReportCommentCountLabel)
        self.ReportCommentCountLabel.anchor(top: nil, left: self.ReportCommentMainview.leftAnchor, bottom: self.ReportCommentMainview.bottomAnchor, right: self.ReportCommentMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 1, paddingRight: 0, width: 0, height: 18)
        
        self.ReportCommentMainview.addSubview(self.ReportCommentImageView)
        self.ReportCommentImageView.anchor(top: self.ReportCommentMainview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 2, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 26, height: 23)
        self.ReportCommentImageView.centerXAnchor.constraint(equalTo: self.ReportCommentMainview.centerXAnchor).isActive = true
        
        self.ReportCommentMainview.addSubview(self.ReportCommentButton)
        self.ReportCommentButton.anchor(top: self.ReportCommentMainview.topAnchor, left: self.ReportCommentMainview.leftAnchor, bottom: self.ReportCommentMainview.bottomAnchor, right: self.ReportCommentMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.ReportTextView.addSubview(self.ReportTextLabel)
        self.ReportTextLabel.anchor(top: self.ReportTextView.topAnchor, left: self.ReportTextView.leftAnchor, bottom: self.ReportTextView.bottomAnchor, right: self.ReportLikeAndCommentButtonView.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 16, paddingRight: 26.8, width: 0, height: 0)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func clickDownArrow(){
        
        UIView.animate(withDuration: 0.6, animations: {
            self.reportViewTopConstraint.constant = self.frame.size.height
            self.layoutIfNeeded()
        }) { (iscomplete) in
            if iscomplete == true{
                self.likeview.isHidden = false
                self.commentview.isHidden = false
                self.upArrowview.isHidden = false
                self.CaptionTextview.isHidden = false
            }
        }
    }
    
    @objc func clickUpArrow(){
        
        self.likeview.isHidden = true
        self.commentview.isHidden = true
        self.upArrowview.isHidden = true
        self.CaptionTextview.isHidden = true
        
        UIView.animate(withDuration: 0.6, animations: {
            self.reportViewTopConstraint.constant = self.frame.size.height - 110
            self.layoutIfNeeded()
        }) { (iscomplete) in
//            if iscomplete == true{
//                
//            }
        }
    }
    
}
