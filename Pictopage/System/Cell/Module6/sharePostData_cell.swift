//
//  sharePostData_cell.swift
//  Pictopage
//
//  Created by Grewon on 29/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class sharePostData_cell: UITableViewCell {

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    let mainView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let subview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let subviewBackgroundImageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        return img
    }()
    
    let userDataView: UIView = {
        let logov = UIView()
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
    
    let Checkview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let checkImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "check_white")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let textView: UIView = {
        let logov = UIView()
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
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
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
        lbl.text = "Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let selectCheckButton: DCustomButton = {
        let btn = DCustomButton()
        return btn
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.clipsToBounds = true
        
        self.mainView.addSubview(self.subview)
        self.subview.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 18, paddingBottom: 0, paddingRight: 18, width: 0, height: 0)
        self.subview.clipsToBounds = true
        
        self.subview.addSubview(self.subviewBackgroundImageView)
        self.subviewBackgroundImageView.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.userDataView)
        self.userDataView.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: nil, right: self.subview.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 48)
        
        self.userDataView.addSubview(self.userImageview)
        self.userImageview.anchor(top: nil, left: self.userDataView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 48, height: 48)
        self.userImageview.centerYAnchor.constraint(equalTo: self.userDataView.centerYAnchor).isActive = true
        self.userImageview.layer.cornerRadius = 24
        self.userImageview.clipsToBounds = true
        
        self.userImageview.addSubview(self.userImage)
        self.userImage.anchor(top: self.userImageview.topAnchor, left: self.userImageview.leftAnchor, bottom: self.userImageview.bottomAnchor, right: self.userImageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userImage.layer.cornerRadius = 24
        
        self.userDataView.addSubview(self.Checkview)
        self.Checkview.anchor(top: nil, left: nil, bottom: nil, right: self.userDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 10, width: 26, height: 26)
        self.Checkview.layer.cornerRadius = 13.0
        self.Checkview.clipsToBounds = true
        self.Checkview.centerYAnchor.constraint(equalTo: self.userDataView.centerYAnchor).isActive = true
        
        self.Checkview.addSubview(self.checkImageView)
        self.checkImageView.anchor(top: self.Checkview.topAnchor, left: self.Checkview.leftAnchor, bottom: self.Checkview.bottomAnchor, right: self.Checkview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        self.userDataView.addSubview(self.textView)
        self.textView.anchor(top: nil, left: self.userImageview.rightAnchor, bottom: nil, right: self.Checkview.leftAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 8, width: 0, height: 48)
        self.textView.centerYAnchor.constraint(equalTo: self.userDataView.centerYAnchor).isActive = true

        self.textView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.textView.topAnchor, left: self.textView.leftAnchor, bottom: nil, right: self.textView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)

        self.textView.addSubview(self.usernameLable)
        self.usernameLable.anchor(top: self.titleLable.bottomAnchor, left: self.textView.leftAnchor, bottom: nil, right: nil, paddingTop: 3, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)

        self.textView.addSubview(self.dotview)
        self.dotview.anchor(top: nil, left: self.usernameLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 6, height: 6)
        self.dotview.layer.cornerRadius = 3
        self.dotview.centerYAnchor.constraint(equalTo: self.usernameLable.centerYAnchor).isActive = true

        self.textView.addSubview(self.bookmarkLable)
        self.bookmarkLable.anchor(top: self.titleLable.bottomAnchor, left: self.dotview.rightAnchor, bottom: nil, right: nil, paddingTop: 3, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
        self.subview.addSubview(self.selectCheckButton)
        self.selectCheckButton.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
