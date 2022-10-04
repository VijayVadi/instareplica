//
//  postScreen.swift
//  Pictopage
//
//  Created by Grewon on 29/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import GSImageViewerController
import FittedSheets
import IQKeyboardManagerSwift
import Firebase

class postScreen: UIViewController {
    
    // Report Popup
    var popupView2: UIView = {
        let v = UIView()
        v.backgroundColor = Black101010
        v.clipsToBounds = true
        return v
    }()
    
    var popup2DownArroView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        v.clipsToBounds = true
        return v
    }()
    
    var popup2DownArroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "WhiteDownArrow1x")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    var popup2DownArroButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.addTarget(self, action: #selector(dismissPopup2), for: .touchUpInside)
        return button
    }()
    
    let popup2TitleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Report Post"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var CopyrightedMaterialView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        v.clipsToBounds = true
        return v
    }()
    
    var CopyrightedMaterialRightArrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "iconSetting_rightArrowBlack_1x")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let CopyrightedMaterialLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.text = "Contains Copyrighted Material"
        lbl.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var CopyrightedMaterialButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.addTarget(self, action: #selector(click_CopyrightedMaterial), for: .touchUpInside)
        return button
    }()
    
    var InappropriateContentView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        v.clipsToBounds = true
        return v
    }()
    
    var InappropriateContentRightArrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "iconSetting_rightArrowBlack_1x")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let InappropriateContentLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.text = "Contains Inappropriate Content"
        lbl.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var InappropriateContentButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.addTarget(self, action: #selector(click_inappropriateContent), for: .touchUpInside)
        return button
    }()
    
    var InappropriateProfileInfoView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        v.clipsToBounds = true
        return v
    }()
    
    var InappropriateProfileInfoRightArrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "iconSetting_rightArrowBlack_1x")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
//        imageView.changeImageColor(color: .white)
        return imageView
    }()
    
    let InappropriateProfileInfoLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.text = "User has Inappropriate Profile Info"
        lbl.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var InappropriateProfileInfoButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.addTarget(self, action: #selector(click_inappropriateProfileInfo), for: .touchUpInside)
        return button
    }()
    
    var stolenAccountView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        v.clipsToBounds = true
        return v
    }()
    
    var stolenAccountRightArrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "iconSetting_rightArrowBlack_1x")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let stolenAccountLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.text = "The user’s account has been stolen"
        lbl.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var stolenAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.addTarget(self, action: #selector(click_stolenAccount), for: .touchUpInside)
        return button
    }()
    
    var collectionView_post: UICollectionView!
    
    var onceOnly = false
    var scrolltoIndex = Int()
    
    var postArr = [ModelPost]()
    var index = Int()
    
    var isShowReportSection = Bool()
    
    var f_postCell = fullScreenPost_cell()
    var bottomPopupViewBC2 = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clear
        self.setupCollectionView()
        self.createReportPopup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.getCommentCount()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK:- Setup Collection view
    
    func setupCollectionView()
    {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        self.collectionView_post = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        self.collectionView_post.dataSource = self
        self.collectionView_post.delegate = self
        self.collectionView_post.register(fullScreenPost_cell.self, forCellWithReuseIdentifier: "fullScreenPost_cell")
        self.collectionView_post.backgroundColor = UIColor.clear
        
        self.collectionView_post.isPrefetchingEnabled = true
        self.collectionView_post.isSpringLoaded = false
        
        self.collectionView_post.isScrollEnabled = true
        self.collectionView_post.isPagingEnabled = true
        
        self.collectionView_post.isDirectionalLockEnabled = false
        self.collectionView_post.bouncesZoom = true
        self.collectionView_post.bounces = true
        self.collectionView_post.alwaysBounceHorizontal = true
        self.collectionView_post.alwaysBounceVertical = false
        
        self.collectionView_post.showsVerticalScrollIndicator = false
        self.collectionView_post.showsHorizontalScrollIndicator = false
        
        self.view.addSubview(collectionView_post)
        
    }
    
    // MARK:- create Report Popup
    
    func createReportPopup(){
        // Bottom popup 2
        self.view.addSubview(self.popupView2)
        self.popupView2.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -500, paddingRight: 0, width: 0, height: 248)
        self.popupView2.layer.masksToBounds = true
        self.popupView2.layer.cornerRadius = 16
        self.popupView2.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.popupView2.layoutIfNeeded()
        self.bottomPopupViewBC2 = self.popupView2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 500)
        self.bottomPopupViewBC2.isActive = true
        
        self.popupView2.addSubview(self.popup2DownArroView)
        self.popup2DownArroView.anchor(top: self.popupView2.topAnchor, left: nil, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 52, height: 35)
        
        self.popup2DownArroView.addSubview(self.popup2DownArroImageView)
        self.popup2DownArroImageView.anchor(top: self.popup2DownArroView.topAnchor, left: self.popup2DownArroView.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 17, height: 10)
