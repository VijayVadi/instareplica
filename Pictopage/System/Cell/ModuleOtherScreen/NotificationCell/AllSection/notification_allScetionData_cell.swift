//
//  notification_allScetionData_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 14/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class notification_allScetionData_cell: UITableViewCell {

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
        logov.backgroundColor = .white
        return logov
    }()
    
    let subview: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let pageDataView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let pageIconImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "loginProfilePageIcon1x")
        logoimg.contentMode = .scaleAspectFill
        return logoimg
    }()
    
    let pageNameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "PageName"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let TimeLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "#m ago"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let commentDataView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let commentedUserIconImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "userLogo1x")
        logoimg.contentMode = .scaleAspectFill
        return logoimg
    }()
    
    let postIconImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "")
        logoimg.contentMode = .scaleAspectFill
        logoimg.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        return logoimg
    }()
    
    let pictoIDLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "pictoID"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let commentTextLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Commented on your Post"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var postIconWidthConstraint = NSLayoutConstraint()
    var commentedUserIconWidthConstraint = NSLayoutConstraint()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
            
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainView.addSubview(self.subview)
        self.subview.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 0)
        self.subview.backgroundColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0, alpha: 0.15)
        self.subview.layer.cornerRadius = 15.0
        self.subview.clipsToBounds = true
        
        // setup pageData view
        self.subview.addSubview(self.pageDataView)
        self.pageDataView.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: nil, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 29)
        
        self.pageDataView.addSubview(self.pageIconImageView)
        self.pageIconImageView.anchor(top: self.pageDataView.topAnchor, left: self.pageDataView.leftAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 24, height: 24)
        self.pageIconImageView.layer.cornerRadius = 12.0
        self.pageIconImageView.clipsToBounds = true
        
        self.pageDataView.addSubview(self.TimeLable)
        self.TimeLable.anchor(top: self.pageDataView.topAnchor, left: nil, bottom: nil, right: self.pageDataView.rightAnchor, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 10, width: 0, height: 16)
        
        self.pageDataView.addSubview(self.pageNameLable)
        self.pageNameLable.anchor(top: self.pageDataView.topAnchor, left: self.pageIconImageView.rightAnchor, bottom: nil, right: self.TimeLable.leftAnchor, paddingTop: 8, paddingLeft: 5, paddingBottom: 0, paddingRight: 5, width: 0, height: 16)
        
        // setup commentData view
        self.subview.addSubview(self.commentDataView)
        self.commentDataView.anchor(top: self.pageDataView.bottomAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 5, paddingBottom: 5, paddingRight: 14, width: 0, height: 0)
        self.commentDataView.clipsToBounds = true

        self.commentDataView.addSubview(self.commentedUserIconImageView)
        self.commentedUserIconImageView.anchor(top: self.commentDataView.topAnchor, left: self.commentDataView.leftAnchor, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 44)
        self.commentedUserIconWidthConstraint = self.commentedUserIconImageView.widthAnchor.constraint(equalToConstant: 44.0)
        self.commentedUserIconWidthConstraint.isActive = true
        self.commentedUserIconImageView.layer.cornerRadius = 22.0
        self.commentedUserIconImageView.clipsToBounds = true
        
        self.commentDataView.addSubview(self.postIconImageView)
        self.postIconImageView.anchor(top: self.commentDataView.topAnchor, left: nil, bottom: nil, right: self.commentDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 35, height: 55)
        self.postIconWidthConstraint = self.postIconImageView.widthAnchor.constraint(equalToConstant: 35.0)
        self.postIconWidthConstraint.isActive = true
        self.postIconImageView.layer.cornerRadius = 3.0
        self.postIconImageView.clipsToBounds = true

        self.commentDataView.addSubview(self.pictoIDLable)
        self.pictoIDLable.anchor(top: self.commentDataView.topAnchor, left: self.commentedUserIconImageView.rightAnchor, bottom: nil, right: self.postIconImageView.leftAnchor, paddingTop: 11, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 17)
        
        self.commentDataView.addSubview(self.commentTextLable)
        self.commentTextLable.anchor(top: self.pictoIDLable.bottomAnchor, left: self.commentedUserIconImageView.rightAnchor, bottom: self.commentDataView.bottomAnchor, right: self.postIconImageView.leftAnchor, paddingTop: 3, paddingLeft: 8, paddingBottom: 11, paddingRight: 8, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
