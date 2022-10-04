//
//  view_otherUserProfileData_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 12/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class view_otherUserProfileData_cell: UITableViewCell {

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
    
    let connectView: UIView = {
        let log = UIView()
        return log
    }()
    
    let connectImageView: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "Connect1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let connectButton: UIButton = {
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
    
    let viewBack: UIView = {
        let log = UIView()
        return log
    }()
    
    let viewBackImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "back_1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let viewBackButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Setup user profile view
        
    
            
        self.addSubview(self.userProfileView)
        self.userProfileView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup user profile pictrue vew
        
        self.userProfileView.addSubview(self.userImageView)
        self.userImageView.anchor(top: self.userProfileView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 48, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 95, height: 95)
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
        
        // setup pictoID lable
        
        self.userProfileView.addSubview(self.pictoIDLable)
        self.pictoIDLable.anchor(top: self.userNameLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 13, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        self.pictoIDLable.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        
        //setup connect view
        
        self.userProfileView.addSubview(self.connectView)
        self.connectView.anchor(top: nil, left: nil, bottom: self.userProfileView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 15, paddingRight: 0, width: 113, height: 35)
        self.connectView.centerXAnchor.constraint(equalTo: self.userProfileView.centerXAnchor).isActive = true
        
        self.connectView.addSubview(self.connectImageView)
        self.connectImageView.anchor(top: self.connectView.topAnchor, left: self.connectView.leftAnchor, bottom: self.connectView.bottomAnchor, right: self.connectView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.connectView.addSubview(self.connectButton)
        self.connectButton.anchor(top: self.connectView.topAnchor, left: self.connectView.leftAnchor, bottom: self.connectView.bottomAnchor, right: self.connectView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Description lable
        
        self.userProfileView.addSubview(self.descriptionLable)
        self.descriptionLable.anchor(top: self.pictoIDLable.bottomAnchor, left: self.userProfileView.leftAnchor, bottom: self.connectView.topAnchor, right: self.userProfileView.rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 25, paddingRight: 0, width: 0, height: 0)
        
        // setup more view
        
        self.userProfileView.addSubview(self.viewMore)
        self.viewMore.anchor(top: self.userProfileView.topAnchor, left: nil, bottom: nil, right: self.userProfileView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 44, height: 46)
        
        self.viewMore.addSubview(self.viewMoreImage)
        self.viewMoreImage.anchor(top: nil, left: self.viewMore.leftAnchor, bottom: self.viewMore.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 24, height: 6)
        
        self.viewMore.addSubview(self.viewMoreButton)
        self.viewMoreButton.anchor(top: self.viewMore.topAnchor, left: self.viewMore.leftAnchor, bottom: self.viewMore.bottomAnchor, right: self.viewMore.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup back view
        
        self.userProfileView.addSubview(self.viewBack)
        self.viewBack.anchor(top: self.userProfileView.topAnchor, left: self.userProfileView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 32, height: 54.5)
        
        self.viewBack.addSubview(self.viewBackImage)
        self.viewBackImage.anchor(top: nil, left: nil, bottom: self.viewBack.bottomAnchor, right: self.viewBack.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.viewBack.addSubview(self.viewBackButton)
        self.viewBackButton.anchor(top: self.viewBack.topAnchor, left: self.viewBack.leftAnchor, bottom: self.viewBack.bottomAnchor, right: self.viewBack.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
