//
//  newPageDetailsVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 21/01/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase
import FittedSheets

class newPageDetailsVC: UIViewController {

    var  tableviewPageDetaiData: UITableView = {
        var tableview = UITableView()
        tableview.backgroundColor = .white
        tableview = UITableView(frame: CGRect.zero, style: UITableView.Style.plain)
        return tableview
    }()
    
    // Header view
    
    let headerView: UIView = {
        let v = UIView()
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
    
    let shadowview: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.21)
        return v
    }()
    
    let alertview: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let alertTitleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Wait!"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let alertDescriptionLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Vijay, you can’t leave a Page you have created without making someone else the owner.\n\nYou can keep this page, delete it, or give someone else ownership."
        lbl.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let GotitButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let gotitButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Got it!", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        return btn
    }()
    
    let pageSettingView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let alertpageSettingDescriptionLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = UIColor(red: 102.0/255.0, green: 102.0/255.0, blue: 102.0/255.0, alpha: 1.0)
        lbl.text = "You can change Page ownership or delete your Page in"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let alertpageSettingLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Page Settings"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let cameraButtonView: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    // Veriables
    
    var pageID = String()
    var pageDataDetials: PageList?
    var pagepostIDArr = [String]()
    var pageIDarrIndex = Int()
    var pageBookMarkUserArr = [userData]()
    var pagePostArr = [ModelPost]()
    
    var pageOwnerArr = [String]()
    var pageAdminArr = [String]()
    var pageMemberArr = [String]()
    var pageViewerArr = [String]()
    
    var currentUserStatus = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.view.addSubview(self.tableviewPageDetaiData)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.tableviewPageDetaiData.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        }else{
            self.tableviewPageDetaiData.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        }
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 75)
        self.headerView.alpha = 0.0
        
        //set up menuButton view
        
        self.view.addSubview(self.menuButtonMainview)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.menuButtonMainview.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: nil, paddingTop: 28, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 30, height: 30)
        }else{
            self.menuButtonMainview.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 30, height: 30)
        }
        
        self.menuButtonMainview.addSubview(self.MenuButtonImageView)
        self.MenuButtonImageView.anchor(top: self.menuButtonMainview.topAnchor, left: self.menuButtonMainview.leftAnchor, bottom: self.menuButtonMainview.bottomAnchor, right: self.menuButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.menuButtonMainview.addSubview(self.MenuButton)
        self.MenuButton.anchor(top: self.menuButtonMainview.topAnchor, left: self.menuButtonMainview.leftAnchor, bottom: self.menuButtonMainview.bottomAnchor, right: self.menuButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.MenuButton.addTarget(self, action: #selector(self.click_menu), for: .touchUpInside)
        
        //set up nextButton view
        
        self.view.addSubview(self.nextButtonMainview)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.nextButtonMainview.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: self.view.rightAnchor, paddingTop: 28, paddingLeft: 0, paddingBottom: 0, paddingRight: 10, width: 30, height: 30)
        }else{
            self.nextButtonMainview.anchor(top: self.view.safeTopAnchor, left: nil, bottom: nil, right: self.view.rightAnchor, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 10, width: 30, height: 30)
        }
        
        
        self.nextButtonMainview.addSubview(self.nextButtonImageView)
        self.nextButtonImageView.anchor(top: self.nextButtonMainview.topAnchor, left: self.nextButtonMainview.leftAnchor, bottom: self.nextButtonMainview.bottomAnchor, right: self.nextButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.nextButtonMainview.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonMainview.topAnchor, left: self.nextButtonMainview.leftAnchor, bottom: self.nextButtonMainview.bottomAnchor, right: self.nextButtonMainview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.nextButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        if #available(iOS 11.0, *) {
            self.tableviewPageDetaiData.contentInsetAdjustmentBehavior = .never
        }
        
        self.view.addSubview(self.shadowview)
        self.shadowview.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.shadowview.addSubview(self.alertview)
        self.alertview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 251, height: 255)
        self.alertview.layer.cornerRadius = 25
        self.alertview.layer.applySketchShadow()
        self.alertview.centerXAnchor.constraint(equalTo: self.shadowview.centerXAnchor).isActive = true
        self.alertview.centerYAnchor.constraint(equalTo: self.shadowview.centerYAnchor).isActive = true
        
        self.alertview.addSubview(self.alertTitleLable)
        self.alertTitleLable.anchor(top: self.alertview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 48, height: 24)
        self.alertTitleLable.centerXAnchor.constraint(equalTo: self.alertview.centerXAnchor).isActive = true
        
        self.alertview.addSubview(self.alertDescriptionLable)
        self.alertDescriptionLable.anchor(top: self.alertTitleLable.bottomAnchor, left: self.alertview.leftAnchor, bottom: nil, right: self.alertview.rightAnchor, paddingTop: 8, paddingLeft: 8, paddingBottom: 0, paddingRight: 8, width: 0, height: 105)
        
        // setup skip Button View

        self.alertview.addSubview(self.GotitButtonView)
        self.GotitButtonView.anchor(top: self.alertDescriptionLable.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 3, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 114, height: 36)
        self.GotitButtonView.centerXAnchor.constraint(equalTo: self.alertview.centerXAnchor).isActive = true

        self.GotitButtonView.addSubview(self.gotitButton)
        self.gotitButton.anchor(top: self.GotitButtonView.topAnchor, left: self.GotitButtonView.leftAnchor, bottom: self.GotitButtonView.bottomAnchor, right: self.GotitButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.gotitButton.backgroundColor = black1a
        self.gotitButton.layer.cornerRadius = 18
        self.gotitButton.addTarget(self, action: #selector(self.click_gotIt), for: .touchUpInside)
        
        self.alertview.addSubview(self.pageSettingView)
        self.pageSettingView.anchor(top: self.GotitButtonView.bottomAnchor, left: self.alertview.leftAnchor, bottom: nil, right: self.alertview.rightAnchor, paddingTop: 8, paddingLeft: 14, paddingBottom: 0, paddingRight: 14, width: 0, height: 50)
        
        self.pageSettingView.addSubview(self.alertpageSettingDescriptionLable)
        self.alertpageSettingDescriptionLable.anchor(top: self.pageSettingView.topAnchor, left: self.pageSettingView.leftAnchor, bottom: nil, right: self.pageSettingView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
        
        self.pageSettingView.addSubview(self.alertpageSettingLable)
        self.alertpageSettingLable.anchor(top: self.alertpageSettingDescriptionLable.bottomAnchor, left: self.pageSettingView.leftAnchor, bottom: nil, right: self.pageSettingView.rightAnchor, paddingTop: 2, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        
        
        self.view.addSubview(self.cameraButtonView)
        self.cameraButtonView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 11, paddingRight: 0, width: 51, height: 51)
        self.cameraButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.cameraButtonView.layer.applySketchShadow()
        self.cameraButtonView.setBorder(color: .white, width: 5.0)
        self.cameraButtonView.layer.cornerRadius = 25.5
        
        self.shadowview.isHidden = true
        
        self.setUpTableview()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if PageSettingVC.isDeletePage{
            PageSettingVC.isDeletePage = false
            let transition = CATransition()
            transition.duration = 0.5
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            transition.type = CATransitionType.push
            transition.subtype = CATransitionSubtype.fromRight
            self.navigationController?.view.window?.layer.add(transition, forKey: kCATransition)
            self.navigationController?.popViewController(animated: false)
        }
        
        self.getPageDetailsData()
    }
    
    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        self.tableviewPageDetaiData.register(newPageDetailsImage_cellTableViewCell.self, forCellReuseIdentifier: "newPageDetailsImage_cellTableViewCell")
        self.tableviewPageDetaiData.register(newPageDetail_BookMarkWithCollapseCell.self, forCellReuseIdentifier: "newPageDetail_BookMarkWithCollapseCell")
        self.tableviewPageDetaiData.register(newPageDetailsPost_cell.self, forCellReuseIdentifier: "newPageDetailsPost_cell")
        self.tableviewPageDetaiData.dataSource = self
        self.tableviewPageDetaiData.delegate = self
        self.tableviewPageDetaiData.tableFooterView = UIView()
        self.tableviewPageDetaiData.separatorStyle = .none
        self.tableviewPageDetaiData.showsVerticalScrollIndicator = false
    }
    
    @objc func click_gotIt()
    {
        self.shadowview.isHidden = true
    }
    
    @objc func click_menu()
    {
        //        self.shadowview.isHidden = false
        let controller = PageSettingVC.instantiate()
        
        controller.pageID = self.pageID
        controller.controller = self
        
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
        sheetController.topCornersRadius = true ? 16 : 0
        sheetController.handleColor = UIColor.clear
        
        sheetController.willDismiss = { _ in
            print("Will dismiss Table view")
        }
        sheetController.didDismiss = { _ in
            print("Will dismiss Table view")
        }
        
        //        let VC1 = self.storyboard!.instantiateViewControllerWithIdentifier("MyViewController") as! ViewController
        let navController = UINavigationController(rootViewController: sheetController) // Creating a navigation controller with VC1 at the root of the navigation stack.
        navController.navigationBar.isHidden = true
        navController.modalPresentationStyle = .overFullScreen
        self.present(navController, animated:false, completion: nil)
    }
    
    @objc func click_back()
    {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.navigationController?.view.window?.layer.add(transition, forKey: kCATransition)
        self.navigationController?.popViewController(animated: false)
        
//        let vc = MainVC()
//        isBackUserProfileScreen = 3
//        let transition = CATransition()
//        transition.duration = 0.5
//        transition.type = CATransitionType.push
//        transition.subtype = CATransitionSubtype.fromRight
//        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
//        view.window!.layer.add(transition, forKey: kCATransition)
//        self.navigationController?.pushViewController(vc, animated: false)
    }

    @objc func click_bookMarkLable()
    {
        let vc = bookmarkUserVC()
        vc.pageID = self.pageID
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


extension newPageDetailsVC: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else if section == 1{
            return 1
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "newPageDetailsImage_cellTableViewCell", for: indexPath) as! newPageDetailsImage_cellTableViewCell
            cell.selectionStyle = .none
            cell.contentView.isHidden = true
            cell.pageDataDetials = self.pageDataDetials
            cell.bookMarkDelegate = self
            cell.collectionViewPageImage.reloadData()
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "newPageDetail_BookMarkWithCollapseCell", for: indexPath) as! newPageDetail_BookMarkWithCollapseCell
            cell.selectionStyle = .none
            cell.contentView.isHidden = true
            
            let tap = UITapGestureRecognizer(target: self, action: #selector(self.click_bookMarkLable))
            cell.bookMarkLable.addGestureRecognizer(tap)
            cell.NewCelldelegate = self
            cell.bookMarkUserArr = self.pageBookMarkUserArr
            cell.collectionViewpageBookmarkUser.reloadData()
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "newPageDetailsPost_cell", for: indexPath) as! newPageDetailsPost_cell
            cell.selectionStyle = .none
            cell.contentView.isHidden = true
            
            cell.postDelegate = self
            cell.pagePostArr = self.pagePostArr
            cell.collectionViewPost.reloadData()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 326
        }else if indexPath.section == 1{
            return 138
        }else{
            if self.pagePostArr.count != 0{
                if (self.pagePostArr.count % 2) == 0{
                    return CGFloat((self.pagePostArr.count/2)*280)
                }else{
                    return CGFloat(((self.pagePostArr.count + 1)/2)*280)
                }
            }else{
                return 0
            }
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 326
        }else if indexPath.section == 1{
            return 138
        }else{
            if self.pagePostArr.count != 0{
                if (self.pagePostArr.count % 2) == 0{
                    return CGFloat((self.pagePostArr.count/2)*280)
                }else{
                    return CGFloat(((self.pagePostArr.count + 1)/2)*280)
                }
            }else{
                return 0
            }
        }
    }
}

