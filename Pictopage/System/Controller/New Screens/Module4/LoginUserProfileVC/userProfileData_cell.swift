//
//  userProfileData_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 04/02/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class userProfileData_cell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    let userProfileView: UIView = {
        let log = UIView()
        log.backgroundColor = .clear
        return log
    }()
    
    let userImageView: UIView = {
        let log = UIView()
        return log
    }()
    
    let userBorderImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        backimage.image = UIImage(named: "userProfileBorder1x")
        return backimage
    }()
    
    let userImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFill
        backimage.image = UIImage(named: "userLogo1x")
        return backimage
    }()
    
    let userNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Firstname Lastname"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pictoIDLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "pictoid"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descriptionLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Description"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    let viewMore: UIView = {
        let log = UIView()
        return log
    }()
    
    let viewMoreImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "iconSetting_1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let viewMoreButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Setup user profile view
            
        self.addSubview(self.userProfileView)
        self.userProfileView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup user profile pictrue vew
        
        self.userProfileView.addSubview(self.userImageView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.userImageView.anchor(top: self.userProfileView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 48, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 95, height: 95)
        }else{
            self.userImageView.anchor(top: self.userProfileView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 72, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 95, height: 95)
        }
        self.userImageView.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        self.userImageView.clipsToBounds = true
        
        self.userImageView.addSubview(self.userBorderImage)
        self.userBorderImage.anchor(top: self.userImageView.topAnchor, left: self.userImageView.leftAnchor, bottom: self.userImageView.bottomAnchor, right: self.userImageView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userBorderImage.clipsToBounds = true
        
        self.userImageView.addSubview(self.userImage)
        self.userImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 55, height: 55)
        self.userImage.centerXAnchor.constraint(equalTo: self.userImageView.centerXAnchor).isActive = true
        self.userImage.centerYAnchor.constraint(equalTo: self.userImageView.centerYAnchor).isActive = true
        self.userImage.clipsToBounds = true
        
        self.userImage.layer.cornerRadius = 27.5
        
        // setup firestname And lastname lable
        
        self.userProfileView.addSubview(self.userNameLable)
        self.userNameLable.anchor(top: self.userImageView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 25)
        self.userNameLable.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        
        // setup pictoID lable
        
        self.userProfileView.addSubview(self.pictoIDLable)
        self.pictoIDLable.anchor(top: self.userNameLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 13, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        self.pictoIDLable.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        
        
        // setup Description lable
        
        self.userProfileView.addSubview(self.descriptionLable)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.descriptionLable.anchor(top: self.pictoIDLable.bottomAnchor, left: self.userProfileView.leftAnchor, bottom: self.userProfileView.bottomAnchor, right: self.userProfileView.rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 8, paddingRight: 0, width: 0, height: 0)
        }else{
            self.descriptionLable.anchor(top: self.pictoIDLable.bottomAnchor, left: self.userProfileView.leftAnchor, bottom: self.userProfileView.bottomAnchor, right: self.userProfileView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 8, paddingRight: 0, width: 0, height: 0)
        }
        
        
        // setup more view
        
        self.userProfileView.addSubview(self.viewMore)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.viewMore.anchor(top: self.userProfileView.topAnchor, left: nil, bottom: nil, right: self.userProfileView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 44, height: 42)
        }else{
            self.viewMore.anchor(top: self.userProfileView.topAnchor, left: nil, bottom: nil, right: self.userProfileView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 44, height: 66)
        }
        
        
        self.viewMore.addSubview(self.viewMoreImage)
        self.viewMoreImage.anchor(top: nil, left: self.viewMore.leftAnchor, bottom: self.viewMore.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 25, height: 10)
        
        self.viewMore.addSubview(self.viewMoreButton)
        self.viewMoreButton.anchor(top: self.viewMore.topAnchor, left: self.viewMore.leftAnchor, bottom: self.viewMore.bottomAnchor, right: self.viewMore.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
