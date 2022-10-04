//
//  pageSetting_sectionFive_Cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 02/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class pageSetting_sectionFive_Cell: UITableViewCell {

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
    
    let PageImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "loginProfilePageIcon1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFill
        return backButtonImageView
    }()
    
    let createdOnLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Created on"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let dateLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Month #, Year"
        lbl.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
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
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 90)
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 20, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 0)
        
        self.subView.addSubview(self.PageImageview)
        self.PageImageview.anchor(top: self.subView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 30, height: 30)
        self.PageImageview.layer.cornerRadius = 15
        self.PageImageview.clipsToBounds = true
        self.PageImageview.centerXAnchor.constraint(equalTo: self.subView.centerXAnchor).isActive = true
        
        self.subView.addSubview(self.createdOnLable)
        self.createdOnLable.anchor(top: self.PageImageview.bottomAnchor, left: self.subView.leftAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 4, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 16)
        
        self.subView.addSubview(self.dateLable)
        self.dateLable.anchor(top: self.createdOnLable.bottomAnchor, left: self.subView.leftAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 5, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 15)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
