//
//  HomeVC.swift
//  Pictopage
//
//  Created by Grewon on 29/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
import MatchTransition
import JTMaterialTransition
import FirebaseAuth

protocol HomeVCDelegate {
    func clickBookMark()
}


class HomeVC: UIViewController {
    
    let headerView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let headerImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        img.image = UIImage(named: "searchbarbackground1x")
        return img
    }()
    
    let headerSubView: UIView = {
        let logov = UIView()
        return logov
    }()
    

    var  tableviewHome: UITableView = {
        var tableview = UITableView()
        tableview = UITableView(frame: CGRect.zero, style: UITableView.Style.grouped)
        tableview.backgroundColor = .clear
        return tableview
    }()
    
    lazy var flowLayout:UICollectionViewFlowLayout = {
        let f = UICollectionViewFlowLayout()
        f.scrollDirection = UICollectionView.ScrollDirection.vertical
        f.sectionHeadersPinToVisibleBounds = false
        f.minimumInteritemSpacing = 0
        f.minimumLineSpacing = 0
        return f
    }()
    
    lazy var collectionViewHome: UICollectionView = {
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: self.flowLayout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .clear
        cv.setCollectionViewLayout(self.flowLayout, animated: true)
        cv.dataSource = self
        cv.delegate = self
        cv.showsVerticalScrollIndicator = false
        cv.register(HomeCollectionview_cell.self, forCellWithReuseIdentifier: "HomeCollectionview_cell")
        cv.register(CollectionViewHeader_cell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "CollectionViewHeader_cell")
        return cv
    }()
    
    let spinnerView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let loaderImageview: UIImageView = {
        let img = UIImageView()
        img.image = UIImage.gif(name: "LoadingLogoNewNext")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    var isShowTableView = Bool()
    var headerviewTopConstraint = NSLayoutConstraint()
    
    var headerViewTop = CGFloat()
    var lastContentOffset: CGFloat = 0
    var tempLastContentOffset: CGFloat = 0
    
    var myPageIDArr = [String]()
    
    var myPagesArr = [PageList]()
    var myPostsArr = [ModelPost]()
    var myExtraPostsArr = [ModelPost]()
    
    
    var isFirstTime = Bool()
    var transitionManager: MatchTransitionManager?
    let manager = MatchTransitionManager()
    var transition: JTMaterialTransition?
    var BookMarkButtondelegate: HomeVCDelegate?
    
    var isApplyAnimation = Bool()
    var isAnimateCollectionviewCell = Int()
    var selectedStartIndex = Int()
    var selectedEndIndex = Int()
    
    var navView : NavigationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = whiteF9FAF9
        
        navView?.homeClickDelegate = self
        
        // setup Tableview
        
        self.view.addSubview(self.tableviewHome)
        self.tableviewHome.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

        
        // setup collectionview
        self.view.addSubview(self.collectionViewHome)
        self.collectionViewHome.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 0)

        
        // setup header view
        self.view.addSubview(self.headerView)
        self.headerView.backgroundColor = .clear
        
        
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.headerView.anchor(top: nil, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 71)
        }else{
            self.headerView.anchor(top: nil, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 88)
        }
        self.headerviewTopConstraint = self.headerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0)
        self.headerviewTopConstraint.isActive = true
        self.headerViewTop = self.headerviewTopConstraint.constant
        
        
        // header background image
        
        self.headerView.addSubview(self.headerImageview)
        self.headerImageview.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // spinner view
        
        self.view.addSubview(self.spinnerView)
        self.spinnerView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 95, height: 95)
        self.spinnerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.spinnerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.spinnerView.layer.cornerRadius = 47.5
        self.spinnerView.layer.applySketchShadow()
        
        // spinner
        self.spinnerView.addSubview(self.loaderImageview)
        self.loaderImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        self.loaderImageview.centerYAnchor.constraint(equalTo: self.spinnerView.centerYAnchor).isActive = true
        self.loaderImageview.centerXAnchor.constraint(equalTo: self.spinnerView.centerXAnchor).isActive = true
        
        
        self.setUpTableview()
        self.tableviewHome.isHidden = true
        self.tableviewHome.alpha = 0
        self.isShowTableView = false
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        if #available(iOS 11, *) {
            self.tableviewHome.contentInsetAdjustmentBehavior = .never
            self.collectionViewHome.contentInsetAdjustmentBehavior = .never
        }
        
        self.transitionManager = MatchTransitionManager()
        
        self.spinnerView.isHidden = true
        
        self.getUserData()
        
    }
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.delegate = self
        print("HomeVC")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        self.tableviewHome.register(homeTableview_Cell.self, forCellReuseIdentifier: "homeTableview_Cell")
        self.tableviewHome.register(HomeTableviewHeader_cell.self, forCellReuseIdentifier: "HomeTableviewHeader_cell")
        self.tableviewHome.dataSource = self
        self.tableviewHome.delegate = self
        self.tableviewHome.tableFooterView = UIView()
        self.tableviewHome.separatorStyle = .none
        self.tableviewHome.backgroundColor = .clear
        self.tableviewHome.showsVerticalScrollIndicator = false
    }
    
    // MARK:- Button action
    
    @objc func click_extraPostView(sender: UIButton){
        
        let post = self.myPostsArr[sender.tag]
        if post.postTotalDuplicate != 0 {
            if post.isExpanded || post.postIndex == 0 {
                self.selectedEndIndex = 0
                self.selectedStartIndex = 0
                self.removeMergeDuplicatePost(Index: sender.tag)
            }else{
                self.selectedEndIndex = 0
                self.selectedStartIndex = 0
                self.addMergeDuplicatePost(Index: sender.tag)
            }
        }
        
        
    }
    
    
    // MARK: - Present Card Details
    private func presentDetailsForCard(at indexPath: IndexPath) {
        let selectedCell = self.collectionViewHome.cellForItem(at: indexPath) as! HomeCollectionview_cell
        let detailsViewController = postScreen()
        detailsViewController.index = indexPath.item
        detailsViewController.postArr = self.myPostsArr
        let matches = [
            Match(tag: "container", from: selectedCell.contentView, to: detailsViewController.view),
            Match(tag: "imageView", from: selectedCell.postImageview, to: detailsViewController.f_postCell.photoImageView),
        ]
        self.isApplyAnimation = true
        self.transitionManager!.setupTransition(from: selectedCell, inside: self, to: detailsViewController, with: matches, transitionType: .push)
        self.navigationController?.pushViewController(detailsViewController, animated: true)
    }
}

