//
//  createPageCompleteVC.swift
//  Pictopage
//
//  Created by Grewon on 20/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import ImageSlideshow

class createPageCompleteVC: UIViewController, UIGestureRecognizerDelegate {

    let createPageBackImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "CreatePageBackgroundRectangle")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let createPageLogoImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "AppIcon")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    
    // Title Lable
    
    let TitleLableText: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Choose a header"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    
    let AddImageMainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let AddImageviewBackgroundImage: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "AddImageviewBackground")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let AddselectImageview: UIView = {
        let v = UIView()
        return v
    }()
    
    
    // collectionview data
    
    lazy var flowLayout:UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        return flowLayout
    }()
    
    lazy var collectionViewAddImage: UICollectionView = {
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
        
        cv.register(createPageCollectionAddImageCell.self, forCellWithReuseIdentifier: "createPageCollectionAddImageCell")
        return cv
    }()
    
    // Menu Button
    
    let menuButtonMainview: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let MenuButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "createPageMenuImage1x")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let MenuButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    // Next Button
    
    let nextButtonMainview: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let nextButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "createPageNextButtonImage1x")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    // view for pagename, pageID and bookmarkview
    
    let pageDataMainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let pageDataBookMarkedview: UIView = {
        let v = UIView()
        return v
    }()
    
    let pageDataBookMarkedImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "CreatePagebookMarkedImage")
        logoimg.contentMode = .scaleAspectFit
        logoimg.clipsToBounds = true
        return logoimg
    }()
    
    let pageDataPageNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Nature"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageDataPageIDLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "nature12"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageDataDotview: UIView = {
        let v = UIView()
        v.backgroundColor = .black
        return v
    }()
    
    let pageDataPageBookmarkCountLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "160 Bookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // page descriptionview
    
    let pageDescriptionMainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let pageDescriptionviewLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "A Page about Nature and the world. A page for anyone who wants to view posts about nature."
        lbl.font = UIFont(name: "HelveticaNeue", size: 9.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // PageControl view
    
    let pageControlMainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let pageController: UIPageControl = {
        let pageCon = UIPageControl()
        pageCon.numberOfPages = 0
        pageCon.currentPage = 0
        pageCon.tintColor = UIColor.red
        pageCon.pageIndicatorTintColor = UIColor.black
        pageCon.currentPageIndicatorTintColor = UIColor.lightGray
        return pageCon
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
        lbl.text = "BookMark"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageBookmarkUserMainview: UIView = {
        let v = UIView()
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
        cv.backgroundColor = .white
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        cv.register(createPageBookMarkUserList_cell.self, forCellWithReuseIdentifier: "createPageBookMarkUserList_cell")
        return cv
    }()
    
    let postsLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Posts"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 11.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    // sample image view
    
    let sampleImageMainview: UIView = {
        let v = UIView()
        return v
    }()
    
    let sampleImageviewOne: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "selectedImageBackGround")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    let sampleImageviewTwo: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "selectedImageBackGround")
        logoimg.contentMode = .scaleAspectFit
        return logoimg
    }()
    
    
    // Skip Button
    
    let skipButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let skipButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        return btn
    }()

    
    
