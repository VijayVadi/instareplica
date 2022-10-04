//
//  subCommentCell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 17/02/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class subCommentCell: UITableViewCell {

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
    
    let progressView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let userImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        backimage.image = UIImage(named: "userLogo1x")
        return backimage
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
    
    let likeButton: DCustomButton = {
        let btn = DCustomButton()
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
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = black13
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 84)
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 8, paddingLeft: 56, paddingBottom: 0, paddingRight: 55, width: 0, height: 0)
        
        self.subView.addSubview(self.progressView)
        self.progressView.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: self.subView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 2, height: 0)
        self.progressView.backgroundColor = UIColor(red: 34.0/255.0, green: 144.0/255.0, blue: 187.0/255.0, alpha: 1.0)
        
        self.subView.addSubview(self.userImage)
        self.userImage.anchor(top: self.subView.topAnchor, left: self.progressView.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 35, height: 35)
        self.userImage.layer.cornerRadius = 17.5
        self.userImage.clipsToBounds = true

        self.subView.addSubview(self.likeView)
        self.likeView.anchor(top: nil, left: nil, bottom: self.subView.bottomAnchor, right: self.subView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 29, height: 42)
        self.likeView.centerYAnchor.constraint(equalTo: self.subView.centerYAnchor).isActive = true

        self.likeView.addSubview(self.likeImage)
        self.likeImage.anchor(top: self.likeView.topAnchor, left: self.likeView.leftAnchor, bottom: nil, right: nil, paddingTop: 1, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 24, height: 20.74)

        self.likeView.addSubview(self.totallikeCountLable)
        self.totallikeCountLable.anchor(top: self.likeImage.bottomAnchor, left: self.likeView.leftAnchor, bottom: nil, right: nil, paddingTop: 2.26, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        self.likeView.addSubview(self.likeButton)
        self.likeButton.anchor(top: self.likeView.topAnchor, left: self.likeView.leftAnchor, bottom: self.likeView.bottomAnchor, right: self.likeView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        self.subView.addSubview(self.userNameLable)
        self.userNameLable.anchor(top: self.subView.topAnchor, left: self.userImage.rightAnchor, bottom: nil, right: self.likeView.leftAnchor, paddingTop: 9, paddingLeft: 7, paddingBottom: 0, paddingRight: 8, width: 0, height: 17)

        self.subView.addSubview(self.CommentLable)
        self.CommentLable.anchor(top: self.userImage.bottomAnchor, left: self.progressView.rightAnchor, bottom: self.subView.bottomAnchor, right: self.likeView.leftAnchor, paddingTop: 2, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