extension HomeVC: HomeScreenDelegateMethod{
    
    func click_homeSearch() {
        let controller = searchCAPSController()
//        controller.modalPresentationStyle = .custom
//        self.present(controller, animated: true, completion: nil)
        isBackUserProfileScreen = 0
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func click_HomebookMArk() {
        self.BookMarkButtondelegate?.clickBookMark()
    }
    
    func click_HomelistView() {
        if self.isShowTableView == true
        {
            self.isShowTableView = false
            
            UIView.animate(withDuration: 0.5, animations: {
                self.tableviewHome.alpha = 0.0
            }) { (iscomplete) in
                if iscomplete{
                    self.tableviewHome.isHidden = true
                    self.collectionViewHome.isHidden = false
                    UIView.animate(withDuration: 0.5, animations: {
                        self.collectionViewHome.alpha = 1
                        self.isAnimateCollectionviewCell = 0
                        self.collectionViewHome.reloadData()
                    })
                }
            }
        }
        else
        {
            self.isShowTableView = true
            UIView.animate(withDuration: 0.5, animations: {
                self.collectionViewHome.alpha = 0.0
            }) { (iscomplete) in
                
                if iscomplete{
                    self.collectionViewHome.isHidden = true
                    self.tableviewHome.isHidden = false
                    UIView.animate(withDuration: 0.5, animations: {
                        self.tableviewHome.alpha = 1
                        self.tableviewHome.reloadData()
                    })
                }
            }
        }
    }
    
    
}


extension HomeVC : UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myPagesArr.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableviewHeader_cell") as! HomeTableviewHeader_cell
        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            return 71
        }else{
            return 88
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return  1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableview_Cell", for: indexPath) as! homeTableview_Cell
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.clear
        cell.contentView.isHidden = true
        
        let dict = self.myPagesArr[indexPath.row]
        
        if let fname = dict.PageName, fname.count != 0{
            cell.PageNameLable.text = fname
        }else{
            cell.PageNameLable.text = ""
        }
        
        if let fname = dict.PageNameID, fname.count != 0{
            cell.IDLable.text = fname
        }else{
            cell.IDLable.text = ""
        }
        
        if let image = dict.PagethumbnilURLOne, image.count != 0
        {
            cell.userImage.kf.indicatorType = .activity
            cell.userImage.kf.setImage(with: URL(string: image))
        }
        
        if dict.pagePostsArr.count != 0{
            cell.totalPostLable.text = "\(dict.pagePostsArr.count) post"
        }else{
            cell.totalPostLable.text = "0 post"
        }
        
        cell.pagePostArr = dict.pagePosts
        cell.collectionViewPageDetails.reloadData()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 269
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 269
    }
}

extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.myPostsArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard kind == UICollectionView.elementKindSectionHeader else {
            return UICollectionReusableView()
        }
        
        let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CollectionViewHeader_cell", for: indexPath) as! CollectionViewHeader_cell
        return view
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            return CGSize(width: self.collectionViewHome.frame.size.width, height: 71)
        }else{
            return CGSize(width: self.collectionViewHome.frame.size.width, height: 88)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        print(indexPath.row)
        print("indexPath.item=>\(indexPath.item)")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionview_cell", for: indexPath) as! HomeCollectionview_cell
        
        cell.backgroundColor = .clear
        
        let dict = self.myPostsArr[indexPath.row]
        
        if let image = dict.postCreatedUserProfilePicture, image.count != 0
        {
            cell.userImageview.kf.indicatorType = .activity
            cell.userImageview.kf.setImage(with: URL(string: image))
        }
        
        if let fname = dict.PictoID, fname.count != 0{
            cell.userNameLable.text = fname
        }else{
            cell.userNameLable.text = ""
        }
        
        if let image = dict.postedImageURl, image.count != 0
        {
            cell.postImageview.kf.indicatorType = .activity
            cell.postImageview.kf.setImage(with: URL(string: image))
        }
        
        if let pname = dict.postedPageName, pname.count != 0{
            
            var dateTime = String()
            
            let dt = dict.creationDate
            dateTime = ApiUtillity.sharedInstance.timeAgoSinceDate(date: dt, numericDates: false)
            
            let myString = "to \(pname)"
            let myString1 = "\(pname)"
            let targetString = myString
            let range = NSMakeRange(3, myString1.count)
            cell.pageNameLable.attributedText = ApiUtillity.sharedInstance.attributedBoldString(from: targetString, BoldRange: range, font1: UIFont(name: "HelveticaNeue-Light", size: 9.0)!, font2: UIFont(name: "HelveticaNeue-Thin", size: 9.0)!)
        }
        
        let index = dict.postIndex
        
        if dict.postTotalDuplicate != 0 {
            cell.extraPostView.isHidden = false
            if dict.postIndex == 0 || dict.isExpanded{
                if dict.postIndex == 0 {
                    cell.extraPostView.isHidden = true
                    cell.extraPostBackView.isHidden = false
                } else {
                    cell.extraPostBackView.isHidden = true
                    cell.extraPostCountLable.text = "\(index)"
                    cell.RightArrowImage.image = UIImage(named: "back")
                    cell.extraPostView.backgroundColor = UIColor(red: 3.0/255.0, green: 173.0/255.0, blue: 226.0/255.0, alpha: 0.56)
                }
            }else{
                cell.extraPostBackView.isHidden = true
                
                if dict.isShowExtraView{
                    cell.extraPostView.isHidden = false
                    cell.RightArrowImage.image = UIImage(named: "rightArrowWhite_1x")
                    cell.extraPostView.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.56)
                    cell.extraPostCountLable.text = "\(index)"
                }else{
                    cell.extraPostView.isHidden = true
                }
            }
        }
        else{
            //blank
            // Hide
            cell.extraPostBackView.isHidden = true
            cell.extraPostView.isHidden = true
        }
        
        cell.extraPostBackButton.tag = indexPath.item
        cell.extraPostBackButton.addTarget(self, action: #selector(self.click_extraPostView), for: .touchUpInside)
        
        cell.extraPostButton.tag = indexPath.item
        cell.extraPostButton.addTarget(self, action: #selector(self.click_extraPostView), for: .touchUpInside)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.presentDetailsForCard(at: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionViewHome.frame.size.width / 2, height: 280)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
      
        if self.isAnimateCollectionviewCell == 1{
            
            if indexPath.row >= self.selectedStartIndex + 1 || indexPath.row >= self.selectedEndIndex{
                cell.alpha = 0
                cell.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                UIView.animate(withDuration: 0.25) {
                  cell.alpha = 1
                  cell.transform = .identity
                }
                if indexPath.row == self.selectedEndIndex{
                    self.isAnimateCollectionviewCell = 0
                }
            }
        }
        
        
    }
    
}

