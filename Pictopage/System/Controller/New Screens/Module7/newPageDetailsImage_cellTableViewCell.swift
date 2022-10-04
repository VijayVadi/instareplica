//
//  newPageDetailsImage_cellTableViewCell.swift
//  Pictopage
//
//  Created by Ravi Padshala on 21/01/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase

protocol NewCollectionCellBookmarkTapDelegate {
    func tapOnBookMark()
}

class newPageDetailsImage_cellTableViewCell: UITableViewCell {

    let mainView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    lazy var flowLayout:UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        return flowLayout
    }()
    
    lazy var collectionViewPageImage: UICollectionView = {
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: self.flowLayout)
        cv.translatesAutoresizingMaskIntoConstraints = true
        cv.setCollectionViewLayout(self.flowLayout, animated: true)
        cv.dataSource = self
        cv.delegate = self
        
        cv.isPrefetchingEnabled = true
        cv.isSpringLoaded = false
        
        cv.isScrollEnabled = true
        cv.isPagingEnabled = true
        
        cv.isDirectionalLockEnabled = false
        cv.bouncesZoom = true
        cv.bounces = false
        cv.alwaysBounceHorizontal = true
        cv.alwaysBounceVertical = false
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        
        cv.backgroundColor = .white
        
        cv.register(pageDetailsPageImage_cell.self, forCellWithReuseIdentifier: "pageDetailsPageImage_cell")
        return cv
    }()
    
    // PageControl view
    
    let pageControlMainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let pageController: UIPageControl = {
        let pageCon = UIPageControl()
        pageCon.currentPage = 0
        pageCon.pageIndicatorTintColor = UIColor.lightGray
        pageCon.currentPageIndicatorTintColor = UIColor.black
        return pageCon
    }()
    
    let dividerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 0.21)
        logov.clipsToBounds = true
        return logov
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var pageDataDetials: PageList?
    
    var bookMarkDelegate : NewCollectionCellBookmarkTapDelegate?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(self.mainView)
        self.mainView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.mainView.clipsToBounds = true
        
        self.mainView.addSubview(self.collectionViewPageImage)
        self.collectionViewPageImage.anchor(top: self.mainView.topAnchor, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
     
        // setup pageControl
        self.mainView.addSubview(self.pageControlMainview)
        self.pageControlMainview.anchor(top: nil, left: nil, bottom: self.mainView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 7.5, paddingRight: 0, width: 27, height: 9)
        self.pageControlMainview.centerXAnchor.constraint(equalTo: self.mainView.centerXAnchor).isActive = true
        
        self.pageControlMainview.addSubview(self.pageController)
        self.pageController.anchor(top: self.pageControlMainview.topAnchor, left: self.pageControlMainview.leftAnchor, bottom: self.pageControlMainview.bottomAnchor, right: self.pageControlMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.pageController.numberOfPages = 2
        
        // setup divider view
        self.mainView.addSubview(self.dividerView)
        self.dividerView.anchor(top: nil, left: self.mainView.leftAnchor, bottom: self.mainView.bottomAnchor, right: self.mainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func click_bookMark(){
        self.bookMarkDelegate?.tapOnBookMark()
    }
}

extension newPageDetailsImage_cellTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pageDetailsPageImage_cell", for: indexPath) as! pageDetailsPageImage_cell
        
        if indexPath.row == 0{
            cell.userDataView.isHidden = true
            cell.pageImage.isHidden = false
            cell.shadowImage.isHidden = false
        }else{
            cell.userDataView.isHidden = false
            cell.pageImage.isHidden = true
            cell.shadowImage.isHidden = true
        }
        
        
        // first Index
        if let pageImage = self.pageDataDetials?.PagethumbnilURLOne, pageImage.count != 0{
            cell.pageImage.kf.indicatorType = .activity
            cell.pageImage.kf.setImage(with: URL(string: pageImage))
        }
        
        if let p_name = self.pageDataDetials?.PageName, p_name.count != 0{
            cell.pageNameLable.text = p_name
        }else{
            cell.pageNameLable.text = ""
        }
        
        if let pictoID = self.pageDataDetials?.pictoID, pictoID.count != 0{
            let mainString = "by \(pictoID)"
            let subString = "\(pictoID)"
            let subRange = NSMakeRange(mainString.count - subString.count, subString.count)
            cell.byLabel.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: mainString, BoldRange: subRange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        }else{
            cell.byLabel.text = ""
        }
        
        if let arr = self.pageDataDetials?.BookMarkUsers, arr.count != 0{
            cell.noBookmarkLabel.text = "\(arr.count) Bookmarks"
        }else{
            cell.noBookmarkLabel.text = "0 Bookmarks"
        }
        
        if let descr = self.pageDataDetials?.PageDescription, description.count != 0{
            cell.DescriptionLable.text = descr
        }else{
            cell.DescriptionLable.text = ""
        }
        
        if let isverify = self.pageDataDetials?.isVerified, isverify == 0{
            cell.VerifiedImageLogoFirstIndex.isHidden = true
        }else{
            cell.VerifiedImageLogoFirstIndex.isHidden = false
        }
        
        if let isverify = self.pageDataDetials?.isOfficialPage, isverify == 0{
            cell.offcialPageLogoFirstIndex.isHidden = true
        }else{
            cell.offcialPageLogoFirstIndex.isHidden = false
        }
        
        if let id = self.pageDataDetials?.pageCreatedUserID, id.count != 0, id == FirebaseClient.sharedInstance.firebaseCurrentUser!.userID{
            cell.cretorLogoFirstIndex.isHidden = false
        }else{
            cell.cretorLogoFirstIndex.isHidden = true
        }
        
        if let arr = self.pageDataDetials?.BookMarkUsers, arr.count != 0{
            if arr.contains(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID){
                cell.BookMarkImage.image = UIImage(named: "bookMark")
            }else{
                cell.BookMarkImage.image = UIImage(named: "unBookmark")
            }
        }else{
            cell.BookMarkImage.image = UIImage(named: "unBookmark")
        }
        
        cell.BookMarkButton.addTarget(self, action: #selector(self.click_bookMark), for: .touchUpInside)
        
        
        // second index
        if let name = self.pageDataDetials?.pageCreatedUserFullName, name.count != 0{
            cell.userNameLable.text = name
        }else{
            cell.userNameLable.text = ""
        }
        
        if let userImage = self.pageDataDetials?.pageCreatedUserImage, userImage.count != 0{
            cell.userImage.kf.indicatorType = .activity
            cell.userImage.kf.setImage(with: URL(string: userImage))
            cell.userImage.clipsToBounds = true
        }
        
        if let date = self.pageDataDetials?.pageCreationDate{
            cell.pageCreatedDateLable.text = "on\n\(ApiUtillity.sharedInstance.convertDateToString(date: date, newFormate: "MMMM DD, YYYY"))"
        }else{
            cell.pageCreatedDateLable.text = ""
        }
        
        if let isverify = self.pageDataDetials?.isVerified, isverify == 0{
            cell.VerifiedImageLogoSecondIndex.isHidden = true
        }else{
            cell.VerifiedImageLogoSecondIndex.isHidden = false
        }
        
        if let isverify = self.pageDataDetials?.isOfficialPage, isverify == 0{
            cell.offcialPageLogoSecondIndex.isHidden = true
        }else{
            cell.offcialPageLogoSecondIndex.isHidden = false
        }
        
        if let id = self.pageDataDetials?.pageCreatedUserID, id.count != 0, id == FirebaseClient.sharedInstance.firebaseCurrentUser!.userID{
            cell.cretorLogoSecondIndex.isHidden = false
        }else{
            cell.cretorLogoSecondIndex.isHidden = true
        }
        
        if let arr = self.pageDataDetials?.pagePosts, arr.count != 0{
            cell.pagePostLable.text = "\(arr.count) Posts"
        }else{
            cell.pagePostLable.text = "0 Posts"
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionViewPageImage.frame.size.width, height: self.collectionViewPageImage.frame.size.height)
    }
}

extension newPageDetailsImage_cellTableViewCell: UIScrollViewDelegate{
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        self.pageController.currentPage = Int(currentPageNumber)
    }
    
}
