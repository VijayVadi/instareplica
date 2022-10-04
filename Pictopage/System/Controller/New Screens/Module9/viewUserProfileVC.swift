//
//  viewUserProfileVC.swift
//  Pictopage
//
//  Created by Grewon on 28/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase

class viewUserProfileVC: UIViewController, UIGestureRecognizerDelegate {

    let headerView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    var  tableviewuserData: UITableView = {
        var tableview = UITableView()
        tableview.backgroundColor = .white
        tableview = UITableView(frame: CGRect.zero, style: UITableView.Style.plain)
        return tableview
    }()
    
    var dismissBGButton:UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        button.addTarget(self, action: #selector(dismissPopup), for: .touchUpInside)
        return button
    }()
    
    var popupView1: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.clipsToBounds = true
        return v
    }()
    
    var popupDownArroView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.clipsToBounds = true
        return v
    }()
    
    var popupDownArroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "downArrowblack1x")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    var popupDownArroButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.addTarget(self, action: #selector(dismissPopup1), for: .touchUpInside)
        return button
    }()
    
    let reportUserView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let reportUserImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "deletePage1x")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()                         
    
    let reportUserButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Report User", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        return btn
    }()
    
    var popupView2: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.clipsToBounds = true
        return v
    }()
    
    var popup2DownArroView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.clipsToBounds = true
        return v
    }()
    
    var popup2DownArroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "downArrowblack1x")
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
        lbl.textColor = .black
        lbl.text = "Report"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var spamAndFakeAccountView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.clipsToBounds = true
        return v
    }()
    
    var spamAndFakeRightArrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "iconSetting_rightArrowBlack_1x")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let spamAndFakeAccountLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Spam/Fake Account"
        lbl.font = UIFont(name: "HelveticaNeue", size: 16.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var spamAndFakeAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.addTarget(self, action: #selector(click_spamAndFake), for: .touchUpInside)
        return button
    }()
    
    var InappropriateContentView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
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
        lbl.textColor = .black
        lbl.text = "Inappropriate Content"
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
        v.backgroundColor = .white
        v.clipsToBounds = true
        return v
    }()
    
    var InappropriateProfileInfoRightArrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "iconSetting_rightArrowBlack_1x")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let InappropriateProfileInfoLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "Inappropriate Profile Info"
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
        v.backgroundColor = .white
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
        lbl.textColor = .black
        lbl.text = "The account has been stolen"
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
    
    var mypagesArr = [PageList]()
    var bookMarkpagesArr = [PageList]()
    var mypagesTempArr = [PageList]()
    var bookMarkpagesTempArr = [PageList]()
    
    var userID = String()
    var user: userData?
    
    var bottomPopupViewBC1 = NSLayoutConstraint()
    var bottomPopupViewBC2 = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = whiteF7F7F9
        
        
        // setup tableview
        
        self.view.addSubview(self.tableviewuserData)
        self.tableviewuserData.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        if #available(iOS 11.0, *) {
            self.tableviewuserData.contentInsetAdjustmentBehavior = .never
        }
        
        self.setUpTableview()
        
        // setup bottom view
        self.view.addSubview(self.dismissBGButton)
        self.dismissBGButton.fillSuperview()
        self.dismissBGButton.isHidden = true
        
        
        // Bottom popup 1
        self.view.addSubview(self.popupView1)
        self.popupView1.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -500, paddingRight: 0, width: 0, height: 91)
        self.popupView1.layer.masksToBounds = true
        self.popupView1.layer.cornerRadius = 16
        self.popupView1.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.popupView1.layoutIfNeeded()
        self.bottomPopupViewBC1 = self.popupView1.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 500)
        self.bottomPopupViewBC1.isActive = true
        
        self.popupView1.addSubview(self.popupDownArroView)
        self.popupDownArroView.anchor(top: self.popupView1.topAnchor, left: nil, bottom: nil, right: self.popupView1.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 52, height: 35)
        
        self.popupDownArroView.addSubview(self.popupDownArroImageView)
        self.popupDownArroImageView.anchor(top: self.popupDownArroView.topAnchor, left: self.popupDownArroView.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 17, height: 10)
        self.popupDownArroImageView.changeImageColor(color: black10)
        
        self.popupDownArroView.addSubview(self.popupDownArroButton)
        self.popupDownArroButton.anchor(top: self.popupDownArroView.topAnchor, left: self.popupDownArroView.leftAnchor, bottom: self.popupDownArroView.bottomAnchor, right: self.popupDownArroView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.popupView1.addSubview(self.reportUserView)
        self.reportUserView.anchor(top: self.popupView1.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 168, height: 41)
        self.reportUserView.centerXAnchor.constraint(equalTo: self.popupView1.centerXAnchor).isActive = true
        self.reportUserView.layer.cornerRadius = 20.5
        self.reportUserView.clipsToBounds = true
        self.reportUserView.backgroundColor = black10

        self.reportUserView.addSubview(self.reportUserImageview)
        self.reportUserImageview.anchor(top: self.reportUserView.topAnchor, left: self.reportUserView.leftAnchor, bottom: self.reportUserView.bottomAnchor, right: self.reportUserView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.reportUserView.addSubview(self.reportUserButton)
        self.reportUserButton.anchor(top: self.reportUserView.topAnchor, left: self.reportUserView.leftAnchor, bottom: self.reportUserView.bottomAnchor, right: self.reportUserView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.reportUserButton.addTarget(self, action: #selector(self.click_reportUser), for: .touchUpInside)
        
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
        self.popup2DownArroImageView.changeImageColor(color: black10)
        
        self.popup2DownArroView.addSubview(self.popup2DownArroButton)
        self.popup2DownArroButton.anchor(top: self.popup2DownArroView.topAnchor, left: self.popup2DownArroView.leftAnchor, bottom: self.popup2DownArroView.bottomAnchor, right: self.popup2DownArroView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.popupView2.addSubview(self.popup2TitleLable)
        self.popup2TitleLable.anchor(top: self.popupView2.topAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 10, paddingLeft: 160.5, paddingBottom: 0, paddingRight: 160.5, width: 0, height: 21)
        
        
        //setup spam and fake account view
        self.popupView2.addSubview(self.spamAndFakeAccountView)
        self.spamAndFakeAccountView.anchor(top: self.popup2TitleLable.bottomAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 25, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 18)
        
        self.spamAndFakeAccountView.addSubview(self.spamAndFakeRightArrowImageView)
        self.spamAndFakeRightArrowImageView.anchor(top: self.spamAndFakeAccountView.topAnchor, left: nil, bottom: self.spamAndFakeAccountView.bottomAnchor, right: self.spamAndFakeAccountView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 7, height: 0)
        
        self.spamAndFakeAccountView.addSubview(self.spamAndFakeAccountLable)
        self.spamAndFakeAccountLable.anchor(top: self.spamAndFakeAccountView.topAnchor, left: self.spamAndFakeAccountView.leftAnchor, bottom: self.spamAndFakeAccountView.bottomAnchor, right: self.spamAndFakeAccountView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.spamAndFakeAccountView.addSubview(self.spamAndFakeAccountButton)
        self.spamAndFakeAccountButton.anchor(top: self.spamAndFakeAccountView.topAnchor, left: self.spamAndFakeAccountView.leftAnchor, bottom: self.spamAndFakeAccountView.bottomAnchor, right: self.spamAndFakeAccountView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        //setup Inappropriate Content view
        self.popupView2.addSubview(self.InappropriateContentView)
        self.InappropriateContentView.anchor(top: self.spamAndFakeAccountView.bottomAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 30, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 18)
        
        self.InappropriateContentView.addSubview(self.InappropriateContentRightArrowImageView)
        self.InappropriateContentRightArrowImageView.anchor(top: self.InappropriateContentView.topAnchor, left: nil, bottom: self.InappropriateContentView.bottomAnchor, right: self.InappropriateContentView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 7, height: 0)
        
        self.InappropriateContentView.addSubview(self.InappropriateContentLable)
        self.InappropriateContentLable.anchor(top: self.InappropriateContentView.topAnchor, left: self.InappropriateContentView.leftAnchor, bottom: self.InappropriateContentView.bottomAnchor, right: self.InappropriateContentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.InappropriateContentView.addSubview(self.InappropriateContentButton)
        self.InappropriateContentButton.anchor(top: self.InappropriateContentView.topAnchor, left: self.InappropriateContentView.leftAnchor, bottom: self.InappropriateContentView.bottomAnchor, right: self.InappropriateContentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        //setup Inappropriate Profile Info view
        self.popupView2.addSubview(self.InappropriateProfileInfoView)
        self.InappropriateProfileInfoView.anchor(top: self.InappropriateContentView.bottomAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 30, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 18)
        
        self.InappropriateProfileInfoView.addSubview(self.InappropriateProfileInfoRightArrowImageView)
        self.InappropriateProfileInfoRightArrowImageView.anchor(top: self.InappropriateProfileInfoView.topAnchor, left: nil, bottom: self.InappropriateProfileInfoView.bottomAnchor, right: self.InappropriateProfileInfoView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 7, height: 0)
        
        self.InappropriateProfileInfoView.addSubview(self.InappropriateProfileInfoLable)
        self.InappropriateProfileInfoLable.anchor(top: self.InappropriateProfileInfoView.topAnchor, left: self.InappropriateProfileInfoView.leftAnchor, bottom: self.InappropriateProfileInfoView.bottomAnchor, right: self.InappropriateProfileInfoView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.InappropriateProfileInfoView.addSubview(self.InappropriateProfileInfoButton)
        self.InappropriateProfileInfoButton.anchor(top: self.InappropriateProfileInfoView.topAnchor, left: self.InappropriateProfileInfoView.leftAnchor, bottom: self.InappropriateProfileInfoView.bottomAnchor, right: self.InappropriateProfileInfoView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        //setup stolen account view
        self.popupView2.addSubview(self.stolenAccountView)
        self.stolenAccountView.anchor(top: self.InappropriateProfileInfoView.bottomAnchor, left: self.popupView2.leftAnchor, bottom: nil, right: self.popupView2.rightAnchor, paddingTop: 30, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0, height: 18)
        
        self.stolenAccountView.addSubview(self.stolenAccountRightArrowImageView)
        self.stolenAccountRightArrowImageView.anchor(top: self.stolenAccountView.topAnchor, left: nil, bottom: self.stolenAccountView.bottomAnchor, right: self.stolenAccountView.rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 3, paddingRight: 0, width: 7, height: 0)
        
        self.stolenAccountView.addSubview(self.stolenAccountLable)
        self.stolenAccountLable.anchor(top: self.stolenAccountView.topAnchor, left: self.stolenAccountView.leftAnchor, bottom: self.stolenAccountView.bottomAnchor, right: self.stolenAccountView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.stolenAccountView.addSubview(self.stolenAccountButton)
        self.stolenAccountButton.anchor(top: self.stolenAccountView.topAnchor, left: self.stolenAccountView.leftAnchor, bottom: self.stolenAccountView.bottomAnchor, right: self.stolenAccountView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.getuserData()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }

    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        self.tableviewuserData.register(view_otherUserProfileData_cell.self, forCellReuseIdentifier: "view_otherUserProfileData_cell")
        self.tableviewuserData.register(loginUserProfile_pageCell.self, forCellReuseIdentifier: "loginUserProfile_pageCell")
        self.tableviewuserData.register(loginUserProfileHeader_cell.self, forCellReuseIdentifier: "loginUserProfileHeader_cell")
        self.tableviewuserData.register(loginUserProfile_connection_cell.self, forCellReuseIdentifier: "loginUserProfile_connection_cell")
        self.tableviewuserData.dataSource = self
        self.tableviewuserData.delegate = self
        self.tableviewuserData.tableFooterView = UIView()
        self.tableviewuserData.separatorStyle = .none
        self.tableviewuserData.backgroundColor = .clear
        self.tableviewuserData.bounces = true
        self.tableviewuserData.sectionHeaderHeight = 0.0
        self.tableviewuserData.showsVerticalScrollIndicator = false
    }
    
    
    // MARK:- button Action
    
    @objc func click_edit(){
        let vc = editProfileVC()
        isBackUserProfileScreen = 2
        
        if let fname = FirebaseClient.sharedInstance.firebaseCurrentUser?.FullName, fname.count != 0{
            vc.userfullNameStr = fname
        }else{
            vc.userfullNameStr = ""
        }
        
        if let uname = FirebaseClient.sharedInstance.firebaseCurrentUser?.UserName, uname.count != 0{
            vc.userNameStr = uname
        }
        
        if let bio = FirebaseClient.sharedInstance.firebaseCurrentUser?.Bio, bio.count != 0{
            vc.userBioStr = bio
        }
        
        if let pageCnt = FirebaseClient.sharedInstance.firebaseCurrentUser?.mypages{
            vc.userPageCountStr = "\(pageCnt.count)"
        }
        
        vc.userImageStr = (FirebaseClient.sharedInstance.firebaseCurrentUser?.ProfilePicture!)!
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func click_setting()
    {
        self.showHidePopup1View(constant: 0, isHidden: false, aView: popupView1)
    }
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_connect()
    {
        let vc = connectionVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func clickOnPage(sender: DCustomButton){
        if sender.indexPath!.section == 1 || sender.indexPath!.section == 2{
            var dict: PageList?

            if sender.indexPath!.section == 1{
                dict = self.mypagesArr[sender.indexPath!.row]
            }else if sender.indexPath!.section == 2{
                dict = self.bookMarkpagesArr[sender.indexPath!.row]
            }
            let vc = newPageDetailsVC()
            if let p_id = dict?.pageId, p_id.count != 0{
                vc.pageID = p_id
            }
            isBackUserProfileScreen = 2
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func dismissPopup(sender:UIButton) {
        self.showHidePopup1View(constant: 500, isHidden: true, aView: popupView1)
        self.showHidePopup1View(constant: 500, isHidden: true, aView: popupView2)
    }
    
    @objc func dismissPopup1(sender:UIButton) {
        self.showHidePopup1View(constant: 500, isHidden: true, aView: popupView1)
    }
    
    @objc func dismissPopup2(sender:UIButton) {
        self.showHidePopup1View(constant: 500, isHidden: true, aView: popupView2)
    }

    @objc func click_reportUser(){
        self.showHidePopup1View(constant: 500, isHidden: true, aView: popupView1)
        self.showHidePopup1View(constant: 0, isHidden: false, aView: popupView2)
    }
    
    @objc func click_spamAndFake(sender:UIButton) {
        let vc = reportVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func click_inappropriateContent(sender:UIButton) {
        let vc = reportVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func click_inappropriateProfileInfo(sender:UIButton) {
        let vc = reportVC()
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func click_stolenAccount(sender:UIButton) {
        let vc = reportVC()
        self.present(vc, animated: true, completion: nil)
    }
}

//Helpers
extension viewUserProfileVC {
    func showHidePopup1View(constant: CGFloat, isHidden: Bool, aView: UIView) {
        if isHidden {
            self.dismissBGButton.isHidden = true
        } else {
            self.dismissBGButton.isHidden = false
        }
        
        if aView == popupView1 {
            self.bottomPopupViewBC1.constant = constant
        }else{
            self.bottomPopupViewBC2.constant = constant
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}

extension viewUserProfileVC: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return 1
        }else if section == 1{
            return 1
        }else if section == 2{
            if self.mypagesArr.count <= 3{
                return self.mypagesArr.count
            }else{
                return 4
            }
        }else if section == 3{
            if self.bookMarkpagesArr.count <= 3{
                return self.bookMarkpagesArr.count
            }else{
                return 4
            }
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "loginUserProfileHeader_cell") as! loginUserProfileHeader_cell
        cell.backgroundColor = .clear
        if section == 2{
            cell.titleLable.text = "My Pages"
            cell.NewPageLable.isHidden = false
        }else if section == 3{
            cell.NewPageLable.isHidden = true
            cell.plusImage.isHidden = true
            cell.titleLable.text = "Bookmarked"
        }else{
            cell.NewPageLable.isHidden = true
            cell.plusImage.isHidden = true
            cell.titleLable.text = ""
        }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 || section == 1{
            return 0
        }else{
            if section == 2{
                if self.mypagesArr.count == 0{
                    return 0
                }else{
                    return 55
                }
            }else{
                if self.bookMarkpagesArr.count == 0{
                    return 0
                }else{
                    return 55
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 0))
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return  0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "view_otherUserProfileData_cell", for: indexPath) as! view_otherUserProfileData_cell
            
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            cell.contentView.isHidden = true
            
            if let fname = FirebaseClient.sharedInstance.firebaseCurrentUser?.FullName, fname.count != 0{
                cell.userNameLable.text = fname
            }else{
                cell.userNameLable.text = ""
            }
            
            if let uname = FirebaseClient.sharedInstance.firebaseCurrentUser?.pictoID, uname.count != 0{
                cell.pictoIDLable.text = uname
            }
            
            if let bio = FirebaseClient.sharedInstance.firebaseCurrentUser?.Bio, bio.count != 0{
                cell.descriptionLable.text = bio
            }
            
            if let image = FirebaseClient.sharedInstance.firebaseCurrentUser?.ProfilePicture, image.count != 0
            {
                cell.userImage.kf.indicatorType = .activity
                cell.userImage.kf.setImage(with: URL(string: image))
            }else{
                cell.userImage.image = UIImage(named: "userLogo1x")
            }
            
            cell.userImage.layer.cornerRadius = 55 / 2
            
            cell.viewMoreButton.addTarget(self, action: #selector(self.click_setting), for: .touchUpInside)
            cell.viewBackButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
            cell.connectButton.addTarget(self, action: #selector(self.click_connect), for: .touchUpInside)
            
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "loginUserProfile_connection_cell", for: indexPath) as! loginUserProfile_connection_cell
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
        } else if indexPath.section == 2{
            
            if self.mypagesArr.count <= 3{
                let cell = tableView.dequeueReusableCell(withIdentifier: "loginUserProfile_pageCell", for: indexPath) as! loginUserProfile_pageCell
                cell.selectionStyle = .none
                cell.contentView.isHidden = true
                
                cell.mainView.isHidden = false
                cell.userDataView.isHidden = false
                cell.loadMoreDataView.isHidden = true
                
                if self.mypagesArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.mypagesArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.mypagesArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }
                
                let dict = self.mypagesArr[indexPath.row]

                if let name = dict.PageName, name.count != 0{
                    cell.titleLable.text = name
                }

                if let pId = dict.PageNameID, pId.count != 0{
                    cell.usernameLable.text = pId
                }

                if let pageImage = dict.PagethumbnilURLOne, pageImage.count != 0{
                    cell.userImage.kf.indicatorType = .activity
                    cell.userImage.kf.setImage(with: URL(string: pageImage))
                }else{
                    cell.userImage.image = UIImage(named: "postImage")
                }

                cell.clickButton.indexPath = indexPath
                cell.clickButton.addTarget(self, action: #selector(self.clickOnPage), for: .touchUpInside)
                
                return cell
            }else{
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "loginUserProfile_pageCell", for: indexPath) as! loginUserProfile_pageCell
                cell.selectionStyle = .none
                cell.contentView.isHidden = true
                
                cell.mainView.isHidden = false
                let dict = self.mypagesArr[indexPath.row]


                if indexPath.row == 3{
                    cell.userDataView.isHidden = true
                    cell.loadMoreDataView.isHidden = false
                }else{
                    cell.userDataView.isHidden = false
                    cell.loadMoreDataView.isHidden = true
                }

                if indexPath.row == 0{
                    cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                }else if indexPath.row == 3{
                    cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                }else{
                    cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                }

                if let name = dict.PageName, name.count != 0{
                    cell.titleLable.text = name
                }

                if let pId = dict.PageNameID, pId.count != 0{
                    cell.usernameLable.text = pId
                }

                if let pageImage = dict.PagethumbnilURLOne, pageImage.count != 0{
                    cell.userImage.kf.indicatorType = .activity
                    cell.userImage.kf.setImage(with: URL(string: pageImage))
                }else{
                    cell.userImage.image = UIImage(named: "postImage")
                }

                cell.clickButton.indexPath = indexPath
                cell.clickButton.addTarget(self, action: #selector(self.clickOnPage), for: .touchUpInside)
                
                return cell
            }
        }else if indexPath.section == 3 {
            
            if self.bookMarkpagesArr.count <= 3{
                let cell = tableView.dequeueReusableCell(withIdentifier: "loginUserProfile_pageCell", for: indexPath) as! loginUserProfile_pageCell
                cell.selectionStyle = .none
                cell.contentView.isHidden = true
                
                cell.mainView.isHidden = false
                cell.userDataView.isHidden = false
                cell.loadMoreDataView.isHidden = true
                
                let dict = self.bookMarkpagesArr[indexPath.row]
                if self.bookMarkpagesArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.bookMarkpagesArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.bookMarkpagesArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }

                if let name = dict.PageName, name.count != 0{
                    cell.titleLable.text = name
                }

                if let pId = dict.PageNameID, pId.count != 0{
                    cell.usernameLable.text = pId
                }

                if let pageImage = dict.PagethumbnilURLOne, pageImage.count != 0{
                    cell.userImage.kf.indicatorType = .activity
                    cell.userImage.kf.setImage(with: URL(string: pageImage))
                }else{
                    cell.userImage.image = UIImage(named: "postImage")
                }

                cell.clickButton.indexPath = indexPath
                cell.clickButton.addTarget(self, action: #selector(self.clickOnPage), for: .touchUpInside)
                
                return cell
            }else{
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "loginUserProfile_pageCell", for: indexPath) as! loginUserProfile_pageCell
                cell.selectionStyle = .none
                cell.contentView.isHidden = true
                
                cell.mainView.isHidden = false
                let dict = self.bookMarkpagesArr[indexPath.row]

                if indexPath.row == 3{
                    cell.userDataView.isHidden = true
                    cell.loadMoreDataView.isHidden = false
                }else{
                    cell.userDataView.isHidden = false
                    cell.loadMoreDataView.isHidden = true
                }

                if indexPath.row == 0{
                    cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                }else if indexPath.row == 3{
                    cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                }else{
                    cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                }

                if let name = dict.PageName, name.count != 0{
                    cell.titleLable.text = name
                }

                if let pId = dict.PageNameID, pId.count != 0{
                    cell.usernameLable.text = pId
                }

                if let pageImage = dict.PagethumbnilURLOne, pageImage.count != 0{
                    cell.userImage.kf.indicatorType = .activity
                    cell.userImage.kf.setImage(with: URL(string: pageImage))
                }else{
                    cell.userImage.image = UIImage(named: "postImage")
                }

                cell.clickButton.indexPath = indexPath
                cell.clickButton.addTarget(self, action: #selector(self.clickOnPage), for: .touchUpInside)
                
                return cell
            }
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "loginUserProfile_pageCell", for: indexPath) as! loginUserProfile_pageCell
            cell.selectionStyle = .none
            cell.mainView.isHidden = true
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0{
            return 326 // 276
        }else if indexPath.section == 1{
            return 101
        }else if indexPath.section == 2{
            if self.mypagesArr.count <= 3{
                if self.mypagesArr.count == 1{
                    return 82
                }else if self.mypagesArr.count == 2{
                    if indexPath.row == 0{
                        return 68
                    }else{
                        return 82
                    }
                }else{
                    if indexPath.row == 0 || indexPath.row == 1{
                        return 68
                    }else{
                        return 82
                    }
                }
            }else{
                if indexPath.row == 3{
                    return 68
                }else{
                    return 68
                }
            }
        }else if indexPath.section == 3 {
            if self.bookMarkpagesArr.count <= 3{
                if self.bookMarkpagesArr.count == 1{
                    return 82
                }else if self.bookMarkpagesArr.count == 2{
                    if indexPath.row == 0{
                        return 68
                    }else{
                        return 82
                    }
                }else{
                    if indexPath.row == 0 || indexPath.row == 1{
                        return 68
                    }else{
                        return 82
                    }
                }
            }else{
                if indexPath.row == 3{
                    return 68
                }else{
                    return 68
                }
            }
        }else{
            return 68
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 326 // 276
        }else if indexPath.section == 1{
            return 101
        }else if indexPath.section == 2{
            if self.mypagesArr.count <= 3{
                if self.mypagesArr.count == 1{
                    return 82
                }else if self.mypagesArr.count == 2{
                    if indexPath.row == 0{
                        return 68
                    }else{
                        return 82
                    }
                }else{
                    if indexPath.row == 0 || indexPath.row == 1{
                        return 68
                    }else{
                        return 82
                    }
                }
            }else{
                if indexPath.row == 3{
                    return 68
                }else{
                    return 68
                }
            }
        }else if indexPath.section == 3{
            if self.bookMarkpagesArr.count <= 3{
                if self.bookMarkpagesArr.count == 1{
                    return 82
                }else if self.bookMarkpagesArr.count == 2{
                    if indexPath.row == 0{
                        return 68
                    }else{
                        return 82
                    }
                }else{
                    if indexPath.row == 0 || indexPath.row == 1{
                        return 68
                    }else{
                        return 82
                    }
                }
            }else{
                if indexPath.row == 3{
                    return 68
                }else{
                    return 68
                }
            }
        }else{
            return 68
        }
    }
    
}

extension viewUserProfileVC: UIScrollViewDelegate{

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if scrollView.contentOffset.y > 125{
            UIView.transition(with: self.headerView, duration: 0.4, options: .transitionCrossDissolve, animations: {
                self.headerView.isHidden = false
                self.headerView.setNeedsLayout()
            })
        }else{
            UIView.transition(with: self.headerView, duration: 0.4, options: .transitionCrossDissolve, animations: {
                self.headerView.isHidden = true
                self.headerView.setNeedsLayout()
            })
        }
    }

}

extension viewUserProfileVC{
    
    func getuserData(){
        FirebaseClient.sharedInstance.getUserDataAboutUID(userID: self.userID) { (userDocument) in
            let data = userDocument as! userData
            self.user = data
            self.mypagesTempArr.removeAll()
            self.bookMarkpagesTempArr.removeAll()
            self.getMyPages()
        }
    }
    
    
    func getUserOwnAndBookmarkPageList(sender: String){
        
        var tempPageListArr = [PageList]()
        
        FirebaseClient.sharedInstance.getUserOwnAndBookMarksPageList(userId: sender) { (doc) in
            if doc is[QueryDocumentSnapshot]{
                
                if let queryData = doc as? [QueryDocumentSnapshot], queryData.count != 0{
                    for document in queryData {
                        print("\(document.documentID) => \(document.data())")
                        let pge = PageList(pageMainID: document.documentID, dictionary: document.data())
                        tempPageListArr.append(pge)
                    }
                }
                else{
                    self.tableviewuserData.reloadData()
                }
            }
        }
    }
    
    func getMyPages(){
        
        if let data = FirebaseClient.sharedInstance.firebaseCurrentUser{
            
            if data.ALLpages.count != 0{
                
                var mpagesarr = [String]()
                
                if let arr = data.mypages, arr.count != 0{
                    mpagesarr = arr
                }
                
                FirebaseClient.sharedInstance.getUserOwnAndBookMarksPageList(userId: data.userID) { (doc) in
                    if doc is[QueryDocumentSnapshot]{
                        
                        if let queryData = doc as? [QueryDocumentSnapshot], queryData.count != 0{
                            
                            for document in queryData {
                                print("\(document.documentID) => \(document.data())")
                                
                                let pge = PageList(pageMainID: document.documentID, dictionary: document.data())
                                
                                if mpagesarr.contains(pge.pageId!){
                                    self.mypagesTempArr.append(pge)
                                }else{
                                    self.bookMarkpagesTempArr.append(pge)
                                }
                            }
                            
                            self.mypagesArr = self.mypagesTempArr
                            self.bookMarkpagesArr = self.bookMarkpagesTempArr
                            
                            self.mypagesArr.sort(by: { (u1, u2) -> Bool in
                                return u1.pageCreationDate.compare(u2.pageCreationDate) == .orderedAscending
                            })
                            
                            self.bookMarkpagesArr.sort(by: { (u1, u2) -> Bool in
                                return u1.pageCreationDate.compare(u2.pageCreationDate) == .orderedAscending
                            })
                            self.tableviewuserData.reloadData()
                        }
                        else{
                            self.tableviewuserData.reloadData()
                        }
                    }
                }
            }else{
                self.tableviewuserData.reloadData()
            }
        }
    }
}



