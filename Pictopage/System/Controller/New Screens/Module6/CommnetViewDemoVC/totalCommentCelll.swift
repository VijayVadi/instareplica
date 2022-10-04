//
//  totalCommentCelll.swift
//  Pictopage
//
//  Created by Ravi Padshala on 17/02/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class totalCommentCelll: UITableViewCell {

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
    
    let totalCommentCountLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "#Comments"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    let downImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        backimage.image = UIImage(named: "downArrow1x")
        return backimage
    }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = black13
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 29)
        
        self.mainView.addSubview(totalCommentCountLable)
        self.totalCommentCountLable.anchor(top: self.mainView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)
        self.totalCommentCountLable.centerXAnchor.constraint(equalTo: self.mainView.centerXAnchor).isActive = true

        self.mainView.addSubview(downImage)
        self.downImage.anchor(top: self.mainView.topAnchor, left: nil, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 22, width: 17, height: 10)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
