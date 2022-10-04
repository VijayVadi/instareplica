//
//  bookamark_userCell.swift
//  Pictopage
//
//  Created by Grewon on 28/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class bookamark_userCell: UITableViewCell {

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
        logov.clipsToBounds = true
        return logov
    }()
    
    let subview: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let divideview: UIView = {
        let logov = UIView()
        logov.backgroundColor = GrayD8
        logov.clipsToBounds = true
        return logov
    }()
    
    let userImageview: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let userImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    let userTypeView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let userTypeLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Owner"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let userTypeButton: UIButton = {
        let btn = UIButton()
        btn.clipsToBounds = true
        btn.setTitle("", for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    
    let userTypeImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "crown1x")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let textView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let TitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Vijay Vadi"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Vijay Vadi"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 9.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let balckDotviewOne: UIView = {
        let v = UIView()
        v.backgroundColor = .black
        v.clipsToBounds = true
        return v
    }()
    
    let pageCreatorLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Page Creator"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 9.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let balckDotviewtwo: UIView = {
        let v = UIView()
        v.backgroundColor = .black
        v.clipsToBounds = true
        return v
    }()
    
    let totalPostLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "8 post"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 9.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var blackDotViewOneWidthConstraint = NSLayoutConstraint()
    var pageCretorLeftConstraint = NSLayoutConstraint()
    var blackDotViewOneLeftConstraint = NSLayoutConstraint()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.backgroundColor = .clear
        
        self.mainView.addSubview(self.divideview)
        self.divideview.anchor(top: nil, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.mainView.addSubview(self.subview)
        self.subview.anchor(top: nil, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 40)
        self.subview.centerYAnchor.constraint(equalTo: self.mainView.centerYAnchor).isActive = true
        
        self.subview.addSubview(self.userImageview)
        self.userImageview.anchor(top: nil, left: self.subview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        self.userImageview.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        self.userImageview.layer.cornerRadius = 20
        self.userImageview.layer.borderColor = Gray97.cgColor
        self.userImageview.layer.borderWidth = 1.0
        
        self.userImageview.addSubview(self.userImage)
        self.userImage.anchor(top: self.userImageview.topAnchor, left: self.userImageview.leftAnchor, bottom: self.userImageview.bottomAnchor, right: self.userImageview.rightAnchor, paddingTop: 1, paddingLeft: 1, paddingBottom: 1, paddingRight: 1, width: 0, height: 0)
        self.userImage.layer.cornerRadius = 19.5
        self.userImage.backgroundColor = GrayD8
        
        self.subview.addSubview(self.userTypeView)
        self.userTypeView.anchor(top: nil, left: nil, bottom: nil, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 15, width: 85, height: 27)
        self.userTypeView.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        self.userTypeView.layer.cornerRadius = 13.5
        self.userTypeView.backgroundColor = .black
        
        self.userTypeView.addSubview(self.userTypeLable)
        self.userTypeLable.anchor(top: self.userTypeView.topAnchor, left: self.userTypeView.leftAnchor, bottom: self.userTypeView.bottomAnchor, right: self.userTypeView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.userTypeView.addSubview(self.userTypeButton)
        self.userTypeButton.anchor(top: self.userTypeView.topAnchor, left: self.userTypeView.leftAnchor, bottom: self.userTypeView.bottomAnchor, right: self.userTypeView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.userTypeImageView)
        self.userTypeImageView.anchor(top: nil, left: nil, bottom: nil, right: self.userTypeView.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 4, width: 27, height: 27)
        self.userTypeImageView.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        
        self.subview.addSubview(self.textView)
        self.textView.anchor(top: nil, left: self.userImageview.rightAnchor, bottom: nil, right: self.userTypeImageView.leftAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 8, width: 0, height: 29)
        self.textView.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        
        self.textView.addSubview(self.TitleLable)
        self.TitleLable.anchor(top: self.textView.topAnchor, left: self.textView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
        self.textView.addSubview(self.descLable)
        self.descLable.anchor(top: nil, left: self.textView.leftAnchor, bottom: self.textView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 11)
        
        self.textView.addSubview(self.balckDotviewOne)
        self.balckDotviewOne.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 3)
        self.balckDotviewOne.centerYAnchor.constraint(equalTo: self.descLable.centerYAnchor).isActive = true
        self.balckDotviewOne.layer.cornerRadius = 1.5
        self.blackDotViewOneWidthConstraint = self.balckDotviewOne.widthAnchor.constraint(equalToConstant: 3)
        self.blackDotViewOneWidthConstraint.isActive = true
        self.blackDotViewOneLeftConstraint = self.balckDotviewOne.leftAnchor.constraint(equalTo: self.descLable.rightAnchor, constant: 5)
        self.blackDotViewOneLeftConstraint.isActive = true
        
        self.textView.addSubview(self.pageCreatorLable)
        self.pageCreatorLable.anchor(top: nil, left: nil, bottom: self.textView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 11)
        self.pageCretorLeftConstraint = self.pageCreatorLable.leftAnchor.constraint(equalTo: self.balckDotviewOne.rightAnchor, constant: 8)
        self.pageCretorLeftConstraint.isActive = true
        
        self.textView.addSubview(self.balckDotviewtwo)
        self.balckDotviewtwo.anchor(top: nil, left: self.pageCreatorLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 3, height: 3)
        self.balckDotviewtwo.centerYAnchor.constraint(equalTo: self.descLable.centerYAnchor).isActive = true
        self.balckDotviewtwo.layer.cornerRadius = 1.5
        
        self.textView.addSubview(self.totalPostLable)
        self.totalPostLable.anchor(top: nil, left: self.balckDotviewtwo.rightAnchor, bottom: self.textView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 11)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
