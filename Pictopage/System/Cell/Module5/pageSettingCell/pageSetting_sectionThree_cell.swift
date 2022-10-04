//
//  pageSetting_sectionThree_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 02/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class pageSetting_sectionThree_cell: UITableViewCell {

    let mainView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let subView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let dataView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let leftArrowImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "iconSetting_rightArrowBlack_1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let pageSettingTitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Page Setting"
        lbl.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let tapButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        return btn
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 48)
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 0)
        
        self.subView.addSubview(self.dataView)
        self.dataView.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        self.dataView.addSubview(self.leftArrowImageView)
        self.leftArrowImageView.anchor(top: nil, left: nil, bottom: nil, right: self.dataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 9, height: 13)
        self.leftArrowImageView.centerYAnchor.constraint(equalTo: self.dataView.centerYAnchor).isActive = true
        
        self.dataView.addSubview(self.pageSettingTitleLable)
        self.pageSettingTitleLable.anchor(top: self.dataView.topAnchor, left: self.dataView.leftAnchor, bottom: self.dataView.bottomAnchor, right: self.leftArrowImageView.leftAnchor, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 0)
        
        self.mainView.addSubview(self.tapButton)
        self.tapButton.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
