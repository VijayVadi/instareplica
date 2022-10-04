//
//  loginUserProfileVC.swift
//  Pictopage
//
//  Created by Grewon on 30/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import SVProgressHUD
import Firebase

class loginUserProfileVC: UIViewController {

    let headerView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let headerLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = ""
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let viewMore: UIView = {
        let log = UIView()
        return log
    }()
    
    let viewMoreImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "iconSetting_1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let viewMoreButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    var  tableviewuserData: UITableView = {
        var tableview = UITableView()
        tableview.backgroundColor = .white
        tableview = UITableView(frame: CGRect.zero, style: UITableView.Style.plain)
        return tableview
    }()
    
    var mypagesArr = [PageList]()
    var bookMarkpagesArr = [PageList]()
    var mypagesTempArr = [PageList]()
    var bookMarkpagesTempArr = [PageList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = whiteF7F7F9
        
        
        // setup tableview
        
        self.view.addSubview(self.tableviewuserData)
        self.tableviewuserData.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        if #available(iOS 11.0, *) {
            self.tableviewuserData.contentInsetAdjustmentBehavior = .never
        }
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 70)
        self.headerView.backgroundColor = .white
        self.headerView.isHidden = true
        
        self.headerView.addSubview(self.headerLable)
        self.headerLable.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 8, paddingRight: 10, width: 0, height: 0)
        
        
        // setup more view
        
        self.headerView.addSubview(self.viewMore)
        self.viewMore.anchor(top: nil, left: nil, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 44, height: 44)
        
        self.viewMore.addSubview(self.viewMoreImage)
        self.viewMoreImage.anchor(top: self.viewMore.topAnchor, left: self.viewMore.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 25, height: 10)
        
        self.viewMore.addSubview(self.viewMoreButton)
        self.viewMoreButton.anchor(top: self.viewMore.topAnchor, left: self.viewMore.leftAnchor, bottom: self.viewMore.bottomAnchor, right: self.viewMore.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.viewMoreButton.addTarget(self, action: #selector(self.clickMore), for: .touchUpInside)
        
        self.setUpTableview()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.getuserData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        print("loginUserProfileVC")
    }
    
    

    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        self.tableviewuserData.register(loginUserProfile_pageCell.self, forCellReuseIdentifier: "loginUserProfile_pageCell")
        self.tableviewuserData.register(loginUserProfileHeader_cell.self, forCellReuseIdentifier: "loginUserProfileHeader_cell")
        self.tableviewuserData.register(userProfileData_cell.self, forCellReuseIdentifier: "userProfileData_cell")
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
    
    @objc func click_bookmark()
    {
        print("click bookmark")
    }
    
    @objc func click_pages()
    {
        print("click pages")
    }
    
    @objc func click_added()
    {
        print("click added")
    }
    
    @objc func clickMore()
    {
        let vc = settingVC()
        isBackUserProfileScreen = 2
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

}

extension loginUserProfileVC: UITableViewDataSource, UITableViewDelegate
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "userProfileData_cell", for: indexPath) as! userProfileData_cell
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
            cell.viewMoreButton.addTarget(self, action: #selector(self.clickMore), for: .touchUpInside)
            
            
            
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
            if !ApiUtillity.sharedInstance.isGreterPhoneX(){
                return 276
            }else{
                return 300
            }
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
            return 276
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

extension loginUserProfileVC: UIScrollViewDelegate{

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //        print("scroll content",scrollView.contentOffset.y)
        
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

extension loginUserProfileVC{
    
    func getuserData(){
        
        FirebaseClient.sharedInstance.getCurrentUserData(controller: self) { (userDocument) in
            let data = userDocument as! userData
            FirebaseClient.sharedInstance.firebaseCurrentUser = data
            if let name = data.FullName, name.count != 0{
                self.headerLable.text = name
            }else{
                self.headerLable.text = "Profile"
            }
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

extension loginUserProfileVC: changeUserProfileControllerDelegate{
    func changeUserProfileController() {
        print("change user Controller")
        self.getuserData()
    }
}
