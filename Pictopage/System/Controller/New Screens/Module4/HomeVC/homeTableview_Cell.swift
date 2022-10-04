//
//  homeTableview_Cell.swift
//  Pictopage
//
//  Created by Grewon on 30/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class homeTableview_Cell: UITableViewCell {

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
        logov.clipsToBounds = true
        return logov
    }()
    
    let subView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let userProfileView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let userImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.image = UIImage(named: "userLogo1x")
        return img
    }()
    
    let usertextView: UIView = {
        let logov = UIView()
        logov.clipsToBounds = true
        return logov
    }()
    
    let PageNameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Firstname Lastname"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let IDLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Username"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 12.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let balckDotview: UIView = {
        let v = UIView()
        v.backgroundColor = .black
        v.clipsToBounds = true
        return v
    }()
    
    let totalBookmarkLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "108 Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let blueDotview: UIView = {
        let v = UIView()
        v.backgroundColor = blue
        v.clipsToBounds = true
        return v
    }()
    
    let totalPostLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "4 post"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let collectionMainview: UIView = {
        let v = UIView()
        v.clipsToBounds = true
        return v
    }()
    
//    var collectionViewPageDetails: UICollectionView?
    
    var blackDotViewWidthConstraint = NSLayoutConstraint()
    var totalBookmarkLableLeftConstraint = NSLayoutConstraint()
    var blackDotViewLeftConstraint = NSLayoutConstraint()
    
    var pagePostArr = [ModelPost]()
    
    lazy var flowLayout:UICollectionViewFlowLayout = {
        let f = UICollectionViewFlowLayout()
        f.scrollDirection = UICollectionView.ScrollDirection.horizontal
        return f
    }()
    
    lazy var collectionViewPageDetails: UICollectionView = {
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: self.flowLayout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .clear
        cv.setCollectionViewLayout(self.flowLayout, animated: true)
        cv.dataSource = self
        cv.delegate = self
        cv.showsHorizontalScrollIndicator = false
        cv.register(HomeTablevewSubCollectionview_cell.self, forCellWithReuseIdentifier: "HomeTablevewSubCollectionview_cell")
        return cv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.backgroundColor = .clear
        
        self.mainView.addSubview(self.subView)
        self.subView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 7, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.subView.backgroundColor = .clear
        
            // setup user profile view
        
            self.subView.addSubview(self.userProfileView)
            self.userProfileView.anchor(top: self.subView.topAnchor, left: self.subView.leftAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 53)
        
            self.userProfileView.addSubview(self.userImage)
            self.userImage.anchor(top: nil, left: self.userProfileView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 53, height: 53)
            self.userImage.centerYAnchor.constraint(equalTo: self.userProfileView.centerYAnchor).isActive = true
            self.userImage.layer.cornerRadius = 26.5
            self.userImage.clipsToBounds = true
        
            self.userProfileView.addSubview(self.usertextView)
            self.usertextView.anchor(top: nil, left: self.userImage.rightAnchor, bottom: nil, right: self.userProfileView.rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 35)
            self.usertextView.centerYAnchor.constraint(equalTo: self.userProfileView.centerYAnchor).isActive = true
        
            self.usertextView.addSubview(self.PageNameLable)
            self.PageNameLable.anchor(top: self.usertextView.topAnchor, left: self.usertextView.leftAnchor, bottom: nil, right: self.usertextView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)
        
            self.usertextView.addSubview(self.IDLable)
            self.IDLable.anchor(top: nil, left: self.usertextView.leftAnchor, bottom: self.usertextView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 13)
        
            self.usertextView.addSubview(self.balckDotview)
            self.balckDotview.anchor(top: nil, left: self.IDLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 4, height: 4)
            self.balckDotview.centerYAnchor.constraint(equalTo: self.IDLable.centerYAnchor).isActive = true
            self.balckDotview.layer.cornerRadius = 2.0
        
            self.usertextView.addSubview(self.balckDotview)
            self.balckDotview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 4)
            self.balckDotview.centerYAnchor.constraint(equalTo: self.IDLable.centerYAnchor).isActive = true
            self.balckDotview.layer.cornerRadius = 1.5
            self.blackDotViewWidthConstraint = self.balckDotview.widthAnchor.constraint(equalToConstant: 4)
            self.blackDotViewWidthConstraint.isActive = true
            self.blackDotViewLeftConstraint = self.balckDotview.leftAnchor.constraint(equalTo: self.IDLable.rightAnchor, constant: 5)
            self.blackDotViewLeftConstraint.isActive = true
        
            self.usertextView.addSubview(self.totalBookmarkLable)
            self.totalBookmarkLable.anchor(top: nil, left: nil, bottom: self.usertextView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 13)
            self.totalBookmarkLableLeftConstraint = self.totalBookmarkLable.leftAnchor.constraint(equalTo: self.balckDotview.rightAnchor, constant: 8)
            self.totalBookmarkLableLeftConstraint.isActive = true
        
            self.usertextView.addSubview(self.blueDotview)
            self.blueDotview.anchor(top: nil, left: self.totalBookmarkLable.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 4, height: 4)
            self.blueDotview.centerYAnchor.constraint(equalTo: self.totalBookmarkLable.centerYAnchor).isActive = true
            self.blueDotview.layer.cornerRadius = 2.0
        
            self.usertextView.addSubview(self.totalPostLable)
            self.totalPostLable.anchor(top: nil, left: self.blueDotview.rightAnchor, bottom: self.usertextView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 0, height: 13)
       
        self.subView.addSubview(self.collectionMainview)
        self.collectionMainview.anchor(top: self.userProfileView.bottomAnchor, left: self.subView.leftAnchor, bottom: self.subView.bottomAnchor, right: self.subView.rightAnchor, paddingTop: 8, paddingLeft: 28, paddingBottom: 14, paddingRight: 0, width: 0, height: 0)
        self.collectionMainview.backgroundColor = .clear
        
        self.collectionMainview.addSubview(self.collectionViewPageDetails)
        self.collectionViewPageDetails.anchor(top: self.collectionMainview.topAnchor, left: self.collectionMainview.leftAnchor, bottom: self.collectionMainview.bottomAnchor, right: self.collectionMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}

extension homeTableview_Cell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.pagePostArr.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeTablevewSubCollectionview_cell", for: indexPath) as! HomeTablevewSubCollectionview_cell
        
        let dict = self.pagePostArr[indexPath.item]
        
        if let image = dict.postedImageURl, image.count != 0{
            cell.postImageview.kf.indicatorType = .activity
            cell.postImageview.kf.setImage(with: URL(string: image))
        }else{
            
        }
        
        if let image = dict.postCreatedUserProfilePicture, image.count != 0{
            cell.userImageview.kf.indicatorType = .activity
            cell.userImageview.kf.setImage(with: URL(string: image))
        }else{
            
        }
        
        if let name = dict.postCreatedUserName, name.count != 0{
            cell.userNameLable.text = name
        }else{
            cell.userNameLable.text = ""
        }
        
        
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 104, height: self.collectionViewPageDetails.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}
