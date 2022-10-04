//
//  bookmarkHeader_cell.swift
//  Pictopage
//
//  Created by Grewon on 05/09/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class bookmarkHeader_cell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    let mainView: UIView = {
        
        let mv = UIView()
        return mv
        
    }()
    
    let subviewBackgroungImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = UIImageView.ContentMode.scaleToFill
        img.image = UIImage(named: "BookMarkTableviewBacground")
        return img
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.backgroundColor = .clear
        
//        self.mainView.addSubview(self.subviewBackgroungImage)
//        self.subviewBackgroungImage.anchor(top: nil, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
