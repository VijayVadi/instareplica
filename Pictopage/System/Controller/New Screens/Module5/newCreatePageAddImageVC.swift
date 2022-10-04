//
//  newCreatePageAddImageVC.swift
//  Pictopage
//
//  Created by Darshit on 04/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import ImageSlideshow
import IQKeyboardManagerSwift
import CropViewController

class newCreatePageAddImageVC: UIViewController {

    //MARK:- Properties
    
    let navHeaderView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let backArrowView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let backArrowImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "back_1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let backArrowButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.addTarget(self, action: #selector(backBtnTapped), for: .touchUpInside)
        return btn
    }()
    
    let headerLabel:UILabel = {
       let lbl = UILabel()
       lbl.textAlignment = .center
       lbl.textColor = .black
       lbl.text = "Create a Page"
       lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
       lbl.numberOfLines = 0
       return lbl
    }()
    
    let chooseHeaderLbl: UILabel = {
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
    
    let pageSliderView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let dividerView: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 0.21)
        return v
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
        
        cv.backgroundColor = .yellow
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
        
//        cv.register(createPageCollectionAddImageCell.self, forCellWithReuseIdentifier: "createPageCollectionAddImageCell")
        cv.register(CreateImageCell.self, forCellWithReuseIdentifier: "CreateImageCell")
        return cv
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
        pageCon.pageIndicatorTintColor = UIColor.lightGray
        pageCon.currentPageIndicatorTintColor = UIColor.black
        return pageCon
    }()
    
    let bottomView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    let chooseButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Choose", for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Regular", size: 19.0)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.clipsToBounds = true
        btn.layer.borderColor = Black101010.cgColor
        btn.layer.borderWidth = 2
        btn.addTarget(self, action: #selector(chooseBtnTapped), for: .touchUpInside)
        return btn
    }()
    
    let resetButton: UIButton = {
        let btn = attributedButton("Reset ", "or ", "Skip")
        btn.addTarget(self, action: #selector(resetBtnTapped), for: .touchUpInside)
        return btn
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
        logoimg.contentMode = .scaleToFill
        return logoimg
    }()
    
    let sampleImageviewTwo: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "selectedImageBackGround")
        logoimg.contentMode = .scaleToFill
        return logoimg
    }()
    
    
    // MARK:- Declare veriables
     
     var pageName = String()
     var pageDescriptionText = String()
    var selectImage: UIImage?
    
     private var croppingStyle = CropViewCroppingStyle.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

}

//MARK:- Helpers
extension newCreatePageAddImageVC {
    
