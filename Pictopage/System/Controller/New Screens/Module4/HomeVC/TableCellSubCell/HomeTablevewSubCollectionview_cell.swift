//
//  HomeTablevewSubCollectionview_cell.swift
//  Pictopage
//
//  Created by Grewon on 31/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class HomeTablevewSubCollectionview_cell: UICollectionViewCell {
 
    
    let mainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let postView: UIView = {
        let v = UIView()
        return v
    }()
    
    let postImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "post1")
        logoimg.contentMode = .scaleToFill
        return logoimg
    }()
    
    let userViewView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let userImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "userLogo1x")
        logoimg.contentMode = .scaleAspectFill
        return logoimg
    }()
    
    let userNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Vijay Vadi"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.mainview)
        self.mainview.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainview.clipsToBounds = true
        self.mainview.backgroundColor = .clear
        
        self.mainview.addSubview(self.postView)
        self.postView.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 18, width: 0, height: 0)
        self.postView.clipsToBounds = true
        self.postView.backgroundColor = .clear
        
        self.postView.addSubview(self.userViewView)
        self.userViewView.anchor(top: nil, left: self.postView.leftAnchor, bottom: self.postView.bottomAnchor, right: self.postView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
        self.userViewView.addSubview(self.userImageview)
        self.userImageview.anchor(top: nil, left: self.userViewView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        self.userImageview.layer.cornerRadius = 10
        self.userImageview.clipsToBounds = true
        self.userImageview.centerYAnchor.constraint(equalTo: self.userViewView.centerYAnchor).isActive = true
        
        self.userViewView.addSubview(self.userNameLable)
        self.userNameLable.anchor(top: self.userViewView.topAnchor, left: self.userImageview.rightAnchor, bottom: self.userViewView.bottomAnchor, right: self.userViewView.rightAnchor, paddingTop: 0, paddingLeft: 2, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.postView.addSubview(self.postImageview)
        self.postImageview.anchor(top: self.postView.topAnchor, left: self.postView.leftAnchor, bottom: self.userViewView.topAnchor, right: self.postView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 4, paddingRight: 0, width: 0, height: 0)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
