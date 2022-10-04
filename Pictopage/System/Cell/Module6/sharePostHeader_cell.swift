//
//  sharePostHeader_cell.swift
//  Pictopage
//
//  Created by Grewon on 29/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class sharePostHeader_cell: UITableViewCell {

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
        return logov
    }()
    
    let titleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.clipsToBounds = true
        self.mainView.backgroundColor = .clear
        
        self.mainView.addSubview(titleLable)
        self.titleLable.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 24, paddingBottom: 0, paddingRight: 0, width: 0, height: 19)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
