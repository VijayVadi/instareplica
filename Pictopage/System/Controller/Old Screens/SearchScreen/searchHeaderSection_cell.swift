//
//  searchHeaderSection_cell.swift
//  Pictopage
//
//  Created by Grewon on 27/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class searchHeaderSection_cell: UITableViewCell {

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
    
    let titleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Recent"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainView.addSubview(titleLable)
        self.titleLable.anchor(top: nil, left: self.mainView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        self.titleLable.centerYAnchor.constraint(equalTo: self.mainView.centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