    private func configureUI() {
        
        self.view.backgroundColor = whiteF9FAF9
       
        //Nav Header
        self.view.addSubview(navHeaderView)
        self.navHeaderView.anchor1(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 54)
        
        self.navHeaderView.addSubview(headerLabel)
        self.headerLabel.anchor(top: self.navHeaderView.topAnchor, left: self.navHeaderView.leftAnchor, bottom: nil, right: self.navHeaderView.rightAnchor, paddingTop: 32, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 21)
        
        self.navHeaderView.addSubview(self.backArrowView)
        self.backArrowView.anchor(top: self.navHeaderView.topAnchor, left: self.navHeaderView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 51, height: 51)
        
        self.backArrowView.addSubview(self.backArrowImageview)
        self.backArrowImageview.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: nil, right: nil, paddingTop: 35, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.backArrowView.addSubview(self.backArrowButton)
        self.backArrowButton.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: self.backArrowView.bottomAnchor, right: self.backArrowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.view.addSubview(self.chooseHeaderLbl)
        self.chooseHeaderLbl.anchor(top: self.navHeaderView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 11, paddingLeft: 118, paddingBottom: 0, paddingRight: 118, width: 0, height: 21)

        self.view.addSubview(AddImageMainview)
        self.AddImageMainview.anchor(top: self.chooseHeaderLbl.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 272, height: 369)
        self.AddImageMainview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // setup page slider view
        
        self.AddImageMainview.addSubview(self.pageSliderView)
        self.pageSliderView.anchor(top: self.AddImageMainview.topAnchor, left: self.AddImageMainview.leftAnchor, bottom: nil, right: self.AddImageMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 212)
        self.pageSliderView.backgroundColor = .red
        
        // seup collection view
        
        self.pageSliderView.addSubview(self.collectionViewAddImage)
        self.collectionViewAddImage.fillSuperview()
        
        // setup menu button
        
        self.AddImageMainview.addSubview(self.menuButtonMainview)
        self.menuButtonMainview.anchor(top: self.AddImageMainview.topAnchor, left: self.AddImageMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 21, height: 21)
        
        self.menuButtonMainview.addSubview(self.MenuButtonImageView)
        self.MenuButtonImageView.anchor(top: self.menuButtonMainview.topAnchor, left: self.menuButtonMainview.leftAnchor, bottom: self.menuButtonMainview.bottomAnchor, right: self.menuButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.menuButtonMainview.addSubview(self.MenuButton)
        self.MenuButton.anchor(top: self.menuButtonMainview.topAnchor, left: self.menuButtonMainview.leftAnchor, bottom: self.menuButtonMainview.bottomAnchor, right: self.menuButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup next button
        
        self.AddImageMainview.addSubview(self.nextButtonMainview)
        self.nextButtonMainview.anchor(top: self.AddImageMainview.topAnchor, left: nil, bottom: nil, right: self.AddImageMainview.rightAnchor, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 21, height: 21)
        
        self.nextButtonMainview.addSubview(self.nextButtonImageView)
        self.nextButtonImageView.anchor(top: self.nextButtonMainview.topAnchor, left: self.nextButtonMainview.leftAnchor, bottom: self.nextButtonMainview.bottomAnchor, right: self.nextButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.nextButtonMainview.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonMainview.topAnchor, left: self.nextButtonMainview.leftAnchor, bottom: self.nextButtonMainview.bottomAnchor, right: self.nextButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup pageControl
        
        self.pageSliderView.addSubview(self.pageControlMainview)
        self.pageControlMainview.anchor(top: nil, left: self.pageSliderView.leftAnchor, bottom: self.pageSliderView.bottomAnchor, right: self.pageSliderView.rightAnchor, paddingTop: 0, paddingLeft: 18, paddingBottom: 0, paddingRight: 18, width: 0, height: 16)
        
        self.pageControlMainview.addSubview(self.pageController)
        self.pageController.anchor(top: nil, left: nil, bottom: self.pageControlMainview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 8, paddingRight: 0, width: 27, height: 8)
        self.pageController.centerXAnchor.constraint(equalTo: self.pageControlMainview.centerXAnchor).isActive = true
        self.pageController.numberOfPages = 2
        
        // setup dividerView
        
        self.AddImageMainview.addSubview(self.dividerView)
        self.dividerView.anchor(top: self.pageSliderView.bottomAnchor, left: self.AddImageMainview.leftAnchor, bottom: nil, right: self.AddImageMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        
        // setup page bookamrk and post view
        
        self.AddImageMainview.addSubview(self.pageBookmarkAndPostMainview)
        self.pageBookmarkAndPostMainview.anchor(top: self.dividerView.bottomAnchor, left: self.AddImageMainview.leftAnchor, bottom: self.AddImageMainview.bottomAnchor, right: self.AddImageMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.pageBookmarkAndPostMainview.backgroundColor = .white
        
        self.pageBookmarkAndPostMainview.addSubview(self.bookMarkLable)
        self.bookMarkLable.anchor(top: self.pageBookmarkAndPostMainview.topAnchor, left: self.pageBookmarkAndPostMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 4, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 0, height: 13)
        
        self.pageBookmarkAndPostMainview.addSubview(self.pageBookmarkUserMainview)
        self.pageBookmarkUserMainview.anchor(top: self.bookMarkLable.bottomAnchor, left: self.pageBookmarkAndPostMainview.leftAnchor, bottom: nil, right: self.pageBookmarkAndPostMainview.rightAnchor, paddingTop: 5, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 49)
        self.pageBookmarkUserMainview.layer.cornerRadius = 15.0
        self.pageBookmarkUserMainview.backgroundColor = .white
        self.pageBookmarkUserMainview.layer.applySketchShadowYOne(y: 1)
        
        self.pageBookmarkUserMainview.addSubview(self.collectionViewpageBookmarkUser)
        self.collectionViewpageBookmarkUser.anchor(top: self.pageBookmarkUserMainview.topAnchor, left: self.pageBookmarkUserMainview.leftAnchor, bottom: self.pageBookmarkUserMainview.bottomAnchor, right: self.pageBookmarkUserMainview.rightAnchor, paddingTop: 0, paddingLeft: 10.15, paddingBottom: 0, paddingRight: 12.85, width: 0, height: 0)
        self.collectionViewpageBookmarkUser.clipsToBounds = true
        self.collectionViewpageBookmarkUser.layer.cornerRadius = 15.0
        
        self.pageBookmarkAndPostMainview.addSubview(self.postsLable)
        self.postsLable.anchor(top: self.pageBookmarkUserMainview.bottomAnchor, left: self.pageBookmarkAndPostMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 6, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 0, height: 13)
        
        // setup sample image view
        self.pageBookmarkAndPostMainview.addSubview(self.sampleImageMainview)
        self.sampleImageMainview.anchor(top: self.postsLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 216, height: 61)
        self.sampleImageMainview.centerX(inView: self.pageBookmarkAndPostMainview)
        
        self.sampleImageMainview.addSubview(self.sampleImageviewOne)
        self.sampleImageviewOne.anchor(top: nil, left: self.sampleImageMainview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 98, height: 61)
        self.sampleImageviewOne.centerY(inView: self.sampleImageMainview)
        
        self.sampleImageMainview.addSubview(self.sampleImageviewTwo)
        self.sampleImageviewTwo.anchor(top: nil, left: nil, bottom: nil, right: self.sampleImageMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 98, height: 61)
        self.sampleImageviewTwo.centerY(inView: self.sampleImageMainview)
        
        
        // setup bottomview
        self.view.addSubview(self.bottomView)
        self.bottomView.anchor1(left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingLeft: 47, paddingBottom: 19, paddingRight: 47, width: 0, height: 87)

        self.bottomView.addSubview(self.chooseButton)
        self.chooseButton.anchor1(top: self.bottomView.topAnchor, left: self.bottomView.leftAnchor, bottom: nil, right: self.bottomView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 45)
        self.chooseButton.layer.cornerRadius = 22.5

        self.bottomView.addSubview(self.resetButton)
        self.resetButton.anchor1(top: self.chooseButton.bottomAnchor, paddingTop: 20, height: 22)
        self.resetButton.centerX(inView: self.bottomView)
        
    }
    
    //MARK:- Selectors
    @objc func backBtnTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func chooseBtnTapped() {
        print("DEBUG Choose Button Pressed")
        let vc = newCreatePageProcessVC()
        
        if let img = self.selectImage{
            vc.selectImage = img
        }else{
            vc.selectImage = #imageLiteral(resourceName: "createPageImagePlaceHolder")
        }
        
        vc.pageName = self.pageName
        vc.userName = FirebaseClient.sharedInstance.firebaseCurrentUser!.FullName!
        vc.pageDescription = self.pageDescriptionText
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func resetBtnTapped() {
        print("DEBUG Reset Button Pressed")
        let vc = newCreatePageProcessVC()
        if let img = self.selectImage{
            vc.selectImage = img
        }else{
            vc.selectImage = #imageLiteral(resourceName: "createPageImagePlaceHolder")
        }
        vc.pageName = self.pageName
        vc.userName = FirebaseClient.sharedInstance.firebaseCurrentUser!.UserName!
        vc.pageDescription = self.pageDescriptionText
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func addImageBtnTapped(sender: UIButton) {
        if sender.tag == 0 {
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.allowsEditing = false
            present(imagePickerController, animated: true, completion: nil)
        }
    }
}

extension newCreatePageAddImageVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate, CropViewControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = (info[UIImagePickerController.InfoKey.originalImage] as? UIImage) else { return }
        print(image)
        
        let cropController = CropViewController(croppingStyle: .default, image: image)
        cropController.customAspectRatio = CGSize(width: 50.0, height: 50.0)
        cropController.delegate = self
        cropController.aspectRatioLockDimensionSwapEnabled = true
        cropController.aspectRatioLockEnabled = true
        cropController.cropView.cropBoxResizeEnabled = false
        cropController.aspectRatioPickerButtonHidden = true
        cropController.resetButtonHidden = true
        cropController.modalPresentationStyle = .fullScreen
        if croppingStyle == .circular {
            if picker.sourceType == .camera {
                picker.dismiss(animated: true, completion: {
                    self.present(cropController, animated: true, completion: nil)
                })
            } else {
                picker.pushViewController(cropController, animated: true)
            }
        }
        else {
            picker.dismiss(animated: true, completion: {
                self.present(cropController, animated: true, completion: nil)
            })
        }
    }
    
    public func cropViewController(_ cropViewController: CropViewController, didCropToImage image: UIImage, withRect cropRect: CGRect, angle: Int) {
        print(image)
        self.selectImage = image
        
        cropViewController.dismiss(animated: true) {
            
//            self.skipButtonView.isHidden = true
//            self.SkipAndContinuebuttonview.isHidden = false
            
            self.collectionViewAddImage.reloadData()
        }
        
    }
}

extension newCreatePageAddImageVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
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
            
            cell.subview.layer.cornerRadius = ((39 - 6) / 2)
            cell.userImageview.layer.cornerRadius = ((39 - 6) / 2)
            cell.BackgroundCircleImage.layer.cornerRadius = ((39 - 6) / 2)
            
            
            if indexPath.row == 0{
                cell.userImageview.isHidden = false
                cell.BackgroundCircleImage.isHidden = true
                cell.lableViewAll.isHidden = true
                cell.kingImageview.isHidden = false
                cell.kingImageview.image = UIImage(named: "crown1x")
            }else if indexPath.row == 1 || indexPath.row == 2{
                cell.userImageview.isHidden = false
                cell.BackgroundCircleImage.isHidden = true
                cell.lableViewAll.isHidden = true
                cell.kingImageview.isHidden = false
                cell.kingImageview.image = UIImage(named: "Pageadmin1x")
            }else if indexPath.row == 5{
                cell.kingImageview.isHidden = true
                cell.userImageview.isHidden = true
                cell.BackgroundCircleImage.isHidden = false
                cell.lableViewAll.isHidden = false
            }else{
                cell.userImageview.isHidden = false
                cell.kingImageview.isHidden = true
                cell.BackgroundCircleImage.isHidden = true
                cell.lableViewAll.isHidden = true
            }
            
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CreateImageCell", for: indexPath) as! CreateImageCell
            
            if indexPath.row == 0{

                cell.slideView.isHidden = false
                cell.dataView.isHidden = false
                cell.userInfo.isHidden = true
                
                if let img = self.selectImage{
                    cell.BackgroundImageView.image = img
                    cell.subView.isHidden = true
                }else{
                    cell.subView.isHidden = false
                }
                
                cell.pageNameLabel.text = self.pageName
                
                if let pictoID = FirebaseClient.sharedInstance.firebaseCurrentUser?.pictoID, pictoID.count != 0{
                    let mainString = "by \(pictoID)"
                    let subString = "\(pictoID)"
                    let subRange = NSMakeRange(mainString.count - subString.count, subString.count)
                    cell.byLabel.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: mainString, BoldRange: subRange, font1: UIFont(name: "HelveticaNeue", size: 11.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 11.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
                }else{
                    cell.byLabel.text = ""
                }
                
                cell.addImageTapButton.tag = indexPath.row
                cell.addImageTapButton.addTarget(self, action: #selector(addImageBtnTapped), for: .touchUpInside)
            }
            else{
                
                cell.subView.isHidden = true
                cell.slideView.isHidden = true
                cell.dataView.isHidden = true
                cell.userInfo.isHidden = false
                
                if let image = FirebaseClient.sharedInstance.firebaseCurrentUser?.ProfilePicture, image.count != 0{
                    cell.userImageview.kf.indicatorType = .activity
                    cell.userImageview.kf.setImage(with: URL(string: image))
                }
                if let name = FirebaseClient.sharedInstance.firebaseCurrentUser?.FullName, name.count != 0{
                    cell.userNameLable.text = name
                }
                cell.TimeLable.text = "On\n" + ApiUtillity.sharedInstance.GetCurrentDate()
                
            }

            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionViewpageBookmarkUser{
            return CGSize(width: 39, height: 33)
        }else{
            return CGSize(width: self.collectionViewAddImage.frame.size.width, height: self.collectionViewAddImage.frame.size.height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.collectionViewpageBookmarkUser{

        }else{
//            if indexPath.row == 0{
//                let imagePickerController = UIImagePickerController()
//                imagePickerController.delegate = self
//                imagePickerController.allowsEditing = false
//                present(imagePickerController, animated: true, completion: nil)
//            }
        }
    }
}

extension newCreatePageAddImageVC {
    func getuserData(){
        FirebaseClient.sharedInstance.getCurrentUserData(controller: self) { (userDocument) in
            let data = userDocument as! userData
            FirebaseClient.sharedInstance.firebaseCurrentUser = data
            self.collectionViewAddImage.reloadData()
            self.collectionViewpageBookmarkUser.reloadData()
        }
    }
}

extension newCreatePageAddImageVC: UIScrollViewDelegate{
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        self.pageController.currentPage = Int(currentPageNumber)
    }
}

