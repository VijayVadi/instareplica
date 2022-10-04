//
//  newPageDetailsCollectionViewPost_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 25/01/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class newPageDetailsCollectionViewPost_cell: UICollectionViewCell {
    
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
        logoimg.image = UIImage(named: "")
        logoimg.contentMode = .scaleToFill
        return logoimg
    }()
    
    let userDataView: UIView = {
        let v = UIView()
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
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.text = "Vijay Vadi"
        lbl.font = UIFont(name: "HelveticaNeue-Thin", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    

    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    
        
        self.addSubview(self.mainview)
        self.mainview.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainview.backgroundColor = .white
        self.mainview.clipsToBounds = true
        
        self.mainview.addSubview(self.postView)
        self.postView.anchor(top: self.mainview.topAnchor, left: self.mainview.leftAnchor, bottom: self.mainview.bottomAnchor, right: self.mainview.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 10, paddingRight: 30, width: 0, height: 0)
        self.postView.clipsToBounds = true
        
        self.postView.addSubview(self.postImageview)
        self.postImageview.anchor(top: self.postView.topAnchor, left: self.postView.leftAnchor, bottom: self.postView.bottomAnchor, right: self.postView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.postImageview.backgroundColor = UIColor(red: 230.0/255.0, green: 230.0/255.0, blue: 230.0/255.0, alpha: 1.0)
        
//        self.postView.addSubview(self.userDataView)
//        self.userDataView.anchor(top: nil, left: self.postView.leftAnchor, bottom: self.postView.bottomAnchor, right: self.postView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 27)
//        self.userDataView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.4)
//
//        self.userDataView.addSubview(self.userImageview)
//        self.userImageview.anchor(top: nil, left: self.userDataView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 18, height: 18)
//        self.userImageview.layer.cornerRadius = 9
//        self.userImageview.clipsToBounds = true
//        self.userImageview.centerYAnchor.constraint(equalTo: self.userDataView.centerYAnchor).isActive = true
//
//        self.userDataView.addSubview(self.userNameLable)
//        self.userNameLable.anchor(top: self.userDataView.topAnchor, left: self.userImageview.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 4, paddingBottom: 0, paddingRight: 0, width: 54, height: 15)
//        self.userNameLable.centerYAnchor.constraint(equalTo: self.userDataView.centerYAnchor).isActive = true
//        
//        //Stack View
//        let stackView   = UIStackView()
//        stackView.axis  = NSLayoutConstraint.Axis.horizontal
//        stackView.alignment = UIStackView.Alignment.center
//        stackView.spacing   = 5.0
//
//        stackView.addArrangedSubview(userImageview)
//        stackView.addArrangedSubview(userNameLable)
//
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//
//        self.userDataView.addSubview(stackView)
//
//        //Constraints
//
//        stackView.centerXAnchor.constraint(equalTo: self.userDataView.centerXAnchor).isActive = true
//        stackView.centerYAnchor.constraint(equalTo: self.userDataView.centerYAnchor).isActive = true
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
