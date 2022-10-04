//
//  bookmarkUserVC.swift
//  Pictopage
//
//  Created by Grewon on 28/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Firebase
import Kingfisher

class bookmarkUserVC: UIViewController {

    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let backOval: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let backImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "backBlack_1x")
        return img
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let sortOval: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let sortImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "AToZIcon")
        return img
    }()
    
    let sortButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let searchView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let searchiconImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        img.image = UIImage(named: "Search_gray")
        return img
    }()
    
    let searchtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Search",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 142.0/255.0, green: 142.0/255.0, blue: 147.0/255.0, alpha: 1.0)])
        return txt
    }()
    
    var  tableviewBookmarkuser: UITableView = {
        var tableview = UITableView()
        tableview.backgroundColor = .white
        return tableview
    }()
    
    
    let sortDataView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let sortDataBackgroundImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        img.image = UIImage(named: "sortViewBackgroungImage")
        return img
    }()
    
    let AlphabeticalSortView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let Alphabeticaldivideview: UIView = {
        let logov = UIView()
        logov.backgroundColor = GrayD8
        logov.clipsToBounds = true
        return logov
    }()
    
    let AlphabeticalImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "AlphabeticalOrderImage")
        return img
    }()
    
    let AlphabeticalButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let postSortView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let postdivideview: UIView = {
        let logov = UIView()
        logov.backgroundColor = GrayD8
        logov.clipsToBounds = true
        return logov
    }()
    
    let postImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "post")
        return img
    }()
    
    let postButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let likeSortView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let likedivideview: UIView = {
        let logov = UIView()
        logov.backgroundColor = GrayD8
        logov.clipsToBounds = true
        return logov
    }()
    
    let likeImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "likes")
        return img
    }()
    
    let likeButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let commentSortView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let commentImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "commentsImage")
        return img
    }()
    
    let commentButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    
