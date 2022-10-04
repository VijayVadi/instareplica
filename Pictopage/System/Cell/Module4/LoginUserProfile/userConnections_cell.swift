//
//  userConnections_cell.swift
//  Pictopage
//
//  Created by RAVI on 31/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class userConnections_cell: UICollectionViewCell {
    
    let mainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let subview: UIView = {
        let v = UIView()
        return v
    }()
    
    let BackgroundCircleImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "menuCircle")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let userImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "userLogo1x")
        logoimg.contentMode = .scaleAspectFill
        logoimg.clipsToBounds = true
        return logoimg
    }()
    
    let lableViewAll: UILabel = {
        let lbl = UILabel()
        lbl.text = "View\nAll"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 11.0)!
        lbl.textColor = .black
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.mainview)
        self.mainview.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainview.addSubview(self.subview)
        self.subview.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 14, width: 0, height: 0)
        self.subview.clipsToBounds = true
        
        self.subview.addSubview(self.BackgroundCircleImage)
        self.BackgroundCircleImage.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.userImageview)
        self.userImageview.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userImageview.clipsToBounds = true
        
        self.subview.addSubview(self.lableViewAll)
        self.lableViewAll.anchor(top: self.subview.topAnchor, left: self.subview.leftAnchor, bottom: self.subview.bottomAnchor, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
