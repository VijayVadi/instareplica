//
//  loginUserProfile_pageCell.swift
//  Pictopage
//
//  Created by Grewon on 02/09/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class loginUserProfile_pageCell: UITableViewCell {

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
        logov.backgroundColor = .clear
        return logov
    }()
    
    let subview: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let subviewBackgroundImageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        return img
    }()
    
    let userDataView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        logov.backgroundColor = .clear
        return logov
    }()
    
    let userImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.image = UIImage(named: "loginProfilePageIcon1x")
        img.clipsToBounds = true
        return img
    }()
    
    let textView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        logov.backgroundColor = .clear
        return logov
    }()
    
    let titleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Page Name"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let usernameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Page ID"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let dotview: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    let bookmarkLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "# Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let clickButton: DCustomButton = {
        let btn = DCustomButton()
        btn.setTitle("", for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    
    let loadMoreDataView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        logov.backgroundColor = .clear
        return logov
    }()
    
    let loadMoreDataSubView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        logov.backgroundColor = .clear
        return logov
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .clear
        
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.clipsToBounds = true
        
        self.mainView.addSubview(self.subview)
        self.subview.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 18, paddingBottom: 0, paddingRight: 18, width: 0, height: 0)
        
        self.subview.addSubview(self.subviewBackgroundImageView)
        self.subviewBackgroundImageView.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.userDataView)
        self.userDataView.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: nil, right: self.subview.rightAnchor, paddingTop: 15, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 0, height: 54)
        
        self.userDataView.addSubview(self.userImage)
        self.userImage.anchor(top: nil, left: self.userDataView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 54, height: 54)
        self.userImage.layer.cornerRadius = 27
        self.userImage.centerYAnchor.constraint(equalTo: self.userDataView.centerYAnchor).isActive = true

        self.userDataView.addSubview(self.textView)
        self.textView.anchor(top: nil, left: self.userImage.rightAnchor, bottom: nil, right: self.userDataView.rightAnchor, paddingTop: 0, paddingLeft: 11, paddingBottom: 0, paddingRight: 8, width: 0, height: 36)
        self.textView.centerYAnchor.constraint(equalTo: self.userDataView.centerYAnchor).isActive = true

        self.textView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.textView.topAnchor, left: self.textView.leftAnchor, bottom: nil, right: self.textView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)

        self.textView.addSubview(self.usernameLable)
        self.usernameLable.anchor(top: self.titleLable.bottomAnchor, left: self.textView.leftAnchor, bottom: nil, right: nil, paddingTop: 3, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)

        self.textView.addSubview(self.dotview)
        self.dotview.anchor(top: nil, left: self.usernameLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 5, height: 5)
        self.dotview.layer.cornerRadius = 2.5
        self.dotview.centerYAnchor.constraint(equalTo: self.usernameLable.centerYAnchor).isActive = true

        self.textView.addSubview(self.bookmarkLable)
        self.bookmarkLable.anchor(top: self.titleLable.bottomAnchor, left: self.dotview.rightAnchor, bottom: nil, right: nil, paddingTop: 3, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)

        self.mainView.addSubview(self.clickButton)
        self.clickButton.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.loadMoreDataView)
        self.loadMoreDataView.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: nil, right: self.subview.rightAnchor, paddingTop: 14, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 0, height: 45)
        
        self.loadMoreDataView.addSubview(self.loadMoreDataSubView)
        self.loadMoreDataSubView.anchor(top: self.loadMoreDataSubView.topAnchor, left: self.loadMoreDataView.leftAnchor, bottom: nil, right: self.loadMoreDataView.rightAnchor, paddingTop: 1, paddingLeft: 16, paddingBottom: 0, paddingRight: 16, width: 0, height: 40)
        self.loadMoreDataSubView.layer.cornerRadius = 20
        self.loadMoreDataSubView.backgroundColor = whiteF7F7F9
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
