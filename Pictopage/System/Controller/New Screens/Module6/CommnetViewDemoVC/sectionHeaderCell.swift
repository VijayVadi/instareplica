//
//  sectionHeaderCell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 17/02/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class sectionHeaderCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    let mainView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let subView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let userImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        backimage.image = UIImage(named: "userLogo1x")
        return backimage
    }()
    
    let likeViewAndReplyView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let likeView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let likeImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        backimage.image = UIImage(named: "likeComment1x")
        return backimage
    }()
    
    var LikeButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let totallikeCountLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "0"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let userNameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.text = "Vijay vadi"
        lbl.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let CommentLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.text = "This is an example of a commenton a post."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var tapOnSectionButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = black13
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 79)
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 16, paddingLeft: 17, paddingBottom: 0, paddingRight: 17, width: 0, height: 0)
        
        self.subView.addSubview(self.userImage)
        self.userImage.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        self.userImage.layer.cornerRadius = 22.5
        self.userImage.clipsToBounds = true
        
        self.subView.addSubview(self.likeViewAndReplyView)
        self.likeViewAndReplyView.anchor(top: self.subView.topAnchor, left: nil, bottom: self.subView.bottomAnchor, right: self.subView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 59, height: 0)
        
        self.likeViewAndReplyView.addSubview(self.likeView)
        self.likeView.anchor(top: self.likeViewAndReplyView.topAnchor, left: nil, bottom: self.likeViewAndReplyView.bottomAnchor, right: self.likeViewAndReplyView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 59, height: 0)
        
        self.likeView.addSubview(self.likeImage)
        self.likeImage.anchor(top: self.likeView.topAnchor, left: nil, bottom: nil, right: self.likeView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 23, height: 27)
        
        self.likeView.addSubview(self.totallikeCountLable)
        self.totallikeCountLable.anchor(top: self.likeImage.bottomAnchor, left: nil, bottom: nil, right: self.likeView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 9, width: 0, height: 18)
        
        self.likeView.addSubview(self.LikeButton)
        self.LikeButton.anchor(top: self.likeView.topAnchor, left: self.likeView.leftAnchor, bottom: self.likeView.bottomAnchor, right: self.likeView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        
        self.subView.addSubview(self.userNameLable)
        self.userNameLable.anchor(top: self.subView.topAnchor, left: self.userImage.rightAnchor, bottom: nil, right: self.likeView.leftAnchor, paddingTop: 4, paddingLeft: 9, paddingBottom: 0, paddingRight: 8, width: 0, height: 18)
        
        self.subView.addSubview(self.CommentLable)
        self.CommentLable.anchor(top: self.userNameLable.bottomAnchor, left: self.userImage.rightAnchor, bottom: self.subView.bottomAnchor, right: self.likeView.leftAnchor, paddingTop: 5, paddingLeft: 9, paddingBottom: 0, paddingRight: 8, width: 0, height: 0)
        
        self.subView.addSubview(self.tapOnSectionButton)
        self.tapOnSectionButton.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: self.subView.bottomAnchor, right: self.likeViewAndReplyView.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
