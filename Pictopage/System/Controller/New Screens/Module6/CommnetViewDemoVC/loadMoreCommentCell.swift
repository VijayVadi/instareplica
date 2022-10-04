//
//  loadMoreCommentCell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 17/02/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class loadMoreCommentCell: UITableViewCell {

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
    
    let subView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let totalCommentCountLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Load # more Replies"
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
    
    var loadMoreButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    var downArrowImage = UIImageView()
    var moreCommentLable = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = black13
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 8, paddingLeft: 56, paddingBottom: 0, paddingRight: 55, width: 0, height: 0)
        
        
        //Text Label
        
        self.moreCommentLable.heightAnchor.constraint(equalToConstant: 13.0).isActive = true
        self.moreCommentLable.text  = "Load # more Replies"
        self.moreCommentLable.font = UIFont(name: "HelveticaNeue-Light", size: 14.0)!
        self.moreCommentLable.textAlignment = .right
        self.moreCommentLable.textColor = UIColor(red: 34.0/255.0, green: 144.0/255.0, blue: 187.0/255.0, alpha: 1.0)
        
        // ImageVew
        
        self.downArrowImage.heightAnchor.constraint(equalToConstant: 7.2).isActive = true
        self.downArrowImage.widthAnchor.constraint(equalToConstant: 12).isActive = true
        self.downArrowImage.image = UIImage(named: "downArrow1x")
        self.downArrowImage.changeImageColor(color: UIColor(red: 34.0/255.0, green: 144.0/255.0, blue: 187.0/255.0, alpha: 1.0))

        //Stack View
        let stackView   = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.horizontal
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 8.44

        stackView.addArrangedSubview(moreCommentLable)
        stackView.addArrangedSubview(downArrowImage)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        self.subView.addSubview(stackView)

        //Constraints

        stackView.centerXAnchor.constraint(equalTo: self.subView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.subView.centerYAnchor).isActive = true
        
        
        self.subView.addSubview(self.loadMoreButton)
        self.loadMoreButton.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: self.subView.bottomAnchor, right: self.subView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
