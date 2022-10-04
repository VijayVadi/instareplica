//
//  settingLogoutCell.swift
//  Pictopage
//
//  Created by Grewon on 21/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class settingLogoutCell: UITableViewCell {

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
        logov.backgroundColor = .white
        return logov
    }()
    
    let LogoutButtonview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let LogoutButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "logoutButtonImage")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let LogoutButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainView.addSubview(self.LogoutButtonview)
        self.LogoutButtonview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 114, height: 36)
        self.LogoutButtonview.centerYAnchor.constraint(equalTo: self.mainView.centerYAnchor).isActive = true
        self.LogoutButtonview.centerXAnchor.constraint(equalTo: self.mainView.centerXAnchor).isActive = true
        
        self.LogoutButtonview.addSubview(self.LogoutButtonImageview)
        self.LogoutButtonImageview.anchor(top: self.LogoutButtonview.topAnchor, left: self.LogoutButtonview.leftAnchor, bottom: self.LogoutButtonview.bottomAnchor, right: self.LogoutButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.LogoutButtonview.addSubview(self.LogoutButton)
        self.LogoutButton.anchor(top: self.LogoutButtonview.topAnchor, left: self.LogoutButtonview.leftAnchor, bottom: self.LogoutButtonview.bottomAnchor, right: self.LogoutButtonview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
