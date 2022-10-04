//
//  companyInfo_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 10/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class companyInfo_cell: UITableViewCell {

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
    
    let subView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    
    let companyLogo: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "setting_companyLogo1x")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let companyInfoLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Designed in Wyndham, VA"
        lbl.font = UIFont(name: "HelveticaNeue", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let companyNameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "By Page Inc."
        lbl.font = UIFont(name: "HelveticaNeue", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 131, height: 66)
        self.subView.centerXAnchor.constraint(equalTo: self.mainView.centerXAnchor).isActive = true
        
        self.subView.addSubview(self.companyLogo)
        self.companyLogo.anchor(top: self.subView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 25, height: 24.82)
        self.companyLogo.centerXAnchor.constraint(equalTo: self.subView.centerXAnchor).isActive = true
        
        self.subView.addSubview(self.companyInfoLable)
        self.companyInfoLable.anchor(top: self.companyLogo.bottomAnchor, left: self.subView.leftAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 10.18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 12)
        
        self.subView.addSubview(self.companyNameLable)
        self.companyNameLable.anchor(top: self.companyInfoLable.bottomAnchor, left: self.subView.leftAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 7, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 12)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
