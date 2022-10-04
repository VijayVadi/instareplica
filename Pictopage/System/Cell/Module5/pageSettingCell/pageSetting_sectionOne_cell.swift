//
//  pageSetting_sectionOne_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 02/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class pageSetting_sectionOne_cell: UITableViewCell {

    let mainView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let subView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    
    // notification view
    let NotificationView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let NotificationImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "Notification_mute1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let NotificationTitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Notifications"
        lbl.font = UIFont(name: "HelveticaNeue", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let NotificationDescriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Notifications for this page are enabled"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let notificationSwitchImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "notificationSwitch1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let notificationSwitchButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    // bookmark view
    let bookmarkView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let bookmarkImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "pageSettingBookmark1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let bookmarkTitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let bookmarkDescriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "View everyone who has bookmaked this page"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // bookmark view
    let changeHeaderView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let changeHeaderImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "changeHeader1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let changeHeaderTitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Change Header"
        lbl.font = UIFont(name: "HelveticaNeue", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let changeHeaderDescriptionLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Only page owners and admins can change this."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 280)
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 15, paddingBottom: 25, paddingRight: 15, width: 0, height: 0)
        
        
        // setup notification view
        
        self.subView.addSubview(self.NotificationView)
        self.NotificationView.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 75)
        self.NotificationView.layer.applySketchShadow()
        self.NotificationView.layer.cornerRadius = 25.0
        
        self.NotificationView.addSubview(self.NotificationImageView)
        self.NotificationImageView.anchor(top: nil, left: self.NotificationView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 19, paddingBottom: 0, paddingRight: 0, width: 44, height: 45)
        self.NotificationImageView.centerYAnchor.constraint(equalTo: self.NotificationView.centerYAnchor).isActive = true
        
        self.NotificationView.addSubview(self.notificationSwitchImageView)
        self.notificationSwitchImageView.anchor(top: nil, left: nil, bottom: nil, right: self.NotificationView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 20, width: 51, height: 24)
        self.notificationSwitchImageView.centerYAnchor.constraint(equalTo: self.NotificationView.centerYAnchor).isActive = true
        
        self.NotificationView.addSubview(self.notificationSwitchButton)
        self.notificationSwitchButton.anchor(top: nil, left: nil, bottom: nil, right: self.NotificationView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 20, width: 51, height: 30)
        self.notificationSwitchButton.centerYAnchor.constraint(equalTo: self.NotificationView.centerYAnchor).isActive = true
        
        self.NotificationView.addSubview(self.NotificationTitleLable)
        self.NotificationTitleLable.anchor(top: self.NotificationView.topAnchor, left: self.NotificationImageView.rightAnchor, bottom: nil, right: self.notificationSwitchImageView.leftAnchor, paddingTop: 9, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 0, height: 21)
        
        self.NotificationView.addSubview(self.NotificationDescriptionLable)
        self.NotificationDescriptionLable.anchor(top: self.NotificationTitleLable.bottomAnchor, left: self.NotificationImageView.rightAnchor, bottom: self.NotificationView.bottomAnchor, right: self.notificationSwitchImageView.leftAnchor, paddingTop: 1, paddingLeft: 12, paddingBottom: 8, paddingRight: 12    , width: 0, height: 0)
        
        // setup Bookmark view
        
        self.subView.addSubview(self.bookmarkView)
        self.bookmarkView.anchor(top: self.NotificationView.bottomAnchor, left: self.subView.leftAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 75)
        self.bookmarkView.layer.applySketchShadow()
        self.bookmarkView.layer.cornerRadius = 25.0
        
        self.bookmarkView.addSubview(self.bookmarkImageView)
        self.bookmarkImageView.anchor(top: nil, left: self.bookmarkView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 18, paddingBottom: 0, paddingRight: 0, width: 46, height: 43)
        self.bookmarkImageView.centerYAnchor.constraint(equalTo: self.bookmarkView.centerYAnchor).isActive = true
        
        self.bookmarkView.addSubview(self.bookmarkTitleLable)
        self.bookmarkTitleLable.anchor(top: self.bookmarkView.topAnchor, left: self.bookmarkImageView.rightAnchor, bottom: nil, right: self.bookmarkView.rightAnchor, paddingTop: 9, paddingLeft: 12, paddingBottom: 0, paddingRight: 15, width: 0, height: 21)
        
        self.bookmarkView.addSubview(self.bookmarkDescriptionLable)
        self.bookmarkDescriptionLable.anchor(top: self.bookmarkTitleLable.bottomAnchor, left: self.bookmarkImageView.rightAnchor, bottom: self.bookmarkView.bottomAnchor, right: self.bookmarkView.rightAnchor, paddingTop: 1, paddingLeft: 12, paddingBottom: 8, paddingRight: 12, width: 0, height: 0)
        
        // setup change header view
        
        self.subView.addSubview(self.changeHeaderView)
        self.changeHeaderView.anchor(top: self.bookmarkView.bottomAnchor, left: self.subView.leftAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 75)
        self.changeHeaderView.layer.applySketchShadow()
        self.changeHeaderView.layer.cornerRadius = 25.0
        
        self.changeHeaderView.addSubview(self.changeHeaderImageView)
        self.changeHeaderImageView.anchor(top: nil, left: self.changeHeaderView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 65, height: 39)
        self.changeHeaderImageView.centerYAnchor.constraint(equalTo: self.changeHeaderView.centerYAnchor).isActive = true
        
        self.changeHeaderView.addSubview(self.changeHeaderTitleLable)
        self.changeHeaderTitleLable.anchor(top: self.changeHeaderView.topAnchor, left: self.changeHeaderImageView.rightAnchor, bottom: nil, right: self.changeHeaderView.rightAnchor, paddingTop: 9, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 21)
        
        self.changeHeaderView.addSubview(self.changeHeaderDescriptionLable)
        self.changeHeaderDescriptionLable.anchor(top: self.changeHeaderTitleLable.bottomAnchor, left: self.changeHeaderImageView.rightAnchor, bottom: self.changeHeaderView.bottomAnchor, right: self.changeHeaderView.rightAnchor, paddingTop: 1, paddingLeft: 15, paddingBottom: 8, paddingRight: 15, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
