//
//  newPageDetail_BookMarkWithCollapseCell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 21/01/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

protocol NewCollectionCellDelegate {
    func tapOnCollectionViewCell()
}

class newPageDetail_BookMarkWithCollapseCell: UITableViewCell {

    let mainView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let bookmarkSubView: UIView = {
        let v = UIView()
        return v
    }()
    
    let collectionviewMainView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    lazy var BookmarkUserflowLayout:UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        return flowLayout
    }()
    
    lazy var collectionViewpageBookmarkUser: UICollectionView = {
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: self.BookmarkUserflowLayout)
        cv.translatesAutoresizingMaskIntoConstraints = true
        cv.setCollectionViewLayout(self.BookmarkUserflowLayout, animated: true)
        cv.dataSource = self
        cv.delegate = self
        cv.backgroundColor = .clear
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        cv.register(newPageDetailsBookmarkUser_cell.self, forCellWithReuseIdentifier: "newPageDetailsBookmarkUser_cell")
        return cv
    }()
    
    
    
    // bookmark and post view
    
    let pageBookmarkAndPostMainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let bookMarkLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        lbl.numberOfLines = 0
        lbl.isUserInteractionEnabled = true
        return lbl
    }()
    
    let pageBookmarkUserMainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let postsLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Posts"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var bookMarkUserArr = [userData]()
    var NewCelldelegate : NewCollectionCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 138)
        self.mainView.clipsToBounds = true
        
