//
//  notification_likePostCell.swift
//  Pictopage
//
//  Created by Grewon on 21/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class notification_likePostCell: UITableViewCell {

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
    
    let subview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let divideview: UIView = {
        let logov = UIView()
        logov.backgroundColor = GrayD8
        return logov
    }()
    
    let userImageview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let userImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        return img
    }()

    let postImageview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let postImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.image = UIImage(named: "postImage")
        return img
    }()
    
    let postLikeImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "postLike_red")
        return img
    }()
    
    let DescriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Firstname L. liked your post on Nature 4 minutes ago"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var imageviewWidthConstraint = NSLayoutConstraint()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainView.addSubview(self.divideview)
        self.divideview.anchor(top: nil, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
    
        self.mainView.addSubview(self.subview)
        self.subview.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 5, paddingLeft: 10, paddingBottom: 5, paddingRight: 5, width: 0, height: 0)
        
        
        // setup userImage view
        self.subview.addSubview(self.userImageview)
        self.userImageview.anchor(top: nil, left: self.subview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 47, height: 47)
        self.userImageview.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        self.userImageview.layer.cornerRadius = 23.5
        self.userImageview.layer.borderColor = Gray97.cgColor
        self.userImageview.layer.borderWidth = 1.0
        
        self.userImageview.addSubview(self.userImage)
        self.userImage.anchor(top: self.userImageview.topAnchor, left: self.userImageview.leftAnchor, bottom: self.userImageview.bottomAnchor, right: self.userImageview.rightAnchor, paddingTop: 1, paddingLeft: 1, paddingBottom: 1, paddingRight: 1, width: 0, height: 0)
        self.userImage.layer.cornerRadius = 23
        self.userImage.backgroundColor = GrayD8
        
        
        // setup post imageview
        self.subview.addSubview(self.postImageview)
        self.postImageview.anchor(top: nil, left: nil, bottom: nil, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 60)
        self.postImageview.centerYAnchor.constraint(equalTo: self.mainView.centerYAnchor).isActive = true
        self.postImageview.clipsToBounds = true
        self.imageviewWidthConstraint = self.postImageview.widthAnchor.constraint(equalToConstant: 50)
        self.imageviewWidthConstraint.isActive = true
        
        self.postImageview.addSubview(self.postImage)
        self.postImage.anchor(top: self.postImageview.topAnchor, left: self.postImageview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 31, height: 55)
        
        self.postImageview.addSubview(self.postLikeImage)
        self.postLikeImage.anchor(top: nil, left: nil, bottom: self.postImageview.bottomAnchor, right: self.postImageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 35, height: 35)
        
        
        // setup description lable
        self.subview.addSubview(self.DescriptionLable)
        self.DescriptionLable.anchor(top: self.subview.topAnchor, left: self.userImageview.rightAnchor, bottom: self.subview.bottomAnchor, right: self.postImageview.leftAnchor, paddingTop: 5, paddingLeft: 10, paddingBottom: 5, paddingRight: 18, width: 0, height: 0)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