extension HomeVC: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

extension HomeVC{
    
    func getUserData()
    {
        if self.isFirstTime == false{
            self.isFirstTime = true
            self.spinnerView.isHidden = false
        }
        
        FirebaseClient.sharedInstance.getCurrentUserData(controller: self) { (usr) in
            let user = usr as! userData
            FirebaseClient.sharedInstance.firebaseCurrentUser = user
            self.spinnerView.isHidden = true
            if user.ALLpages.count != 0{
                self.myPageIDArr = user.ALLpages
                self.myPostsArr.removeAll()
                self.myExtraPostsArr.removeAll()
                self.getPostAboutPaageIDArr()
                self.getUserOwnAndBookmarkPageList(sender: user.userID)
            }else{
                self.isAnimateCollectionviewCell = 0
                self.collectionViewHome.reloadData()
            }
        }
    }
    
    
    func getPostAboutPaageIDArr(){
        
        var arr = self.myPageIDArr
        
        if arr.count > 10{
            let first5 = self.myPageIDArr.prefix(10)
            arr = Array(first5)
            self.myPageIDArr = Array(self.myPageIDArr.dropFirst(10))
        }else{
            self.myPageIDArr = Array(arr.dropFirst(arr.count))
        }

        
        FirebaseClient.sharedInstance.getUserPagesPost(pageIDArr: arr) { (documents) in
            if documents is [QueryDocumentSnapshot]{
                let data = documents as! [QueryDocumentSnapshot]
                if data.count != 0{
                    for i in 0..<data.count{
                        let post = ModelPost(post_id: data[i].documentID, dictionary: data[i].data())
                        
                        if self.myPostsArr.contains(where: { $0.postUniqueID! == post.postUniqueID! }) {
                            //Increment count to display in top-right corner
                            for (i, var item) in self.myPostsArr.enumerated(){
                                if item.postUniqueID! == post.postUniqueID! {
                                    item.postTotalDuplicate = item.postTotalDuplicate + 1
                                    item.postIndex = item.postIndex + 1
                                    item.isShowExtraView = true
                                    self.myPostsArr[i] = item
                                }
                            }
                            self.myExtraPostsArr.insert(post, at: 0)
                        }else{
                            self.myPostsArr.insert(post, at: 0)
                        }
                    }
                    
                    DispatchQueue.main.async {
                        self.isAnimateCollectionviewCell = 0
                        self.collectionViewHome.reloadData()
                    }
                    
                    self.myPostsArr.sort(by: { (u1, u2) -> Bool in
                        return u1.creationDate.compare(u2.creationDate) == .orderedDescending
                    })

                    self.myExtraPostsArr.sort(by: { (u1, u2) -> Bool in
                        return u1.creationDate.compare(u2.creationDate) == .orderedDescending
                    })
                    
                    if self.myPageIDArr.count != 0{
                        self.getPostAboutPaageIDArr()
                    }
                }else{
                    print("No Data Found")
                    self.isAnimateCollectionviewCell = 0
                    self.collectionViewHome.reloadData()
                    
                    if self.myPageIDArr.count != 0{
                        self.getPostAboutPaageIDArr()
                    }
                }
            }
        }
    }
    
