//
//  loginUserProfileHeader_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 13/01/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class loginUserProfileHeader_cell: UITableViewCell {

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
        logov.backgroundColor = .clear
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
    
    
    let plusImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        backimage.image = UIImage(named: "plus1x")
        return backimage
    }()
    
    let NewPageLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "New Page"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        
        self.mainView.addSubview(titleLable)
        self.titleLable.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 25, paddingBottom: 0, paddingRight: 0, width: 0, height: 24)
            
        self.mainView.addSubview(NewPageLable)
        self.NewPageLable.anchor(top: self.mainView.topAnchor, left: nil, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 27, paddingLeft: 0, paddingBottom: 0, paddingRight: 20, width: 76, height: 17)
        
        self.mainView.addSubview(self.plusImage)
        self.plusImage.anchor(top: self.mainView.topAnchor, left: nil, bottom: nil, right: self.NewPageLable.leftAnchor, paddingTop: 31, paddingLeft: 0, paddingBottom: 0, paddingRight: 4.5, width: 11, height: 10)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