//    var userDataResponse: userData?
    var selectImage = UIImage()
    var pageName = String()
    var pageNameWithID = String()
    var pageDescriptionText = String()
    var pageDescriptionviewHeightConstraint = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.view.backgroundColor = UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
        
        self.getuserData()
        
        // setup background image
        
        self.view.addSubview(self.createPageBackImageview)
        self.createPageBackImageview.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 70)
        
        self.headerView.addSubview(self.createPageLogoImageview)
        self.createPageLogoImageview.anchor(top: nil, left: nil, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 10, paddingRight: 0, width: 36, height: 36)
        self.createPageLogoImageview.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor).isActive = true
        
        
        // setup title lable
        
        self.view.addSubview(self.TitleLableText)
        self.TitleLableText.anchor(top: self.headerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 33, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 229, height: 42)
        self.TitleLableText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup Add Image view
        
        self.view.addSubview(self.AddImageMainview)
        self.AddImageMainview.anchor(top: self.TitleLableText.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 19, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 271, height: 416)
        self.AddImageMainview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.AddImageMainview.addSubview(self.AddImageviewBackgroundImage)
        self.AddImageviewBackgroundImage.anchor(top: self.AddImageMainview.topAnchor, left: self.AddImageMainview.leftAnchor, bottom: nil, right: self.AddImageMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 365)
        
        // set up add select page image view
        
        self.AddImageMainview.addSubview(self.AddselectImageview)
        self.AddselectImageview.anchor(top: self.AddImageMainview.topAnchor, left: self.AddImageMainview.leftAnchor, bottom: nil, right: self.AddImageMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 171)
        
        self.AddselectImageview.addSubview(self.collectionViewAddImage)
        self.collectionViewAddImage.anchor(top: self.AddselectImageview.topAnchor, left: self.AddselectImageview.leftAnchor, bottom: self.AddselectImageview.bottomAnchor, right: self.AddselectImageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup menu button
        
        self.AddselectImageview.addSubview(self.menuButtonMainview)
        self.menuButtonMainview.anchor(top: self.AddselectImageview.topAnchor, left: self.AddselectImageview.leftAnchor, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 21, height: 21)
        
        self.menuButtonMainview.addSubview(self.MenuButtonImageView)
        self.MenuButtonImageView.anchor(top: self.menuButtonMainview.topAnchor, left: self.menuButtonMainview.leftAnchor, bottom: self.menuButtonMainview.bottomAnchor, right: self.menuButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.menuButtonMainview.addSubview(self.MenuButton)
        self.MenuButton.anchor(top: self.menuButtonMainview.topAnchor, left: self.menuButtonMainview.leftAnchor, bottom: self.menuButtonMainview.bottomAnchor, right: self.menuButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup next button
        
        self.AddselectImageview.addSubview(self.nextButtonMainview)
        self.nextButtonMainview.anchor(top: self.AddselectImageview.topAnchor, left: nil, bottom: nil, right: self.AddselectImageview.rightAnchor, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 7, width: 21, height: 21)
        
        self.nextButtonMainview.addSubview(self.nextButtonImageView)
        self.nextButtonImageView.anchor(top: self.nextButtonMainview.topAnchor, left: self.nextButtonMainview.leftAnchor, bottom: self.nextButtonMainview.bottomAnchor, right: self.nextButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.nextButtonMainview.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonMainview.topAnchor, left: self.nextButtonMainview.leftAnchor, bottom: self.nextButtonMainview.bottomAnchor, right: self.nextButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        
        // set up PageName, pageID And bookMark Dataview
        
        self.AddImageMainview.addSubview(self.pageDataMainview)
        self.pageDataMainview.anchor(top: self.AddselectImageview.bottomAnchor, left: self.AddImageMainview.leftAnchor, bottom: nil, right: self.AddImageMainview.rightAnchor, paddingTop: 0, paddingLeft: 3, paddingBottom: 0, paddingRight: 3, width: 0, height: 29)
        
        self.pageDataMainview.addSubview(self.pageDataBookMarkedview)
        self.pageDataBookMarkedview.anchor(top: self.pageDataMainview.topAnchor, left: nil, bottom: nil, right: self.pageDataMainview.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 3, width: 89, height: 19)
        
        self.pageDataBookMarkedview.addSubview(self.pageDataBookMarkedImageview)
        self.pageDataBookMarkedImageview.anchor(top: self.pageDataBookMarkedview.topAnchor, left: self.pageDataBookMarkedview.leftAnchor, bottom: self.pageDataBookMarkedview.bottomAnchor, right: self.pageDataBookMarkedview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.pageDataMainview.addSubview(self.pageDataPageNameLable)
        self.pageDataPageNameLable.anchor(top: self.pageDataMainview.topAnchor, left: self.pageDataMainview.leftAnchor, bottom: nil, right: self.pageDataBookMarkedview.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 18)
        
        self.pageDataMainview.addSubview(self.pageDataPageIDLable)
        self.pageDataPageIDLable.anchor(top: self.pageDataMainview.topAnchor, left: self.pageDataMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 13)
        
        self.pageDataMainview.addSubview(self.pageDataDotview)
        self.pageDataDotview.anchor(top: self.pageDataMainview.topAnchor, left: self.pageDataPageIDLable.rightAnchor, bottom: nil, right: nil, paddingTop: 22, paddingLeft: 4, paddingBottom: 0, paddingRight: 0, width: 3, height: 3)
        self.pageDataDotview.layer.cornerRadius = 1.5
        
        self.pageDataMainview.addSubview(self.pageDataPageBookmarkCountLable)
        self.pageDataPageBookmarkCountLable.anchor(top: self.pageDataMainview.topAnchor, left: self.pageDataDotview.rightAnchor, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 4, paddingBottom: 0, paddingRight: 0, width: 0, height: 13)
        
        // set up page description view
        
        self.AddImageMainview.addSubview(self.pageDescriptionMainview)
        self.pageDescriptionMainview.anchor(top: self.pageDataMainview.bottomAnchor, left: self.AddImageMainview.leftAnchor, bottom: nil, right: self.AddImageMainview.rightAnchor, paddingTop: 2, paddingLeft: 3, paddingBottom: 0, paddingRight: 3, width: 0, height: 0)
        self.pageDescriptionviewHeightConstraint = self.pageDescriptionMainview.heightAnchor.constraint(equalToConstant: 22)
        self.pageDescriptionviewHeightConstraint.isActive = true
        self.pageDescriptionMainview.clipsToBounds = true
        
        self.pageDescriptionMainview.addSubview(self.pageDescriptionviewLable)
        self.pageDescriptionviewLable.anchor(top: self.pageDescriptionMainview.topAnchor, left: self.pageDescriptionMainview.leftAnchor, bottom: self.pageDescriptionMainview.bottomAnchor, right: self.pageDescriptionMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 0)
        
        
        // setup pageControl
        
        self.AddImageMainview.addSubview(self.pageControlMainview)
        self.pageControlMainview.anchor(top: self.pageDescriptionMainview.bottomAnchor, left: self.AddImageMainview.leftAnchor, bottom: nil, right: self.AddImageMainview.rightAnchor, paddingTop: 0, paddingLeft: 18, paddingBottom: 0, paddingRight: 18, width: 0, height: 15)
        
        self.pageControlMainview.addSubview(self.pageController)
        self.pageController.anchor(top: nil, left: nil, bottom: self.pageControlMainview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 27, height: 9)
        self.pageController.centerXAnchor.constraint(equalTo: self.pageControlMainview.centerXAnchor).isActive = true
        self.pageController.numberOfPages = 2
        
        
        // setup page bookamrk and post view
        
        self.AddImageMainview.addSubview(self.pageBookmarkAndPostMainview)
        self.pageBookmarkAndPostMainview.anchor(top: self.pageControlMainview.bottomAnchor, left: self.AddImageMainview.leftAnchor, bottom: nil, right: self.AddImageMainview.rightAnchor, paddingTop: -2, paddingLeft: 5, paddingBottom: 0, paddingRight: 5, width: 0, height: 85)
        
        self.pageBookmarkAndPostMainview.addSubview(self.bookMarkLable)
        self.bookMarkLable.anchor(top: self.pageBookmarkAndPostMainview.topAnchor, left: self.pageBookmarkAndPostMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
        self.pageBookmarkAndPostMainview.addSubview(self.pageBookmarkUserMainview)
        self.pageBookmarkUserMainview.anchor(top: self.bookMarkLable.bottomAnchor, left: self.pageBookmarkAndPostMainview.leftAnchor, bottom: nil, right: self.pageBookmarkAndPostMainview.rightAnchor, paddingTop: 2, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 49)
        self.pageBookmarkUserMainview.layer.cornerRadius = 15.0
        self.pageBookmarkUserMainview.backgroundColor = .white
        self.pageBookmarkUserMainview.layer.applySketchShadowYOne(y: 1)
        
        self.pageBookmarkUserMainview.addSubview(self.collectionViewpageBookmarkUser)
        self.collectionViewpageBookmarkUser.anchor(top: self.pageBookmarkUserMainview.topAnchor, left: self.pageBookmarkUserMainview.leftAnchor, bottom: self.pageBookmarkUserMainview.bottomAnchor, right: self.pageBookmarkUserMainview.rightAnchor, paddingTop: 7.92, paddingLeft: 14.15, paddingBottom: 7.08, paddingRight: 14.85, width: 0, height: 0)
        
        
        self.pageBookmarkAndPostMainview.addSubview(self.postsLable)
        self.postsLable.anchor(top: self.pageBookmarkUserMainview.bottomAnchor, left: self.pageBookmarkAndPostMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 4, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
        
        // setup sample image view
        
        self.AddImageMainview.addSubview(self.sampleImageMainview)
        self.sampleImageMainview.anchor(top: self.pageBookmarkAndPostMainview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 3.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 216, height: 91)
        self.sampleImageMainview.centerXAnchor.constraint(equalTo: self.AddImageMainview.centerXAnchor).isActive = true
        
        self.sampleImageMainview.addSubview(self.sampleImageviewOne)
        self.sampleImageviewOne.anchor(top: nil, left: self.sampleImageMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 98, height: 91)
        self.sampleImageviewOne.centerYAnchor.constraint(equalTo: self.sampleImageMainview.centerYAnchor).isActive = true
        
        self.sampleImageMainview.addSubview(self.sampleImageviewTwo)
        self.sampleImageviewTwo.anchor(top: nil, left: nil, bottom: nil, right: self.sampleImageMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 98, height: 91)
        self.sampleImageviewTwo.centerYAnchor.constraint(equalTo: self.sampleImageMainview.centerYAnchor).isActive = true
        
        
        // setup skip Button View
        
        self.view.addSubview(self.skipButtonView)
        self.skipButtonView.anchor(top: self.AddImageMainview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 19, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 113, height: 44)
        self.skipButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.skipButtonView.addSubview(self.skipButton)
        self.skipButton.anchor(top: self.skipButtonView.topAnchor, left: self.skipButtonView.leftAnchor, bottom: self.skipButtonView.bottomAnchor, right: self.skipButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.skipButton.backgroundColor = black1a
        self.skipButton.layer.cornerRadius = 22.0
        self.skipButton.addTarget(self, action: #selector(self.click_continue), for: .touchUpInside)
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        
        self.setPageDatavalue()
    }
    
    // MARK:- set value
    
    func setPageDatavalue(){
        
        self.TitleLableText.text = "Say Hello to your new Page,\n\(self.pageName)"
        
        self.pageDataPageNameLable.text = self.pageName
        self.pageDataPageIDLable.text = self.pageNameWithID
        
        if self.pageDescriptionText.count != 0{
            self.pageDescriptionviewLable.text = self.pageDescriptionText
            self.pageDescriptionviewHeightConstraint.constant = 22.0
        }else{
            self.pageDescriptionviewHeightConstraint.constant = 0.0
        }
    }
    
    
    // MARK:- Button Action
    
    @objc func click_BookMark()
    {
        print("click_bookmark")
    }
    
    @objc func click_continue(){
        let vc = MainVC()
        isBackUserProfileScreen = 0
        isNavigateToLaunchVC = true
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
}


extension createPageCompleteVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionViewpageBookmarkUser{
            return 6
        }else{
            return 2
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionViewpageBookmarkUser{
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "createPageBookMarkUserList_cell", for: indexPath) as! createPageBookMarkUserList_cell
            
            cell.userImageview.layer.cornerRadius = 34 / 2
            
//            if indexPath.row == 0{
//                cell.totalCountUserLable.isHidden = true
//                cell.kingImageview.isHidden = false
//                cell.kingImageview.image = UIImage(named: "crown1x")
//
//                
//                if let image = FirebaseClient.sharedInstance.firebaseCurrentUser?.ProfilePicture, image.count != 0{
//                    cell.userImageview.kf.indicatorType = .activity
//                    cell.userImageview.kf.setImage(with: URL(string: image))
//                }else{
//                    cell.userImageview.image = UIImage(named: "")
//                }
//                
//            }
//            else if indexPath.row == 5{
//                cell.kingImageview.isHidden = true
//                cell.totalCountUserLable.isHidden = false
//                cell.userImageview.image = UIImage(named: "new_grediant")
//            }else{
//                
//                if indexPath.row == 1 || indexPath.row == 2{
//                    cell.kingImageview.isHidden = false
//                    cell.kingImageview.image = UIImage(named: "Pageadmin1x")
//                }else{
//                    cell.kingImageview.isHidden = true
//                }
//                
//                cell.userImageview.image = UIImage(named: "")
//                cell.totalCountUserLable.isHidden = true
//            }
//            
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "createPageCollectionAddImageCell", for: indexPath) as! createPageCollectionAddImageCell
            
            if indexPath.row == 0{
                cell.backgroundImageBottomConstraint.constant = 0
                
                cell.BackgroundImage.image = self.selectImage
                cell.ImagePlaceHolder.isHidden = true
                cell.userInfo.isHidden = true
            }
            else{
                cell.backgroundImageBottomConstraint.constant = 0
                cell.userInfo.isHidden = false
                
                if let image = FirebaseClient.sharedInstance.firebaseCurrentUser?.ProfilePicture, image.count != 0{
                    cell.userImageview.kf.indicatorType = .activity
                    cell.userImageview.kf.setImage(with: URL(string: image))
                }
                if let name = FirebaseClient.sharedInstance.firebaseCurrentUser?.FullName, name.count != 0{
                    cell.userNameLable.text = name
                }
                cell.TimeLable.text = "On\n" + ApiUtillity.sharedInstance.GetCurrentDate()
                cell.ImagePlaceHolder.isHidden = true
            }
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionViewpageBookmarkUser{
            return CGSize(width: 39, height: 34)
        }else{
            return CGSize(width: self.collectionViewAddImage.frame.size.width, height: self.collectionViewAddImage.frame.size.height)
        }
    }
    
}

extension createPageCompleteVC{
    
    func getuserData(){
        
        FirebaseClient.sharedInstance.getCurrentUserData(controller: self) { (userDocument) in
            let data = userDocument as! userData
            
            FirebaseClient.sharedInstance.firebaseCurrentUser = data
            self.collectionViewAddImage.reloadData()
            self.collectionViewpageBookmarkUser.reloadData()
        }
        
    }
}