//    var bookMarkUserArr = [modelGetBookMarkUser]()
    
    var pageBookMarkUserArr = [userData]()
    var pageID = String()
    
    var currentUserStatus = String()
    
    var pageOwnerArr = [String]()
    var pageAdminArr = [String]()
    var pageMemberArr = [String]()
    var pageViewerArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // setup header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 72)
        self.headerView.backgroundColor = .white
        
        // Setup sort view
        
        self.headerView.addSubview(self.sortOval)
        self.sortOval.anchor(top: nil, left: nil, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 1, paddingRight: 7, width: 40, height: 40)
        self.sortOval.layer.cornerRadius = 20.0
        self.sortOval.backgroundColor = .white
        self.sortOval.dropShadow(color: .black, opacity: 0.8, offSet: CGSize(width: 0, height: 1), radius: 2, scale: true)
        
        self.sortOval.addSubview(self.sortImageview)
        self.sortImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        self.sortImageview.centerYAnchor.constraint(equalTo: self.sortOval.centerYAnchor).isActive = true
        self.sortImageview.centerXAnchor.constraint(equalTo: self.sortOval.centerXAnchor).isActive = true
        
        self.sortOval.addSubview(self.sortButton)
        self.sortButton.anchor(top: self.sortOval.topAnchor, left: self.sortOval.leftAnchor, bottom: self.sortOval.bottomAnchor, right: self.sortOval.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.sortButton.addTarget(self, action: #selector(self.click_sort), for: .touchUpInside)
        
        // Setup back view
        
        self.headerView.addSubview(self.backOval)
        self.backOval.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 7, paddingBottom: 1, paddingRight: 0, width: 40, height: 40)
        self.backOval.layer.cornerRadius = 20.0
        self.backOval.backgroundColor = .white
        self.backOval.dropShadow(color: .black, opacity: 0.8, offSet: CGSize(width: 0, height: 1), radius: 2, scale: true)
        
        self.backOval.addSubview(self.backImageview)
        self.backImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 16, height: 18)
        self.backImageview.centerYAnchor.constraint(equalTo: self.backOval.centerYAnchor).isActive = true
        self.backImageview.centerXAnchor.constraint(equalTo: self.backOval.centerXAnchor).isActive = true
        
        self.backOval.addSubview(self.backButton)
        self.backButton.anchor(top: self.backOval.topAnchor, left: self.backOval.leftAnchor, bottom: self.backOval.bottomAnchor, right: self.backOval.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // setup search view
        
        self.headerView.addSubview(self.searchView)
        self.searchView.anchor(top: nil, left: self.backOval.rightAnchor, bottom: self.headerView.bottomAnchor, right: self.sortOval.leftAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 1, paddingRight: 8, width: 0, height: 40)
        self.searchView.backgroundColor = .white
        self.searchView.layer.cornerRadius = 10.0
        self.searchView.dropShadow(color: .black, opacity: 0.8, offSet: CGSize(width: 0, height: 1), radius: 2, scale: true)
        
        self.searchView.addSubview(self.searchiconImageview)
        self.searchiconImageview.anchor(top: nil, left: self.searchView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 14, paddingBottom: 0, paddingRight: 0, width: 14, height: 14)
        self.searchiconImageview.centerYAnchor.constraint(equalTo: self.searchView.centerYAnchor).isActive = true
        
        self.searchView.addSubview(self.searchtextField)
        self.searchtextField.anchor(top: self.searchView.topAnchor, left: self.searchiconImageview.rightAnchor, bottom: self.searchView.bottomAnchor, right: self.searchView.rightAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.searchtextField.delegate = self
        
        // setup Tableview
        
        self.view.addSubview(self.tableviewBookmarkuser)
        self.tableviewBookmarkuser.anchor(top: self.headerView.bottomAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup sortData view
        
        self.view.addSubview(self.sortDataView)
        self.sortDataView.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: self.view.rightAnchor, paddingTop: 33, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 193, height: 192)
        self.sortDataView.clipsToBounds = true
        
        self.sortDataView.addSubview(self.sortDataBackgroundImageview)
        self.sortDataBackgroundImageview.anchor(top: self.sortDataView.topAnchor, left: self.sortDataView.leftAnchor, bottom: self.sortDataView.bottomAnchor, right: self.sortDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.sortDataView.addSubview(self.AlphabeticalSortView)
        self.AlphabeticalSortView.anchor(top: self.sortDataView.topAnchor, left: self.sortDataView.leftAnchor, bottom: nil, right: self.sortDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 48)
        self.AlphabeticalSortView.clipsToBounds = true
        
        self.AlphabeticalSortView.addSubview(self.Alphabeticaldivideview)
        self.Alphabeticaldivideview.anchor(top: nil, left: self.AlphabeticalSortView.leftAnchor, bottom: self.AlphabeticalSortView.bottomAnchor, right: self.AlphabeticalSortView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.AlphabeticalSortView.addSubview(self.AlphabeticalImageview)
        self.AlphabeticalImageview.anchor(top: self.AlphabeticalSortView.topAnchor, left: self.AlphabeticalSortView.leftAnchor, bottom: self.AlphabeticalSortView.bottomAnchor, right: self.AlphabeticalSortView.rightAnchor, paddingTop: 5, paddingLeft: 16, paddingBottom: 5, paddingRight: 16, width: 0, height: 0)
        
        self.AlphabeticalSortView.addSubview(self.AlphabeticalButton)
        self.AlphabeticalButton.anchor(top: self.AlphabeticalSortView.topAnchor, left: self.AlphabeticalSortView.leftAnchor, bottom: self.AlphabeticalSortView.bottomAnchor, right: self.AlphabeticalSortView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.AlphabeticalButton.addTarget(self, action: #selector(self.click_alphabetical), for: .touchUpInside)
        
        self.sortDataView.addSubview(self.postSortView)
        self.postSortView.anchor(top: self.AlphabeticalSortView.bottomAnchor, left: self.sortDataView.leftAnchor, bottom: nil, right: self.sortDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 48)
        self.postSortView.clipsToBounds = true
        
        self.postSortView.addSubview(self.postdivideview)
        self.postdivideview.anchor(top: nil, left: self.postSortView.leftAnchor, bottom: self.postSortView.bottomAnchor, right: self.postSortView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.postSortView.addSubview(self.postImageview)
        self.postImageview.anchor(top: self.postSortView.topAnchor, left: self.postSortView.leftAnchor, bottom: self.postSortView.bottomAnchor, right: self.postSortView.rightAnchor, paddingTop: 5, paddingLeft: 16, paddingBottom: 5, paddingRight: 16, width: 0, height: 0)
        
        self.postSortView.addSubview(self.postButton)
        self.postButton.anchor(top: self.postSortView.topAnchor, left: self.postSortView.leftAnchor, bottom: self.postSortView.bottomAnchor, right: self.postSortView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.postButton.addTarget(self, action: #selector(self.click_posts), for: .touchUpInside)
        
        self.sortDataView.addSubview(self.likeSortView)
        self.likeSortView.anchor(top: self.postSortView.bottomAnchor, left: self.sortDataView.leftAnchor, bottom: nil, right: self.sortDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 48)
        self.likeSortView.clipsToBounds = true
        
        self.likeSortView.addSubview(self.likedivideview)
        self.likedivideview.anchor(top: nil, left: self.likeSortView.leftAnchor, bottom: self.likeSortView.bottomAnchor, right: self.likeSortView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.likeSortView.addSubview(self.likeImageview)
        self.likeImageview.anchor(top: self.likeSortView.topAnchor, left: self.likeSortView.leftAnchor, bottom: self.likeSortView.bottomAnchor, right: self.likeSortView.rightAnchor, paddingTop: 5, paddingLeft: 16, paddingBottom: 5, paddingRight: 16, width: 0, height: 0)
        
        self.likeSortView.addSubview(self.likeButton)
        self.likeButton.anchor(top: self.likeSortView.topAnchor, left: self.likeSortView.leftAnchor, bottom: self.likeSortView.bottomAnchor, right: self.likeSortView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.likeButton.addTarget(self, action: #selector(self.click_likes), for: .touchUpInside)
        
        
        self.sortDataView.addSubview(self.commentSortView)
        self.commentSortView.anchor(top: self.likeSortView.bottomAnchor, left: self.sortDataView.leftAnchor, bottom: nil, right: self.sortDataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 48)
        self.commentSortView.clipsToBounds = true
        
        self.commentSortView.addSubview(self.commentImageview)
        self.commentImageview.anchor(top: self.commentSortView.topAnchor, left: self.commentSortView.leftAnchor, bottom: self.commentSortView.bottomAnchor, right: self.commentSortView.rightAnchor, paddingTop: 5, paddingLeft: 16, paddingBottom: 5, paddingRight: 16, width: 0, height: 0)
        
        self.commentSortView.addSubview(self.commentButton)
        self.commentButton.anchor(top: self.commentSortView.topAnchor, left: self.commentSortView.leftAnchor, bottom: self.commentSortView.bottomAnchor, right: self.commentSortView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.commentButton.addTarget(self, action: #selector(self.click_comments), for: .touchUpInside)
        
        self.sortDataView.isHidden = true
        self.setUpTableview()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.getPageDetailsData()
    }
    
    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        tableviewBookmarkuser.register(bookamark_userCell.self, forCellReuseIdentifier: "bookamark_userCell")
        tableviewBookmarkuser.dataSource = self
        tableviewBookmarkuser.delegate = self
        tableviewBookmarkuser.tableFooterView = UIView()
        tableviewBookmarkuser.separatorStyle = .none
        tableviewBookmarkuser.backgroundColor = .clear
        self.tableviewBookmarkuser.showsVerticalScrollIndicator = false
        
    }
    
    // MARK:- Button Action
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }

    @objc func click_sort()
    {
        print("click_sort")
        self.sortDataView.isHidden = false
    }
    
    @objc func click_alphabetical()
    {
        print("click_alphabetical")
        self.sortDataView.isHidden = true
    }
    
    @objc func click_likes()
    {
        print("click_likes")
        self.sortDataView.isHidden = true
    }
    
    @objc func click_posts()
    {
        print("click_posts")
        self.sortDataView.isHidden = true
    }
    
    @objc func click_comments()
    {
        print("click_comments")
        self.sortDataView.isHidden = true
    }
    
    @objc func setUserType(sender: UIButton){
        
        let dict = self.pageBookMarkUserArr[sender.tag]
        
        if self.currentUserStatus.count != 0{
            
            if let type = dict.userStatus, type.count != 0, FirebaseClient.sharedInstance.firebaseCurrentUser!.userID != dict.userID{

                if self.currentUserStatus == "Owner"{
                    
                    var memberTitle = String()
                    var adminTitle = String()
                    
                    if type == "Admin"{
                        adminTitle = "Remove a admin"
                    }else{
                        adminTitle = "Set as a admin"
                    }
                    
                    if type == "Member"{
                        memberTitle = "Remove a member"
                    }else{
                        memberTitle = "Set as a member"
                    }
                    
                    let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)

                    alert.addAction(UIAlertAction(title: adminTitle, style: .default , handler:{ (UIAlertAction)in
                        
                        if adminTitle == "Set as a admin"{
                            FirebaseClient.sharedInstance.updateBookmarkTableData(pageId: self.pageID, userID: dict.userID, userType: "Admin", isAlreadyType: type, isChange: true) { (_) in
                                self.pageBookMarkUserArr[sender.tag].userStatus = "Admin"
                                self.tableviewBookmarkuser.reloadData()
                            }
                        }else{
                            FirebaseClient.sharedInstance.updateBookmarkTableData(pageId: self.pageID, userID: dict.userID, userType: "Viewer", isAlreadyType: type, isChange: true) { (_) in
                                self.pageBookMarkUserArr[sender.tag].userStatus = "Viewer"
                                self.tableviewBookmarkuser.reloadData()
                            }
                        }
                        
                    }))

                    alert.addAction(UIAlertAction(title: memberTitle, style: .default , handler:{ (UIAlertAction)in
                        
                        if memberTitle == "Set as a member"{
                            FirebaseClient.sharedInstance.updateBookmarkTableData(pageId: self.pageID, userID: dict.userID, userType: "Member", isAlreadyType: type, isChange: true) { (_) in
                                self.pageBookMarkUserArr[sender.tag].userStatus = "Member"
                                self.tableviewBookmarkuser.reloadData()
                            }
                        }else{
                            FirebaseClient.sharedInstance.updateBookmarkTableData(pageId: self.pageID, userID: dict.userID, userType: "Viewer", isAlreadyType: type, isChange: true) { (_) in
                                self.pageBookMarkUserArr[sender.tag].userStatus = "Viewer"
                                self.tableviewBookmarkuser.reloadData()
                            }
                        }
                    }))

                    alert.addAction(UIAlertAction(title: "Remove User", style: .default , handler:{ (UIAlertAction)in

                        FirebaseClient.sharedInstance.setBookMarkPage(pageId: self.pageID, userID: Auth.auth().currentUser!.uid, isBookMark: false) { (isDelete) in
                            if isDelete{
                                FirebaseClient.sharedInstance.updateAllPageDataInUserTable(pageId: self.pageID, isAdd: false) { (isComplete) in
                                    if isComplete{
                                        print("success")
                                    }else{
                                        self.view.makeToast("All page data not Update")
                                    }
                                }
                            }else{
                                
                            }
                        }
                        
                    }))
                    
                    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler:{ (UIAlertAction)in
                        print("Owner click Dismiss button")
                    }))
                    
                    self.present(alert, animated: true, completion: {
                        print("completion block")
                    })
                }else if self.currentUserStatus == "Admin"{
                    
                    var memberTitle = String()
                    
                    if type == "Member"{
                        memberTitle = "Remove a member"
                    }else{
                        memberTitle = "Set as a member"
                    }
                    
                    let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)
                    alert.addAction(UIAlertAction(title: memberTitle, style: .default , handler:{ (UIAlertAction)in
                        
                        if memberTitle == "Set as a member"{
                            
                            FirebaseClient.sharedInstance.updateBookmarkTableData(pageId: self.pageID, userID: dict.userID, userType: "Member", isAlreadyType: type, isChange: true) { (_) in
                                self.pageBookMarkUserArr[sender.tag].userStatus = "Member"
                                self.tableviewBookmarkuser.reloadData()
                            }
                            
                        }else{
                            FirebaseClient.sharedInstance.updateBookmarkTableData(pageId: self.pageID, userID: dict.userID, userType: "Viewer", isAlreadyType: type, isChange: true) { (_) in
                                self.pageBookMarkUserArr[sender.tag].userStatus = "Viewer"
                                self.tableviewBookmarkuser.reloadData()
                            }
                        }
                        self.tableviewBookmarkuser.reloadData()
                    }))
                    
                    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler:{ (UIAlertAction)in
                        print("Admin click Dismiss button")
                    }))
                    
                    self.present(alert, animated: true, completion: {
                        print("completion block")
                    })
                    
                }
            }
        }
    }
    
}


extension bookmarkUserVC: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension bookmarkUserVC: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.pageBookMarkUserArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookamark_userCell", for: indexPath) as! bookamark_userCell
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        cell.contentView.isHidden = true
        
        let dict = self.pageBookMarkUserArr[indexPath.row]

        if let status = dict.userStatus, status.count != 0{

            if status == "Owner"{
                cell.userTypeLable.text = "Owner"
                cell.blackDotViewOneWidthConstraint.constant = 3
                cell.blackDotViewOneLeftConstraint.constant = 5
                cell.pageCretorLeftConstraint.constant = 8
                cell.pageCreatorLable.text = "Page Creator"
                cell.userTypeImageView.isHidden = false
                cell.userTypeImageView.image = UIImage(named: "crown1x")
            }else if status == "Admin"{
                cell.pageCreatorLable.text = ""
                cell.userTypeImageView.isHidden = false
                cell.userTypeImageView.image = UIImage(named: "Pageadmin1x")
                cell.userTypeLable.text = "Admin"
                cell.blackDotViewOneWidthConstraint.constant = 0
                cell.blackDotViewOneLeftConstraint.constant = 0
                cell.pageCretorLeftConstraint.constant = 0
            }else if status == "Member"{
                cell.pageCreatorLable.text = ""
                cell.userTypeImageView.isHidden = true
                cell.userTypeLable.text = "Member"
                cell.blackDotViewOneWidthConstraint.constant = 0
                cell.blackDotViewOneLeftConstraint.constant = 0
                cell.pageCretorLeftConstraint.constant = 0
            }else{
                cell.pageCreatorLable.text = ""
                cell.userTypeImageView.isHidden = true
                cell.userTypeLable.text = "Viewer"
                cell.blackDotViewOneWidthConstraint.constant = 0
                cell.blackDotViewOneLeftConstraint.constant = 0
                cell.pageCretorLeftConstraint.constant = 0
            }

            if let postImage = dict.ProfilePicture, postImage.count != 0{
                cell.userImage.kf.indicatorType = .activity
                cell.userImage.kf.setImage(with: URL(string: postImage))
            }else{
                cell.userImage.isHidden = false
                cell.userImage.image = UIImage(named: "")
            }
            
            if let name = dict.FullName, name.count != 0{
                cell.TitleLable.text = name
            }
            
            if let u_name = dict.UserName, u_name.count != 0{
                cell.descLable.text = u_name
            }
            
//            if let postCnt = dict.userPostCountOnPage{
//                cell.totalPostLable.text = "\(postCnt) post"
//            }
            
            cell.userTypeButton.tag = indexPath.row
            cell.userTypeButton.addTarget(self, action: #selector(self.setUserType), for: .touchUpInside)
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }
}


extension bookmarkUserVC{
    
    func getPageDetailsData(){
        FirebaseClient.sharedInstance.getPageData(pageID: self.pageID) { (pageDocument) in
            if let pagedata = pageDocument as? PageList{
                
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
                        
                        if usr.userID == FirebaseClient.sharedInstance.firebaseCurrentUser!.userID{
                            self.currentUserStatus = usr.userStatus!
                        }
                        
                        self.pageBookMarkUserArr.append(usr)
                    }
                    self.tableviewBookmarkuser.reloadData()
                }
                else{
                    self.tableviewBookmarkuser.reloadData()
                }
            }
        }
    }
    
}
