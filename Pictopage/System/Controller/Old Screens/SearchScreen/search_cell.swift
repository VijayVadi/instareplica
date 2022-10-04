//
//  search_cell.swift
//  Pictopage
//
//  Created by Grewon on 27/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class search_cell: UITableViewCell {

    
    
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
    
    let subview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let userImageview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let userImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    let userImageButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let closeview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let closeImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "close_black")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let closeButton: UIButton = {
        let btn = UIButton()
        return btn
    }()

    let textView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let titleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Page Name"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let usernameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Username"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let dotview: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    let timeLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "120 Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.mainView.addSubview(self.subview)
        self.subview.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 11, paddingLeft: 12, paddingBottom: 11, paddingRight: 12, width: 0, height: 0)
        
        self.subview.addSubview(self.userImageview)
        self.userImageview.anchor(top: nil, left: self.subview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 48, height: 48)
        self.userImageview.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        self.userImageview.layer.cornerRadius = 24
        self.userImageview.layer.borderColor = Gray97.cgColor
        self.userImageview.layer.borderWidth = 1.0
        self.userImageview.clipsToBounds = true
        
        self.userImageview.addSubview(self.userImage)
        self.userImage.anchor(top: self.userImageview.topAnchor, left: self.userImageview.leftAnchor, bottom: self.userImageview.bottomAnchor, right: self.userImageview.rightAnchor, paddingTop: 1, paddingLeft: 1, paddingBottom: 1, paddingRight: 1, width: 0, height: 0)
        self.userImage.layer.cornerRadius = 23.5
        self.userImage.backgroundColor = GrayD8
        
        self.userImageview.addSubview(self.userImageButton)
        self.userImageButton.anchor(top: self.userImageview.topAnchor, left: self.userImageview.leftAnchor, bottom: self.userImageview.bottomAnchor, right: self.userImageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.closeview)
        self.closeview.anchor(top: nil, left: nil, bottom: nil, right: self.subview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 12, width: 30, height: 30)
        self.closeview.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        
        self.closeview.addSubview(self.closeImageview)
        self.closeImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 18, height: 18)
        self.closeImageview.centerYAnchor.constraint(equalTo: self.closeview.centerYAnchor).isActive = true
        self.closeImageview.centerXAnchor.constraint(equalTo: self.closeview.centerXAnchor).isActive = true
        
        self.closeview.addSubview(self.closeButton)
        self.closeButton.anchor(top: self.closeview.topAnchor, left: self.closeview.leftAnchor, bottom: self.closeview.bottomAnchor, right: self.closeview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.subview.addSubview(self.textView)
        self.textView.anchor(top: nil, left: self.userImageview.rightAnchor, bottom: nil, right: self.closeview.leftAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 48)
        self.textView.centerYAnchor.constraint(equalTo: self.subview.centerYAnchor).isActive = true
        
        self.textView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.textView.topAnchor, left: self.textView.leftAnchor, bottom: nil, right: self.textView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)
        
        self.textView.addSubview(self.usernameLable)
        self.usernameLable.anchor(top: self.titleLable.bottomAnchor, left: self.textView.leftAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
        self.textView.addSubview(self.dotview)
        self.dotview.anchor(top: nil, left: self.usernameLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 5, height: 5)
        self.dotview.layer.cornerRadius = 2.5
        self.dotview.centerYAnchor.constraint(equalTo: self.usernameLable.centerYAnchor).isActive = true
        
        self.textView.addSubview(self.timeLable)
        self.timeLable.anchor(top: self.titleLable.bottomAnchor, left: self.dotview.rightAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
