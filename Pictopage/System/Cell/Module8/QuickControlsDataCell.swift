//
//  QuickControlsDataCell.swift
//  Pictopage
//
//  Created by Darshit on 08/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class QuickControlsDataCell: UITableViewCell {
    
    static let cellID = "QuickControlsDataCell"
    
    //MARK:- Properties
    
    let mainView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let optionsView1: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let optionsView2: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let editOptionBtn: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.tintColor = .clear
        return button
    }()
    
    //option1
    let iconView1:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let userSmileImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "userLogo1x")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let editPenImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "edit_pen")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let lblDescView1:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let titleLbl_edit: UILabel = {
        let lbl = UILabel()
        lbl.text = "Edit Profile"
        lbl.font = UIFont(name: "HelveticaNeue", size: 18.0)!
        lbl.textColor = .black
        lbl.numberOfLines = 0
        lbl.textAlignment = .left
        lbl.backgroundColor = .clear
        return lbl
    }()
    
    let descLbl_edit: UILabel = {
        let lbl = UILabel()
        lbl.text = "Make changes to your Name and Bio."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.textColor = .black
        lbl.numberOfLines = 2
        lbl.textAlignment = .left
        lbl.backgroundColor = .clear
        return lbl
    }()
    
    //option2
    let iconView2:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let moonImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "moon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let lblDescView2:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let titleLbl_disturb: UILabel = {
        let lbl = UILabel()
        lbl.text = "Do not disturb"
        lbl.font = UIFont(name: "HelveticaNeue", size: 18.0)!
        lbl.textColor = .black
        lbl.numberOfLines = 0
        lbl.textAlignment = .left
        lbl.backgroundColor = .clear
        return lbl
    }()
    
    let descLbl_disturb: UILabel = {
        let lbl = UILabel()
        lbl.text = "Mute all notifications\nCurrently Disabled"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.textColor = .black
        lbl.numberOfLines = 2
        lbl.textAlignment = .left
        lbl.backgroundColor = .clear
        return lbl
    }()
    
    let switchView:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let switchImage:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "switch_image")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let tapSwitchBtn: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.tintColor = .clear
        return button
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 182)
        
        //options1
        self.mainView.addSubview(self.optionsView1)
        self.optionsView1.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 75)
        self.optionsView1.layer.cornerRadius = 25
        self.optionsView1.layer.applySketchShadow()
                
        self.optionsView1.addSubview(self.iconView1)
        self.iconView1.anchor(top: nil, left: self.optionsView1.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        self.iconView1.centerYAnchor.constraint(equalTo: self.optionsView1.centerYAnchor).isActive = true
        self.iconView1.layer.cornerRadius = 20
        
        self.iconView1.addSubview(self.userSmileImageView)
        self.userSmileImageView.fillSuperview()
        self.userSmileImageView.layer.cornerRadius = 20.0
        self.userSmileImageView.clipsToBounds = true
        
        self.iconView1.addSubview(self.editPenImageView)
        self.editPenImageView.anchor(top: nil, left: nil, bottom: self.iconView1.bottomAnchor, right: self.iconView1.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -0.5, paddingRight: -6, width: 17, height: 18)
        
        self.optionsView1.addSubview(self.lblDescView1)
        self.lblDescView1.anchor(top: self.optionsView1.topAnchor, left: self.iconView1.rightAnchor, bottom: self.optionsView1.bottomAnchor, right: self.optionsView1.rightAnchor, paddingTop: 9, paddingLeft: 21, paddingBottom: 8, paddingRight: 27, width: 0, height: 58)
        
        self.lblDescView1.addSubview(self.titleLbl_edit)
        self.titleLbl_edit.anchor(top: self.lblDescView1.topAnchor, left: self.lblDescView1.leftAnchor, bottom: nil, right: self.lblDescView1.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        
        self.lblDescView1.addSubview(self.descLbl_edit)
        self.descLbl_edit.anchor(top: self.titleLbl_edit.bottomAnchor, left: self.lblDescView1.leftAnchor, bottom: nil, right: self.lblDescView1.rightAnchor, paddingTop: 1, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 36)
        
        self.optionsView1.addSubview(self.editOptionBtn)
        self.editOptionBtn.fillSuperview()
        
        //options2
        self.mainView.addSubview(self.optionsView2)
        self.optionsView2.anchor(top: self.optionsView1.bottomAnchor, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 75)
        self.optionsView2.layer.cornerRadius = 25
        self.optionsView2.layer.applySketchShadow()
        
        self.optionsView2.addSubview(self.iconView2)
        self.iconView2.anchor(top: nil, left: self.optionsView2.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        self.iconView2.centerYAnchor.constraint(equalTo: self.optionsView2.centerYAnchor).isActive = true
        self.iconView2.layer.cornerRadius = 20.0
        
        self.iconView2.addSubview(self.moonImageView)
        self.moonImageView.fillSuperview()
        self.moonImageView.layer.cornerRadius = 20.0
        self.moonImageView.clipsToBounds = true
        
        self.optionsView2.addSubview(self.lblDescView2)
        self.lblDescView2.anchor(top: self.optionsView2.topAnchor, left: self.iconView2.rightAnchor, bottom: self.optionsView2.bottomAnchor, right: self.optionsView2.rightAnchor, paddingTop: 9, paddingLeft: 20, paddingBottom: 8, paddingRight: 25, width: 0, height: 0)
        
        self.lblDescView2.addSubview(self.switchView)
        self.switchView.anchor(top: nil, left: nil, bottom: nil, right: self.lblDescView2.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 51, height: 24)
        self.switchView.centerY(inView: self.lblDescView2)
        
        self.switchView.addSubview(self.switchImage)
        self.switchImage.fillSuperview()
        
        self.switchView.addSubview(self.tapSwitchBtn)
        self.tapSwitchBtn.fillSuperview()
        
        self.lblDescView2.addSubview(self.titleLbl_disturb)
        self.titleLbl_disturb.anchor(top: self.lblDescView2.topAnchor, left: self.lblDescView2.leftAnchor, bottom: nil, right: self.switchView.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 2, width: 0, height: 21)
        
        self.lblDescView2.addSubview(self.descLbl_disturb)
        self.descLbl_disturb.anchor(top: self.titleLbl_disturb.bottomAnchor, left: self.lblDescView2.leftAnchor, bottom: nil, right: self.switchView.leftAnchor, paddingTop: 1, paddingLeft: 0, paddingBottom: 0, paddingRight: 2, width: 0, height: 36)
        
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