extension newPageDetailsVC: UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // This is the offset at the bottom of the scroll view.
        let totalScroll = scrollView.contentSize.height - scrollView.bounds.size.height

        // This is the current offset.
        let offset = scrollView.contentOffset.y

        // This is the percentage of the current offset / bottom offset.
        let percentage = offset / totalScroll

        // When percentage = 0, the alpha should be 1 so we should flip the percentage.
//        scrollView.alpha = 1.0 - percentage
        
        print("per", percentage)
        
        self.headerView.alpha = -(percentage)
        
        print("alpha", 1.0 - percentage)
    }
    
}

// MARK:- bookmark Delegate Method
extension newPageDetailsVC: NewCollectionCellBookmarkTapDelegate{
    func tapOnBookMark() {
        
        var isBookMark = false
        
        if let arr = self.pageDataDetials?.BookMarkUsers, arr.count != 0{
            if arr.contains(Auth.auth().currentUser!.uid){
                isBookMark = false
            }else{
                isBookMark = true
            }
        }else{
            isBookMark = true
        }
        
        FirebaseClient.sharedInstance.setBookMarkPage(pageId: self.pageID, userID: Auth.auth().currentUser!.uid, isBookMark: isBookMark) { (_) in
            if isBookMark{
                FirebaseClient.sharedInstance.updateAllPageDataInUserTable(pageId: self.pageID, isAdd: true) { (isComplete) in
                    if isComplete{
                        print("success")
                        FirebaseClient.sharedInstance.updateBookmarkTableData(pageId: self.pageID, userID: Auth.auth().currentUser!.uid, userType: "Viewer", isAlreadyType: "", isChange: true) { (_) in
                            self.getBookMarkUsers()
                            self.getPageDetailsData()
                        }
                    }else{
                        self.view.makeToast("All page data not Update")
                    }
                }
            }else{
                FirebaseClient.sharedInstance.updateAllPageDataInUserTable(pageId: self.pageID, isAdd: false) { (isComplete) in
                    if isComplete{
                        print("success")
                        FirebaseClient.sharedInstance.updateBookmarkTableData(pageId: self.pageID, userID: Auth.auth().currentUser!.uid, userType: self.currentUserStatus, isAlreadyType: "", isChange: false) { (_) in
                            self.getBookMarkUsers()
                            self.getPageDetailsData()
                        }
                    }else{
                        self.view.makeToast("All page data not Update")
                    }
                }
            }
        }
    }
}