    func addMergeDuplicatePost(Index:Int,entryAdd:Int = 10) {
        var post = self.myPostsArr[Index]
        
        self.selectedStartIndex = Index
        let matchArray = self.myExtraPostsArr.filter{ $0.postUniqueID == post.postUniqueID! }
        if matchArray.count > 0 {
            post.isExpanded = true
            var fCnt = entryAdd
            if matchArray.count < entryAdd {
                fCnt = matchArray.count
            }
            post.offset = post.offset + fCnt
            for n in 0..<fCnt {
                var NewPost = matchArray[n]
                NewPost.postIndex = post.postIndex - n - 1
                NewPost.postTotalDuplicate = post.postTotalDuplicate
                NewPost.offset = post.offset
                
                if n == fCnt - 1{
                    NewPost.isShowExtraView = true
                }else{
                    NewPost.isShowExtraView = false
                }
                self.selectedEndIndex = Index + n + 1
                self.myPostsArr.insert(NewPost, at: Index + n + 1)
                
                if let ind = self.myExtraPostsArr.firstIndex(where: { $0.postUniqueID == NewPost.postUniqueID }) {
                    self.myExtraPostsArr.remove(at: ind)
                }
            }
            self.myPostsArr[Index] = post
            
            self.isAnimateCollectionviewCell = 1
            self.collectionViewHome.reloadData()
        }
    }
    
    func removeMergeDuplicatePost(Index:Int,entryAdd:Int = 10) {
        var post = self.myPostsArr[Index]
        let newArray = self.myPostsArr

        var inserCntIndex = 0
        if let ind = self.myExtraPostsArr.lastIndex(where: { $0.postUniqueID == post.postUniqueID }) {
            inserCntIndex = ind + 1
        }
        
        self.selectedStartIndex = Index
        if post.postIndex == 0 {
            let matchArray = self.myPostsArr.filter{ $0.postUniqueID == post.postUniqueID! }
            if matchArray.count > 0 {
                let posts = matchArray.filter{ $0.postTotalDuplicate == $0.postIndex }
                if posts.count > 0 , var mainPost = posts.first
                {
                    var isFirst = true
                    for (i, var item) in matchArray.enumerated() {
                        if item.postTotalDuplicate != item.postIndex{
                            
                            if let ind = self.myPostsArr.lastIndex(where: { $0.postUniqueID == item.postUniqueID }) {
                                if isFirst{
                                    isFirst = false
                                    self.selectedEndIndex = ind
                                }
                                self.myPostsArr.remove(at: ind)
                            }
                            item.offset = 0
                            item.postIndex = 1
                            item.isExpanded = false
                            item.isShowExtraView = false
                            self.myExtraPostsArr.insert(item, at: inserCntIndex)
                        }
                    }
                    
                    if let ind = self.myPostsArr.lastIndex(where: { $0.postUniqueID == mainPost.postUniqueID }) {
                        mainPost.offset = 0
                        mainPost.isExpanded = false
                        mainPost.isShowExtraView = true
                        self.myPostsArr[ind] = mainPost
                    }
                }
            }
        }
        else{
            var removeCnt = 0
            var isFirst = true
            for (i, var item) in newArray.enumerated() {
                
                if i > Index, post.postUniqueID == item.postUniqueID{
                    print("index of i", i)
                    print("My postrray count", self.myPostsArr.count)
                    
                    if let ind = self.myPostsArr.lastIndex(where: { $0.postUniqueID == item.postUniqueID }) {
                        if isFirst{
                            isFirst = false
                            self.selectedEndIndex = ind
                        }
                        self.myPostsArr.remove(at: ind)
                    }
                    
                    item.offset = 0
                    item.postIndex = 1
                    item.isExpanded = false
                    item.isShowExtraView = false
                    
                    self.myExtraPostsArr.insert(item, at: inserCntIndex)
                    inserCntIndex = inserCntIndex + 1
                    removeCnt = removeCnt + 1
                }
            }
            
            if let ind = self.myPostsArr.lastIndex(where: { $0.postUniqueID == post.postUniqueID }) {
                post.offset = post.offset - removeCnt
                post.isExpanded = false
                post.isShowExtraView = true
                self.myPostsArr[ind] = post
            }
        }
        
        self.headerviewTopConstraint.constant = self.headerViewTop
        self.view.layoutIfNeeded()
        
        self.isAnimateCollectionviewCell = 0
        self.collectionViewHome.reloadData()
        
      
    }
    
    
    func getUserOwnAndBookmarkPageList(sender: String){
        
        var tempPageListArr = [PageList]()
        
        FirebaseClient.sharedInstance.getUserOwnAndBookMarksPageList(userId: sender) { (doc) in
            if doc is[QueryDocumentSnapshot]{
                
                if let queryData = doc as? [QueryDocumentSnapshot], queryData.count != 0{
                    
                    for document in queryData {
//                        print("\(document.documentID) => \(document.data())")
                        
                        let pge = PageList(pageMainID: document.documentID, dictionary: document.data())
                        tempPageListArr.append(pge)
                    }
                    self.getPostAboutPageID(senderArr: tempPageListArr)
                }
                else{
                    self.tableviewHome.reloadData()
                }
            }
        }
    }
    
