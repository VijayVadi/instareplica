//
//  settingDivider_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 30/10/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class settingDivider_cell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    let dividerView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.dividerView)
        self.dividerView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 15, paddingLeft: 27.25, paddingBottom: 0, paddingRight: 27.75, width: 0, height: 1)
        self.dividerView.backgroundColor = Gray97
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