// MARK:- collectionCell Delegate Method
extension newPageDetailsVC: NewCollectionCellDelegate{
    func tapOnCollectionViewCell() {
        let vc = bookmarkUserVC()
        vc.pageID = self.pageID
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK:- post tap Delegate Method
extension newPageDetailsVC: tapOnPostDelegate{
    func tapOnPost(index: Int) {
        let vc = postScreen()
        vc.index = index
        vc.postArr = self.pagePostArr
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK:- Firebase Function

extension newPageDetailsVC{
    
    func getPageDetailsData(){
        FirebaseClient.sharedInstance.getPageData(pageID: self.pageID) { (pageDocument) in
            if let pagedata = pageDocument as? PageList{
                self.pageDataDetials = pagedata
                
                if pagedata.OwnerUsersArr.count != 0{
                    self.pageOwnerArr = pagedata.OwnerUsersArr
                }
                
                if pagedata.AdminUsersArr.count != 0{
                    self.pageAdminArr = pagedata.AdminUsersArr
                }
                
                if pagedata.MemberUsersArr.count != 0{
                    self.pageMemberArr = pagedata.MemberUsersArr
                }
                
                if pagedata.ViewerUsersArr.count != 0{
                    self.pageViewerArr = pagedata.ViewerUsersArr
                }
                self.getBookMarkUsers()
                self.getPostFromPage()
            }
        }
    }
    
    func getPostFromPage(){
        
        FirebaseClient.sharedInstance.getUserPagesPost(pageIDArr: [self.pageID]) { (documents) in
            if documents is [QueryDocumentSnapshot]{
                let data = documents as! [QueryDocumentSnapshot]
                if data.count != 0{
                    self.pagePostArr.removeAll()
                    for i in 0..<data.count{
                        var post = ModelPost(post_id: data[i].documentID, dictionary: data[i].data())
                        print(post)
                        post.postIndex = i + 1
                        self.pagePostArr.insert(post, at: 0)
                        DispatchQueue.main.async {
                          self.tableviewPageDetaiData.reloadData()
                        }
                    }
                }else{
                    print("No Data Found")
                    self.tableviewPageDetaiData.reloadData()
                }
            }
        }
    }
    
    
    func getBookMarkUsers(){
        
        FirebaseClient.sharedInstance.GetBookMarkPageUser(pageId: self.pageID) { (tempBookMarkData) in
            
            if tempBookMarkData is[QueryDocumentSnapshot]{
                
                if let queryData = tempBookMarkData as? [QueryDocumentSnapshot], queryData.count != 0{
                    self.pageBookMarkUserArr.removeAll()
                    for document in queryData {
                        print("\(document.documentID) => \(document.data())")
                        var usr = userData(uID: document.documentID, dictionary: document.data())
                        
                        if self.pageOwnerArr.contains(usr.userID){
                            usr.userStatus = "Owner"
                        }else if self.pageAdminArr.contains(usr.userID){
                            usr.userStatus = "Admin"
                        }else if self.pageMemberArr.contains(usr.userID){
                            usr.userStatus = "Member"
                        }else if self.pageViewerArr.contains(usr.userID){
                            usr.userStatus = "Viewer"
                        }else{
                            usr.userStatus = "Viewer"
                        }
                        self.pageBookMarkUserArr.append(usr)
                        
                        if usr.userID == FirebaseClient.sharedInstance.firebaseCurrentUser!.userID{
                            self.currentUserStatus = usr.userStatus!
                        }
                    }
                    self.tableviewPageDetaiData.reloadData()
                }
                else{
                    self.tableviewPageDetaiData.reloadData()
                }
            }
        }
    }
    
    
    
}
