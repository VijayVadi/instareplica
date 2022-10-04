//
//  connectionTableview_Cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 15/10/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class connectionTableview_Cell: UITableViewCell {

    let mainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let connectionView: UIView = {
        let v = UIView()
        return v
    }()
    
    let connectionImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "ic_sendConnection1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let connectionButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let userDataview: UIView = {
        let v = UIView()
        return v
    }()
    
    let userImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "userLogo1x")
        logoimg.contentMode = .scaleAspectFill
        return logoimg
    }()
    
    let divideview: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        logov.clipsToBounds = true
        return logov
    }()
    
    let dividerImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        img.clipsToBounds = true
        img.image = UIImage(named: "bookmarkdivider1x")
        return img
    }()
    
    let fullNameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Firstname Lastname"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pictoIDLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "pictoid"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(self.mainview)
        self.mainview.anchor(top: self.contentView.topAnchor, left: self.contentView.leftAnchor, bottom: self.contentView.bottomAnchor, right: self.contentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainview.fillSuperview()
        
        self.mainview.addSubview(self.connectionView)
        self.connectionView.anchor(top: nil, left: nil, bottom: nil, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 25, width: 65, height: 30)
        self.connectionView.centerYAnchor.constraint(equalTo: self.mainview.centerYAnchor).isActive = true
        
        self.connectionView.addSubview(self.connectionImageview)
        self.connectionImageview.anchor(top: self.connectionView.topAnchor, left: self.connectionView.leftAnchor, bottom: self.connectionView.bottomAnchor, right: self.connectionView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.connectionView.addSubview(self.connectionButton)
        self.connectionButton.anchor(top: self.connectionView.topAnchor, left: self.connectionView.leftAnchor, bottom: self.connectionView.bottomAnchor, right: self.connectionView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainview.addSubview(self.divideview)
        self.divideview.anchor(top: nil, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1.0)
        
        self.divideview.addSubview(self.dividerImage)
        self.dividerImage.anchor(top: self.divideview.topAnchor, left: self.divideview.leftAnchor, bottom: self.divideview.bottomAnchor, right: self.divideview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainview.addSubview(self.userDataview)
        self.userDataview.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: nil, right: self.connectionView.leftAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 45)
        
        self.userDataview.addSubview(self.userImageView)
        self.userImageView.anchor(top: self.userDataview.topAnchor, left: self.userDataview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        self.userImageView.layer.cornerRadius = 22.5
        self.userImageView.clipsToBounds = true
        
        self.userDataview.addSubview(self.fullNameLable)
        self.fullNameLable.anchor(top: self.userDataview.topAnchor, left: self.userImageView.rightAnchor, bottom: nil, right: self.userDataview.rightAnchor, paddingTop: 5, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 17)
        
        self.userDataview.addSubview(self.pictoIDLable)
        self.pictoIDLable.anchor(top: self.fullNameLable.bottomAnchor, left: self.userImageView.rightAnchor, bottom: nil, right: self.userDataview.rightAnchor, paddingTop: 4, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 13)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
