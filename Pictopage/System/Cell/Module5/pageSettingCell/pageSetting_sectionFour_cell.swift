//
//  pageSetting_sectionFour_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 02/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class pageSetting_sectionFour_cell: UITableViewCell {

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
    
    let DeletePageButtonView: UIView = {
        let v = UIView()
        v.backgroundColor = black10
        return v
    }()
    
    let DeletePageButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Delete Page", for: .normal)
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
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 56)
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 15, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 0)
        
        self.subView.addSubview(self.DeletePageButtonView)
        self.DeletePageButtonView.anchor(top: self.subView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 168, height: 41)
        self.DeletePageButtonView.layer.cornerRadius = 20.5
        self.DeletePageButtonView.clipsToBounds = true
        self.DeletePageButtonView.centerXAnchor.constraint(equalTo: self.subView.centerXAnchor).isActive = true
        
        self.DeletePageButtonView.addSubview(self.DeletePageButton)
        self.DeletePageButton.anchor(top: self.DeletePageButtonView.topAnchor, left: self.DeletePageButtonView.leftAnchor, bottom: self.DeletePageButtonView.bottomAnchor, right: self.DeletePageButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
