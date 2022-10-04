//
//  newPageDetailsPost_cell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 25/01/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

protocol tapOnPostDelegate {
    func tapOnPost(index: Int)
}

class newPageDetailsPost_cell: UITableViewCell {

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
    
    lazy var flowLayout:UICollectionViewFlowLayout = {
        let f = UICollectionViewFlowLayout()
        f.scrollDirection = UICollectionView.ScrollDirection.vertical
        f.sectionHeadersPinToVisibleBounds = false
        f.minimumInteritemSpacing = 0
        f.minimumLineSpacing = 0
        return f
    }()
    
    lazy var collectionViewPost: UICollectionView = {
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: self.flowLayout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .white
        cv.setCollectionViewLayout(self.flowLayout, animated: true)
        cv.dataSource = self
        cv.delegate = self
        cv.showsVerticalScrollIndicator = false
        cv.register(newPageDetailsCollectionViewPost_cell.self, forCellWithReuseIdentifier: "newPageDetailsCollectionViewPost_cell")
        cv.isScrollEnabled = false
        return cv
    }()
    
    var pagePostArr = [ModelPost]()
    var postDelegate : tapOnPostDelegate?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.clipsToBounds = true
        self.mainView.backgroundColor = .white
        
        // setup collectionview
        
        self.mainView.addSubview(self.collectionViewPost)
        self.collectionViewPost.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 30, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.collectionViewPost.clipsToBounds = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension newPageDetailsPost_cell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if self.pagePostArr.count != 0{
            return self.pagePostArr.count
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newPageDetailsCollectionViewPost_cell", for: indexPath) as! newPageDetailsCollectionViewPost_cell
        
        cell.backgroundColor = .white
        
        let dict = self.pagePostArr[indexPath.row]

        if let postImage = dict.postedImageURl, postImage.count != 0{
            cell.postImageview.kf.indicatorType = .activity
            cell.postImageview.kf.setImage(with: URL(string: postImage))
        }

        if let userImage = dict.postCreatedUserProfilePicture, userImage.count != 0{
            cell.userImageview.kf.indicatorType = .activity
            cell.userImageview.kf.setImage(with: URL(string: userImage))
        }

        if let name = dict.postCreatedUserFullName, name.count != 0{
            cell.userNameLable.text = name
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.postDelegate?.tapOnPost(index: indexPath.item)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionViewPost.frame.size.width / 2, height: 280)
    }
    
    
    
}
