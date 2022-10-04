//
//  bookmark_cell.swift
//  Pictopage
//
//  Created by Grewon on 26/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class bookmark_cell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
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
    
    let userImageview: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        logov.backgroundColor = .clear
        return logov
    }()
    
    let userImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.image = UIImage(named: "loginProfilePageIcon1x")
        return img
    }()
    
    let textView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        logov.backgroundColor = UIColor.clear
        return logov
    }()
    
    let TitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "PageName"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let blueDotview: UIView = {
        let v = UIView()
        v.backgroundColor = blue
        v.clipsToBounds = true
        return v
    }()
    
    let newPostLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "4 new post"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let IDLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "by pictoid"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let balckDotview: UIView = {
        let v = UIView()
        v.backgroundColor = .black
        v.clipsToBounds = true
        return v
    }()
    
    let timeLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        lbl.text = "# seconds ago from Firstname L."
        return lbl
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 68)
        
        self.mainView.addSubview(self.subview)
        self.subview.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 11, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 48)
        self.subview.clipsToBounds = true
        
        self.subview.addSubview(self.userImageview)
        self.userImageview.anchor(top: nil, left: self.subview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 48, height: 48)
        self.userImageview.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        self.userImageview.layer.cornerRadius = 24
        
        self.userImageview.addSubview(self.userImage)
        self.userImage.anchor(top: self.userImageview.topAnchor, left: self.userImageview.leftAnchor, bottom: self.userImageview.bottomAnchor, right: self.userImageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userImage.layer.cornerRadius = 24
        self.userImage.backgroundColor = GrayD8
        
        // data view
        
        self.subview.addSubview(self.textView)
        self.textView.anchor(top: self.subview.topAnchor, left: self.userImageview.rightAnchor, bottom: nil, right: self.subview.rightAnchor, paddingTop: 5, paddingLeft: 9, paddingBottom: 0, paddingRight: 0, width: 0, height: 37)
        
        self.textView.addSubview(self.TitleLable)
        self.TitleLable.anchor(top: self.textView.topAnchor, left: self.textView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)
        
        self.textView.addSubview(self.blueDotview)
        self.blueDotview.anchor(top: nil, left: self.TitleLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 5, height: 5)
        self.blueDotview.centerYAnchor.constraint(equalTo: self.TitleLable.centerYAnchor).isActive = true
        self.blueDotview.layer.cornerRadius = 2.5
        
        self.textView.addSubview(self.newPostLable)
        self.newPostLable.anchor(top: self.textView.topAnchor, left: self.blueDotview.rightAnchor, bottom: nil, right: nil, paddingTop: 1, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)

        self.textView.addSubview(self.IDLable)
        self.IDLable.anchor(top: self.TitleLable.bottomAnchor, left: self.textView.leftAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)

        self.textView.addSubview(self.balckDotview)
        self.balckDotview.anchor(top: nil, left: self.IDLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 5, height: 5)
        self.balckDotview.centerYAnchor.constraint(equalTo: self.IDLable.centerYAnchor).isActive = true
        self.balckDotview.layer.cornerRadius = 2.5

        self.textView.addSubview(self.timeLable)
        self.timeLable.anchor(top: self.TitleLable.bottomAnchor, left: self.balckDotview.rightAnchor, bottom: nil, right: self.textView.rightAnchor, paddingTop: 5, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 15)

        self.mainView.addSubview(self.divideview)
        self.divideview.anchor(top: nil, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1.0)
        
        self.divideview.addSubview(self.dividerImage)
        self.dividerImage.anchor(top: self.divideview.topAnchor, left: self.divideview.leftAnchor, bottom: self.divideview.bottomAnchor, right: self.divideview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
