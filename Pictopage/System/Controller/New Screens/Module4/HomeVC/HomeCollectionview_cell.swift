//
//  HomeCollectionview_cell.swift
//  Pictopage
//
//  Created by Grewon on 31/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class HomeCollectionview_cell: UICollectionViewCell {
    
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
        logoimg.contentMode = .scaleToFill
        logoimg.backgroundColor = UIColor(red: 230.0/255.0, green: 230.0/255.0, blue: 230.0/255.0, alpha: 1.0)
        return logoimg
    }()
    
    let userDataView: UIView = {
        let v = UIView()
        return v
    }()
    
    let userDataViewBackgroundShadowImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "HomePageDataBottomShadow1x")
        logoimg.contentMode = .scaleToFill
        return logoimg
    }()
    
    
    let userImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "userLogo1x")
        logoimg.contentMode = .scaleAspectFill
        return logoimg
    }()
    
    let userNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.text = "Picto ID"
        lbl.font = UIFont(name: "HelveticaNeue-Thin", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.text = "to Pagename"
        lbl.font = UIFont(name: "HelveticaNeue-Thin", size: 9.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let extraPostView: UIView = {
        let v = UIView()
        return v
    }()
    
    let extraPostTextView: UIView = {
        let v = UIView()
        return v
    }()
    
    let RightArrowImage: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "rightArrowWhite_1x")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let extraPostCountLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "23"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let extraPostButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    
    let extraPostBackView: UIView = {
        let v = UIView()
        return v
    }()
    
    let LeftArrowImage: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "back")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let extraPostBackButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    
        
        self.addSubview(self.mainview)
        self.mainview.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainview.clipsToBounds = true
        
        self.mainview.addSubview(self.postView)
        self.postView.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 15, paddingLeft: 15, paddingBottom: 11, paddingRight: 15, width: 0, height: 0)
        self.postView.clipsToBounds = true
        
        self.postView.addSubview(self.postImageview)
        self.postImageview.anchor(top: self.postView.topAnchor, left: self.postView.leftAnchor, bottom: self.postView.bottomAnchor, right: self.postView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.postView.addSubview(self.userDataView)
        self.userDataView.anchor(top: nil, left: self.postView.leftAnchor, bottom: self.postView.bottomAnchor, right: self.postView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 38)
        
        self.userDataView.addSubview(self.userDataViewBackgroundShadowImageview)
        self.userDataViewBackgroundShadowImageview.anchor(top: self.userDataView.topAnchor, left: self.userDataView.leftAnchor, bottom: self.userDataView.bottomAnchor, right: self.userDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.userDataView.addSubview(self.userImageview)
        self.userImageview.anchor(top: self.userDataView.topAnchor, left: self.userDataView.leftAnchor, bottom: nil, right: nil, paddingTop: 7, paddingLeft: 3, paddingBottom: 0, paddingRight: 0, width: 21, height: 21)
        self.userImageview.layer.cornerRadius = 10.5
        self.userImageview.clipsToBounds = true
        
        self.userDataView.addSubview(self.userNameLable)
        self.userNameLable.anchor(top: self.userDataView.topAnchor, left: self.userImageview.rightAnchor, bottom: nil, right: self.userDataView.rightAnchor, paddingTop: 5, paddingLeft: 4, paddingBottom: 0, paddingRight: 4, width: 0, height: 13)
    
        self.userDataView.addSubview(self.pageNameLable)
        self.pageNameLable.anchor(top: self.userNameLable.bottomAnchor, left: self.userImageview.rightAnchor, bottom: nil, right: self.userDataView.rightAnchor, paddingTop: 0, paddingLeft: 4, paddingBottom: 0, paddingRight: 0, width: 0, height: 11)
        
        self.postView.addSubview(self.extraPostView)
        self.extraPostView.anchor(top: self.postView.topAnchor, left: nil, bottom: nil, right: self.postView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 0, paddingRight: 3, width: 41, height: 26)
        self.extraPostView.layer.cornerRadius = 10.0
        self.extraPostView.clipsToBounds = true
        self.extraPostView.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.56)
        
        self.extraPostView.addSubview(self.extraPostTextView)
        self.extraPostTextView.anchor(top: self.extraPostView.topAnchor, left: self.extraPostView.leftAnchor, bottom: self.extraPostView.bottomAnchor, right: self.extraPostView.rightAnchor, paddingTop: 2.5, paddingLeft: 4, paddingBottom: 2.5, paddingRight: 4, width: 0, height: 0)
        
        self.extraPostTextView.addSubview(self.RightArrowImage)
        self.RightArrowImage.anchor(top: nil, left: nil, bottom: nil, right: self.extraPostTextView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 6.25, height: 10.94)
        self.RightArrowImage.centerYAnchor.constraint(equalTo: self.extraPostTextView.centerYAnchor).isActive = true
        
        self.extraPostTextView.addSubview(self.extraPostCountLable)
        self.extraPostCountLable.anchor(top: self.extraPostTextView.topAnchor, left: self.extraPostTextView.leftAnchor, bottom: self.extraPostTextView.bottomAnchor, right: self.RightArrowImage.leftAnchor, paddingTop: 2, paddingLeft: 2, paddingBottom: 2, paddingRight: 5, width: 0, height: 0)
        
        self.extraPostView.addSubview(self.extraPostButton)
        self.extraPostButton.anchor(top: self.extraPostView.topAnchor, left: self.extraPostView.leftAnchor, bottom: self.extraPostView.bottomAnchor, right: self.extraPostView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.postView.addSubview(self.extraPostBackView)
        self.extraPostBackView.anchor(top: self.postView.topAnchor, left: nil, bottom: nil, right: self.postView.rightAnchor, paddingTop: 3.5, paddingLeft: 0, paddingBottom: 0, paddingRight: 3.5, width: 25, height: 25)
        self.extraPostBackView.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.56)
        self.extraPostBackView.layer.cornerRadius = 12.5
        self.extraPostBackView.clipsToBounds = true
        
        self.extraPostBackView.addSubview(self.LeftArrowImage)
        self.LeftArrowImage.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 7, height: 11)
        self.LeftArrowImage.centerXAnchor.constraint(equalTo: self.extraPostBackView.centerXAnchor).isActive = true
        self.LeftArrowImage.centerYAnchor.constraint(equalTo: self.extraPostBackView.centerYAnchor).isActive = true
        
        self.extraPostBackView.addSubview(self.extraPostBackButton)
        self.extraPostBackButton.anchor(top: self.extraPostBackView.topAnchor, left: self.extraPostBackView.leftAnchor, bottom: self.extraPostBackView.bottomAnchor, right: self.extraPostBackView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
