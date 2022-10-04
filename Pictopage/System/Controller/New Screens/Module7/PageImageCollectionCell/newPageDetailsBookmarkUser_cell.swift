//
//  newPageDetailsBookmarkUser_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 24/01/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class newPageDetailsBookmarkUser_cell: UICollectionViewCell {
    
    let mainview: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let subview: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let BackgroundCircleImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "menuCircle")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        backimage.backgroundColor = .clear
        return backimage
    }()
    
    let userImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "userLogo1x")
        logoimg.contentMode = .scaleAspectFill
        logoimg.clipsToBounds = true
        logoimg.backgroundColor = .clear
        return logoimg
    }()
    
    let kingImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "crown")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let lableViewAll: UILabel = {
        let lbl = UILabel()
        lbl.text = "View\nAll"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 11.0)!
        lbl.textColor = .black
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        lbl.backgroundColor = .clear
        return lbl
    }()
    
    
    
//    let userImageview: UIImageView = {
//        let logoimg = UIImageView()
//        logoimg.image = UIImage(named: "userLogo1x")
//        logoimg.contentMode = .scaleAspectFill
//        logoimg.clipsToBounds = true
//        return logoimg
//    }()
//
//    let kingImageview: UIImageView = {
//        let logoimg = UIImageView()
//        logoimg.image = UIImage(named: "crown")
//        logoimg.contentMode = .scaleAspectFit
//        return logoimg
//    }()
//
//    let totalCountUserLable: UILabel = {
//        let lbl = UILabel()
//        lbl.textAlignment = .center
//        lbl.textColor = .white
//        lbl.text = "#\nMore"
//        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 11.0)!
//        lbl.numberOfLines = 0
//        return lbl
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.mainview)
        self.mainview.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainview.addSubview(self.subview)
        self.subview.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
//        self.subview.clipsToBounds = true
        
        self.subview.addSubview(self.BackgroundCircleImage)
        self.BackgroundCircleImage.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.userImageview)
        self.userImageview.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userImageview.clipsToBounds = true
        
        self.subview.addSubview(self.kingImageview)
        self.kingImageview.anchor(top: nil, left: nil, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 16, height: 19)
        
        self.subview.addSubview(self.lableViewAll)
        self.lableViewAll.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
//        self.mainview.addSubview(self.subview)
//        self.subview.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 0.5, paddingLeft: 4, paddingBottom: 0.5, paddingRight: 4, width: 0, height: 0)
//
//        self.subview.addSubview(self.userImageview)
//        self.userImageview.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
//        self.userImageview.backgroundColor = GrayD8
//
//        self.subview.addSubview(self.kingImageview)
//        self.kingImageview.anchor(top: nil, left: nil, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 24, height: 17)
//
//        self.subview.addSubview(self.totalCountUserLable)
//        self.totalCountUserLable.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
//        self.totalCountUserLable.centerXAnchor.constraint(equalTo: self.subview.centerXAnchor).isActive = true
//        self.totalCountUserLable.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