    func getPostAboutPageID(senderArr: [PageList]){
        
        var arr = senderArr
        
        if arr.count != 0{
            
            if arr[0].pagePostsArr.count != 0{
                FirebaseClient.sharedInstance.getUserPagesPost(pageIDArr: [arr[0].pageId!]) { (documents) in
                    if documents is [QueryDocumentSnapshot]{
                        let data = documents as! [QueryDocumentSnapshot]
                        if data.count != 0{
                            var tempPost = [ModelPost]()
                            for i in 0..<data.count{
                                var post = ModelPost(post_id: data[i].documentID, dictionary: data[i].data())
//                                print(post)
                                post.postIndex = i + 1
                                tempPost.insert(post, at: 0)
                            }
                            arr[0].pagePosts = tempPost
                            self.myPagesArr.append(arr[0])
                            arr.removeFirst()
                            self.getPostAboutPageID(senderArr: arr)
                            
                        }else{
                            self.myPagesArr.append(arr[0])
                            arr.removeFirst()
                            self.getPostAboutPageID(senderArr: arr)
                        }
                    }
                }
            }else{
                self.myPagesArr.append(arr[0])
                arr.removeFirst()
                self.getPostAboutPageID(senderArr: arr)
            }
        }else{
            self.tableviewHome.reloadData()
        }
    }
}





extension HomeVC: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
//        if scrollView.contentOffset.y > 0{
//            if (self.lastContentOffset < scrollView.contentOffset.y) {
//
//                self.searchView.backgroundColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
//
//                //                UIView.animate(withDuration: 1.0) {
//                self.headerviewTopConstraint.constant = self.headerViewTop - scrollView.contentOffset.y
//                //                    self.view.layoutIfNeeded()
//                //                }
//                self.tempLastContentOffset = scrollView.contentOffset.y
//
//            } else if (self.lastContentOffset > scrollView.contentOffset.y) {
//
//                if scrollView.contentOffset.y <= self.tempLastContentOffset - 50{
//
//                    UIView.animate(withDuration: 0.5) {
//                        self.searchView.backgroundColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
//                        self.headerviewTopConstraint.constant = self.headerViewTop
//                        self.view.layoutIfNeeded()
//                    }
//                }else if scrollView.contentOffset.y < 80{
//                    self.headerviewTopConstraint.constant = self.headerViewTop
//                }
//
//            } else {
//
//                if self.lastContentOffset == 0 {
//                    UIView.animate(withDuration: 0.5) {
//                        self.searchView.backgroundColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
//                        self.headerviewTopConstraint.constant = self.headerViewTop
//                        self.view.layoutIfNeeded()
//                    }
//                }
//            }
//            self.lastContentOffset = scrollView.contentOffset.y
//        }
    }
    
    
}

extension HomeVC: changeHomeControllerDelegate{
    func changeHomeController() {
        print("change Home Controller")
        self.getUserData()
    }
    
    
}


extension HomeVC: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        if self.isApplyAnimation{
            self.isApplyAnimation = false
            if operation == .push {
                return manager.transition(for: .presenting)
            }
        }
        navigationController.delegate = nil
        return nil
    }
}
