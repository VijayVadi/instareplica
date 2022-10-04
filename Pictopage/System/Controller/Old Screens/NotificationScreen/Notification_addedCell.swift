//
//  Notification_addedCell.swift
//  Pictopage
//
//  Created by Grewon on 23/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class Notification_addedCell: UITableViewCell {

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
    
    let addBackview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let addBackImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "addBackImage")
        return img
    }()
    
    let addButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let textView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let DescriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Firstname Lastname added you"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let usernameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Username"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let dotImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "dotImage1x")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let timeLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "4 minutes ago"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainView.addSubview(self.divideview)
        self.divideview.anchor(top: nil, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.mainView.addSubview(self.subview)
        self.subview.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 5, paddingLeft: 10, paddingBottom: 5, paddingRight: 5, width: 0, height: 0)
        
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
        
        
        self.subview.addSubview(self.addBackview)
        self.addBackview.anchor(top: nil, left: nil, bottom: nil, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 5, width: 85, height: 27)
        self.addBackview.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        
        self.addBackview.addSubview(self.addBackImageview)
        self.addBackImageview.anchor(top: self.addBackview.topAnchor, left: self.addBackview.leftAnchor, bottom: self.addBackview.bottomAnchor, right: self.addBackview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.addBackview.addSubview(self.addButton)
        self.addButton.anchor(top: self.addBackview.topAnchor, left: self.addBackview.leftAnchor, bottom: self.addBackview.bottomAnchor, right: self.addBackview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.textView)
        self.textView.anchor(top: nil, left: self.userImageview.rightAnchor, bottom: nil, right: self.addBackview.leftAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 8, width: 0, height: 37)
        self.textView.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        
        self.textView.addSubview(self.usernameLable)
        self.usernameLable.anchor(top: nil, left: self.textView.leftAnchor, bottom: self.textView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
        self.textView.addSubview(self.dotImageview)
        self.dotImageview.anchor(top: nil, left: self.usernameLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 4, height: 4)
        self.dotImageview.centerYAnchor.constraint(equalTo: self.usernameLable.centerYAnchor).isActive = true
        
        self.textView.addSubview(self.timeLable)
        self.timeLable.anchor(top: nil, left: self.dotImageview.rightAnchor, bottom: self.textView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
        self.textView.addSubview(self.DescriptionLable)
        self.DescriptionLable.anchor(top: self.textView.topAnchor, left: self.textView.leftAnchor, bottom: self.textView.bottomAnchor, right: self.textView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 5, paddingRight: 0, width: 0, height: 0)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