//        self.popup2DownArroImageView.changeImageColor(color: .white)
        
        self.popup2DownArroView.addSubview(self.popup2DownArroButton)
        self.popup2DownArroButton.anchor(top: self.popup2DownArroView.topAnchor, left: self.popup2DownArroView.leftAnchor, bottom: self.popup2DownArroView.bottomAnchor, right: self.popup2DownArroView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.popupView2.addSubview(self.popup2TitleLable)
        self.popup2TitleLable.anchor(top: self.popupView2.topAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 10, paddingLeft: 140, paddingBottom: 0, paddingRight: 140, width: 0, height: 21)
        
        
        //setup CopyrightedMaterialView view
        self.popupView2.addSubview(self.CopyrightedMaterialView)
        self.CopyrightedMaterialView.anchor(top: self.popup2TitleLable.bottomAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 25, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 18)
        
        self.CopyrightedMaterialView.addSubview(self.CopyrightedMaterialRightArrowImageView)
        self.CopyrightedMaterialRightArrowImageView.anchor(top: self.CopyrightedMaterialView.topAnchor, left: nil, bottom: self.CopyrightedMaterialView.bottomAnchor, right: self.CopyrightedMaterialView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 7, height: 0)
        self.CopyrightedMaterialRightArrowImageView.changeImageColor(color: .white)
        
        self.CopyrightedMaterialView.addSubview(self.CopyrightedMaterialLable)
        self.CopyrightedMaterialLable.anchor(top: self.CopyrightedMaterialView.topAnchor, left: self.CopyrightedMaterialView.leftAnchor, bottom: self.CopyrightedMaterialView.bottomAnchor, right: self.CopyrightedMaterialView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.CopyrightedMaterialView.addSubview(self.CopyrightedMaterialButton)
        self.CopyrightedMaterialButton.anchor(top: self.CopyrightedMaterialView.topAnchor, left: self.CopyrightedMaterialView.leftAnchor, bottom: self.CopyrightedMaterialView.bottomAnchor, right: self.CopyrightedMaterialView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        //setup Inappropriate Content view
        self.popupView2.addSubview(self.InappropriateContentView)
        self.InappropriateContentView.anchor(top: self.CopyrightedMaterialView.bottomAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 30, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 18)
        
        self.InappropriateContentView.addSubview(self.InappropriateContentRightArrowImageView)
        self.InappropriateContentRightArrowImageView.anchor(top: self.InappropriateContentView.topAnchor, left: nil, bottom: self.InappropriateContentView.bottomAnchor, right: self.InappropriateContentView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 7, height: 0)
        self.InappropriateContentRightArrowImageView.changeImageColor(color: .white)
        
        self.InappropriateContentView.addSubview(self.InappropriateContentLable)
        self.InappropriateContentLable.anchor(top: self.InappropriateContentView.topAnchor, left: self.InappropriateContentView.leftAnchor, bottom: self.InappropriateContentView.bottomAnchor, right: self.InappropriateContentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.InappropriateContentView.addSubview(self.InappropriateContentButton)
        self.InappropriateContentButton.anchor(top: self.InappropriateContentView.topAnchor, left: self.InappropriateContentView.leftAnchor, bottom: self.InappropriateContentView.bottomAnchor, right: self.InappropriateContentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        //setup Inappropriate Profile Info view
        self.popupView2.addSubview(self.InappropriateProfileInfoView)
        self.InappropriateProfileInfoView.anchor(top: self.InappropriateContentView.bottomAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 30, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 18)
        
        self.InappropriateProfileInfoView.addSubview(self.InappropriateProfileInfoRightArrowImageView)
        self.InappropriateProfileInfoRightArrowImageView.anchor(top: self.InappropriateProfileInfoView.topAnchor, left: nil, bottom: self.InappropriateProfileInfoView.bottomAnchor, right: self.InappropriateProfileInfoView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 7, height: 0)
        self.InappropriateProfileInfoRightArrowImageView.changeImageColor(color: .white)
        
        self.InappropriateProfileInfoView.addSubview(self.InappropriateProfileInfoLable)
        self.InappropriateProfileInfoLable.anchor(top: self.InappropriateProfileInfoView.topAnchor, left: self.InappropriateProfileInfoView.leftAnchor, bottom: self.InappropriateProfileInfoView.bottomAnchor, right: self.InappropriateProfileInfoView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.InappropriateProfileInfoView.addSubview(self.InappropriateProfileInfoButton)
        self.InappropriateProfileInfoButton.anchor(top: self.InappropriateProfileInfoView.topAnchor, left: self.InappropriateProfileInfoView.leftAnchor, bottom: self.InappropriateProfileInfoView.bottomAnchor, right: self.InappropriateProfileInfoView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        //setup stolen account view
        self.popupView2.addSubview(self.stolenAccountView)
        self.stolenAccountView.anchor(top: self.InappropriateProfileInfoView.bottomAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 30, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 18)
        
        self.stolenAccountView.addSubview(self.stolenAccountRightArrowImageView)
        self.stolenAccountRightArrowImageView.anchor(top: self.stolenAccountView.topAnchor, left: nil, bottom: self.stolenAccountView.bottomAnchor, right: self.stolenAccountView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 7, height: 0)
        self.stolenAccountRightArrowImageView.changeImageColor(color: .white)
        
        self.stolenAccountView.addSubview(self.stolenAccountLable)
        self.stolenAccountLable.anchor(top: self.stolenAccountView.topAnchor, left: self.stolenAccountView.leftAnchor, bottom: self.stolenAccountView.bottomAnchor, right: self.stolenAccountView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.stolenAccountView.addSubview(self.stolenAccountButton)
        self.stolenAccountButton.anchor(top: self.stolenAccountView.topAnchor, left: self.stolenAccountView.leftAnchor, bottom: self.stolenAccountView.bottomAnchor, right: self.stolenAccountView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    
    // MARK:- Button Action
    
    @objc func click_upArrow()
    {
        self.isShowReportSection = true
        self.collectionView_post.reloadData()
    }
    
    @objc func click_downArrow()
    {
        self.isShowReportSection = false
        self.collectionView_post.reloadData()
    }
    
    @objc func click_userProfile(sender: UIButton)
    {
        let vc = viewUserProfileVC()
        if let u_id = self.postArr[sender.tag].postCreatedUserID, u_id.count != 0{
            vc.userID = u_id
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func click_pageName(sender: UIButton)
    {
        let vc = newPageDetailsVC()
        
        if let p_id = self.postArr[sender.tag].postedPageId, p_id.count != 0{
            vc.pageID = p_id
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func click_close()
    {
        self.navigationController?.popViewController(animated: false)
    }
    
    @objc func click_likeButton(sender: UIButton){
        print("like")
        
        var isLIke = false
        
        if let pid = self.postArr[sender.tag].postID, pid.count != 0{
            if self.postArr[sender.tag].postLikeUsers.count != 0{
                if self.postArr[sender.tag].postLikeUsers.contains(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID){
                    isLIke = false
                }else{
                    isLIke = true
                }
            }else{
                isLIke = true
            }
            
            FirebaseClient.sharedInstance.setLikePost(postId: pid, isLike: isLIke) { (_) in
                if isLIke{
                    self.postArr[sender.tag].postLikeUsers.append(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID)
                    let indexPath = IndexPath(item: sender.tag, section: 0)
                    self.collectionView_post.reloadItems(at: [indexPath])
                }else{
                    self.postArr[sender.tag].postLikeUsers = self.postArr[sender.tag].postLikeUsers.filter{$0 != FirebaseClient.sharedInstance.firebaseCurrentUser!.userID}
                    let indexPath = IndexPath(item: sender.tag, section: 0)
                    self.collectionView_post.reloadItems(at: [indexPath])
                }
                
            }
        }
    }
    
    @objc func click_commentButton(sender: UIButton)
    {
        print("comment")
        let controller = bottomViewVC.instantiate()
        
        if let pid = self.postArr[sender.tag].postID, pid.count != 0{
            controller.postId = pid
        }
        
        var bottomsheetDefaultHieght = 450
        let screenHeight = self.view.frame.size.height
        var stringSizes = [String]()
        
        repeat {
            stringSizes.append("\(bottomsheetDefaultHieght)")
            bottomsheetDefaultHieght = bottomsheetDefaultHieght + 1
        }while bottomsheetDefaultHieght <= Int(screenHeight)
        
        var sizes: [SheetSize] = stringSizes.compactMap({
            Int($0.trimmingCharacters(in: .whitespacesAndNewlines))
        }).map({
            SheetSize.fixed(CGFloat($0))
        })
        sizes.append(.fullScreen)
        
        let sheetController = SheetViewController(controller: controller, sizes: sizes)
        sheetController.adjustForBottomSafeArea = true
        sheetController.blurBottomSafeArea = true
        sheetController.dismissOnBackgroundTap = true
        sheetController.extendBackgroundBehindHandle = false
        sheetController.topCornersRadius = true ? 15 : 0
        sheetController.handleColor = UIColor.white
        
        sheetController.willDismiss = { _ in
            print("Will dismiss Table view")
        }
        sheetController.didDismiss = { _ in
            print("Will dismiss Table view")
        }
        
        self.present(sheetController, animated: false, completion: nil)
        
    }
    
    @objc func click_report(sender: UIButton)
    {
        print("report")
        
        self.showHidePopup1View(constant: 0, isHidden: false, aView: self.popupView2)
        let indexPath = IndexPath(row: sender.tag, section: 0)
        let cell = self.collectionView_post!.cellForItem(at: indexPath) as! fullScreenPost_cell
        cell.clickDownArrow()
        
    }
    
    @objc func dismissPopup2(sender:UIButton) {
        self.showHidePopup1View(constant: 500, isHidden: true, aView: self.popupView2)
    }
    
    @objc func click_CopyrightedMaterial(sender:UIButton) {
        let vc = copyrightReportVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func click_inappropriateContent(sender:UIButton) {
        let vc = ReportedBannedVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func click_inappropriateProfileInfo(sender:UIButton) {
        let vc = ReportedTemporaryBanVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func click_stolenAccount(sender:UIButton) {
        let vc = reportVC()
        self.present(vc, animated: true, completion: nil)
    }
}

//Helpers
extension postScreen {
    func showHidePopup1View(constant: CGFloat, isHidden: Bool, aView: UIView) {
        
        if aView == self.popupView2 {
            self.bottomPopupViewBC2.constant = constant
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}

extension postScreen: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.postArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fullScreenPost_cell", for: indexPath) as! fullScreenPost_cell
        
        let dict = self.postArr[indexPath.row]
        
        if let image = dict.postedImageURl, image.count != 0
        {
            cell.photoImageView.kf.indicatorType = .activity
            cell.photoImageView.kf.setImage(with: URL(string: image))
        }
        
        if let fname = dict.PictoID, fname.count != 0{
            cell.usernameLabel.text = fname
        }else{
            cell.usernameLabel.text = ""
        }
        
        if let image = dict.postCreatedUserProfilePicture, image.count != 0
        {
            cell.userProfileImageView.kf.indicatorType = .activity
            cell.userProfileImageView.kf.setImage(with: URL(string: image))
        }
        
        if let pname = dict.postedPageName, pname.count != 0{
            
            var dateTime = String()
            
            let dt = dict.creationDate
            dateTime = ApiUtillity.sharedInstance.timeAgoSinceDate(date: dt, numericDates: false)
            
            let myString = "to \(pname) \(dateTime)"
            let myString1 = "\(pname)"
            let targetString = myString
            let range = NSMakeRange(3, myString1.count)
            cell.TimeLabel.attributedText = ApiUtillity.sharedInstance.attributedBoldString(from: targetString, BoldRange: range, font1: UIFont(name: "HelveticaNeue-Light", size: 12.0)!, font2: UIFont(name: "HelveticaNeue-Thin", size: 12.0)!)
        }
        
        if dict.postLikeUsers.count != 0{
            cell.ReportLikeCountLabel.text = "\(dict.postLikeUsers.count)"
            if dict.postLikeUsers.contains(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID){
                cell.likeImageView.image = UIImage(named: "postLikeGray1x")
                cell.ReportlikeImageView.image = UIImage(named: "postLikeGray1x")
            }else{
                cell.likeImageView.image = UIImage(named: "likeComment1x")
                cell.ReportlikeImageView.image = UIImage(named: "likeComment1x")
            }
        }else{
            cell.ReportLikeCountLabel.text = "0"
            cell.likeImageView.image = UIImage(named: "likeComment1x")
            cell.ReportlikeImageView.image = UIImage(named: "likeComment1x")
        }
        
        cell.ReportCommentCountLabel.text = "\(dict.totalCommentCount)"
        
        cell.commentButton.tag = indexPath.item
        cell.likeButton.tag = indexPath.item
        cell.ReportCommentButton.tag = indexPath.item
        cell.ReportlikeButton.tag = indexPath.item
        cell.userProfileImageViewButton.tag = indexPath.row
        cell.userNameButton.tag = indexPath.row
        cell.pageNameButton.tag = indexPath.row
        
        cell.reportButton.addTarget(self, action: #selector(self.click_report), for: .touchUpInside)
        cell.commentButton.addTarget(self, action: #selector(self.click_commentButton), for: .touchUpInside)
        cell.ReportCommentButton.addTarget(self, action: #selector(self.click_commentButton), for: .touchUpInside)
        cell.likeButton.addTarget(self, action: #selector(self.click_likeButton), for: .touchUpInside)
        cell.ReportlikeButton.addTarget(self, action: #selector(self.click_likeButton), for: .touchUpInside)
        cell.closeButton.addTarget(self, action: #selector(self.click_close), for: .touchUpInside)
        
        
        cell.userProfileImageViewButton.addTarget(self, action: #selector(self.click_userProfile), for: .touchUpInside)
        cell.userNameButton.addTarget(self, action: #selector(self.click_userProfile), for: .touchUpInside)
        cell.pageNameButton.addTarget(self, action: #selector(self.click_pageName), for: .touchUpInside)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! fullScreenPost_cell
        let imageInfo   = GSImageInfo(image: cell.photoImageView.image!, imageMode: .aspectFit)
        let imageViewer = GSImageViewerController(imageInfo: imageInfo)
        imageViewer.modalPresentationStyle = .fullScreen
        self.present(imageViewer, animated: false, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = self.collectionView_post.frame.size.height
        let width = self.view.frame.width
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if !onceOnly {
            let indexToScrollTo = IndexPath(item: index, section: indexPath.section)
            self.collectionView_post.scrollToItem(at: indexToScrollTo, at: .left, animated: false)
            onceOnly = true
        }
    }
}


extension postScreen{
    
    func getCommentCount(){
        
        for (index, value) in self.postArr.enumerated(){
            FirebaseClient.sharedInstance.getCommentAboutPostID(postID: value.postID!) { (CommentData) in
                let data = CommentData as! [QueryDocumentSnapshot]
                if data.count != 0{
                    self.postArr[index].totalCommentCount = data.count
                }else{
                    self.postArr[index].totalCommentCount = 0
                }
                self.collectionView_post.reloadData()
            }
        }
    }
    
}


