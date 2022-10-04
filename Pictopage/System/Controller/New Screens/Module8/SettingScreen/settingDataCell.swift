//
//  settingDataCell.swift
//  Pictopage
//
//  Created by Grewon on 21/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class settingDataCell: UITableViewCell {

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
    
    let dataIconImage: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "backBlack_1x")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let dataTitleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Account"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let arrowImage: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "iconSetting_rightArrowBlack_1x")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 25)

        self.mainView.addSubview(self.dataIconImage)
        self.dataIconImage.anchor(top: nil, left: self.mainView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 18, paddingBottom: 0, paddingRight: 0, width: 25, height: 25)
        self.dataIconImage.centerYAnchor.constraint(equalTo: self.mainView.centerYAnchor).isActive = true
        
        self.mainView.addSubview(self.dataTitleLable)
        self.dataTitleLable.anchor(top: nil, left: self.dataIconImage.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        self.dataTitleLable.centerYAnchor.constraint(equalTo: self.mainView.centerYAnchor).isActive = true
        
        self.mainView.addSubview(self.arrowImage)
        self.arrowImage.anchor(top: nil, left: nil, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 18.78, width: 7.22, height: 12.51)
        self.arrowImage.centerYAnchor.constraint(equalTo: self.mainView.centerYAnchor).isActive = true
              
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