//        // setup page bookmark and post view
//
//        self.mainView.addSubview(self.pageBookmarkAndPostMainview)
//        self.pageBookmarkAndPostMainview.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 4, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 0)
//        self.pageBookmarkAndPostMainview.backgroundColor = .yellow
//
//        self.pageBookmarkAndPostMainview.addSubview(self.bookMarkLable)
//        self.bookMarkLable.anchor(top: self.pageBookmarkAndPostMainview.topAnchor, left: self.pageBookmarkAndPostMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
//
//        self.pageBookmarkAndPostMainview.addSubview(self.pageBookmarkUserMainview)
//        self.pageBookmarkUserMainview.anchor(top: self.bookMarkLable.bottomAnchor, left: self.pageBookmarkAndPostMainview.leftAnchor, bottom: nil, right: self.pageBookmarkAndPostMainview.rightAnchor, paddingTop: 10, paddingLeft: 3, paddingBottom: 0, paddingRight: 3, width: 0, height: 65)
//        self.pageBookmarkUserMainview.layer.cornerRadius = 15.0
//        self.pageBookmarkUserMainview.backgroundColor = .white
//        self.pageBookmarkUserMainview.layer.applySketchShadowYOne(y: 1.0)
//
//        self.pageBookmarkUserMainview.addSubview(self.collectionViewpageBookmarkUser)
//        self.collectionViewpageBookmarkUser.anchor(top: self.pageBookmarkUserMainview.topAnchor, left: self.pageBookmarkUserMainview.leftAnchor, bottom: nil, right: self.pageBookmarkUserMainview.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
//
//        self.pageBookmarkAndPostMainview.addSubview(self.postsLable)
//        self.postsLable.anchor(top: self.pageBookmarkUserMainview.bottomAnchor, left: self.pageBookmarkAndPostMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 18)
        
        
        // setup bookmark view
        self.mainView.addSubview(self.bookmarkSubView)
        self.bookmarkSubView.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: nil, right: self.mainView.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 95)
        
        // setup bookmark lable
        self.bookmarkSubView.addSubview(self.bookMarkLable)
        self.bookMarkLable.anchor(top: self.bookmarkSubView.topAnchor, left: self.bookmarkSubView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 79, height: 18)
        
        //setup collection main view
        self.bookmarkSubView.addSubview(self.collectionviewMainView)
        self.collectionviewMainView.anchor(top: self.bookMarkLable.bottomAnchor, left: self.bookmarkSubView.leftAnchor, bottom: nil, right: self.bookmarkSubView.rightAnchor, paddingTop: 10, paddingLeft: 3, paddingBottom: 0, paddingRight: 0, width: 0, height: 67)
        self.collectionviewMainView.layer.cornerRadius = 15
        self.collectionviewMainView.layer.applySketchShadowYOne(y: 1.0)
        
        // setup collectionview
        self.collectionviewMainView.addSubview(self.collectionViewpageBookmarkUser)
        self.collectionViewpageBookmarkUser.anchor(top: self.collectionviewMainView.topAnchor, left: self.collectionviewMainView.leftAnchor, bottom: self.collectionviewMainView.bottomAnchor, right: self.collectionviewMainView.rightAnchor, paddingTop: 1, paddingLeft: 0, paddingBottom: 1, paddingRight: 12, width: 0, height: 0)
        self.collectionViewpageBookmarkUser.clipsToBounds = true
        self.collectionViewpageBookmarkUser.layer.cornerRadius = 15
        
        // setup post lable
        self.mainView.addSubview(self.postsLable)
        self.postsLable.anchor(top: self.bookmarkSubView.bottomAnchor, left: self.mainView.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 40, height: 18)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension newPageDetail_BookMarkWithCollapseCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if self.bookMarkUserArr.count <= 6{
            return bookMarkUserArr.count
        }else{
            return 6
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newPageDetailsBookmarkUser_cell", for: indexPath) as! newPageDetailsBookmarkUser_cell
        
        cell.subview.layer.cornerRadius = ((57 - 12) / 2)
        cell.userImageview.layer.cornerRadius = ((57 - 12) / 2)
        cell.BackgroundCircleImage.layer.cornerRadius = ((57 - 12) / 2)
        
        let dict = self.bookMarkUserArr[indexPath.row]
        if self.bookMarkUserArr.count <= 6{
            if let status = dict.userStatus, status.count != 0{

                cell.lableViewAll.isHidden = true

                if status == "Owner"{
                    cell.kingImageview.isHidden = false
                    cell.kingImageview.image = UIImage(named: "crown1x")
                }else if status == "Admin"{
                    cell.kingImageview.isHidden = false
                    cell.kingImageview.image = UIImage(named: "Pageadmin1x")
                }else{
                    cell.kingImageview.isHidden = true
                }

                if let postImage = dict.ProfilePicture, postImage.count != 0{
                    cell.userImageview.kf.indicatorType = .activity
                    cell.userImageview.kf.setImage(with: URL(string: postImage))
                }else{
                    cell.userImageview.isHidden = false
                    cell.userImageview.image = UIImage(named: "")
                }
            }
        }else{
            if let status = dict.userStatus, status.count != 0{

                if status == "Admin"{
                    cell.kingImageview.isHidden = false
                    cell.kingImageview.image = UIImage(named: "crown1x")
                }else if status == "Member"{
                    cell.kingImageview.isHidden = false
                    cell.kingImageview.image = UIImage(named: "Pageadmin1x")
                }else{
                    cell.kingImageview.isHidden = true
                }

                if indexPath.row == 5{
                    cell.kingImageview.isHidden = true
                    cell.lableViewAll.isHidden = false
                    cell.userImageview.image = UIImage(named: "new_grediant")
                }else{
                    cell.userImageview.isHidden = false
                    cell.lableViewAll.isHidden = true

                    if let postImage = dict.ProfilePicture, postImage.count != 0{
                        cell.userImageview.kf.indicatorType = .activity
                        cell.userImageview.kf.setImage(with: URL(string: postImage))
                    }else{
                        cell.userImageview.isHidden = false
                        cell.userImageview.image = UIImage(named: "")
                    }
                }
            }
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if self.bookMarkUserArr.count <= 6{

        }else{
            if indexPath.row == 5
            {
                self.NewCelldelegate?.tapOnCollectionViewCell()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 57, height: 45)
    }
    
}
