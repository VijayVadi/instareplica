//
//  sharePostScreen.swift
//  Pictopage
//
//  Created by Grewon on 29/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
import FirebaseStorage
import FirebaseFirestore


class sharePostScreen: UIViewController {

    let headerView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let headerSubView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let backView: UIView = {
        let v = UIView()
        return v
    }()
    
    let backImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "back_1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let selectAllView: UIView = {
        let v = UIView()
        return v
    }()
    
    let selectAllSubView: UIView = {
        let v = UIView()
        return v
    }()
    
    let checkImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "check_white")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()

    let checkButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let searchView: UIView = {
        let v = UIView()
        return v
    }()
    
    let searchiconImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        img.image = UIImage(named: "Search_1x")
        return img
    }()
    
    let searchtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Search",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        return txt
    }()
    
    var tableviewSharePost: UITableView = {
        var tableview = UITableView()
        tableview = UITableView(frame: CGRect.zero, style: UITableView.Style.grouped)
        tableview.backgroundColor = .clear
        return tableview
    }()
    
    let BottomView: UIView = {
        let v = UIView()
        return v
    }()
    
    let BottomViewImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "sharePostBottomView")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let shareButtonView: UIView = {
        let v = UIView()
        return v
    }()
    
    let shareImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "backWithRound")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let shareButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.showsVerticalScrollIndicator = false
        v.showsHorizontalScrollIndicator = false
        return v
    }()
    
    let scrollViewsubview: UIView = {
        let v = UIView()
        return v
    }()
    
    let selectedPageNameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.text = "BookmarksBookmarksBookmarksBookmarksBookmarksBookmarksBookmarksBookmarksBookmarksBookmarks"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var selctedPageIDArr = [String]()
    var selctedPageNameArr = [String]()
    var selctedPageNameIDArr = [String]()
    var selctedPageImageArr = [String]()
    
    var caption = String()
    var postImage = UIImage()
    var uploadedImageURl = String()
    
    var sharePostCount = Int()
    var isSelectAll = Bool()
    
    var pageListAllArr = [PageList]()
    var pageListMyPagesArr = [PageList]()
    var pageListRecentPagesArr = [PageList]()
    var pageListBookmarkArr = [PageList]()
    
    var pageListFilterAllArr = [PageList]()
    var pageListFilterMyPagesArr = [PageList]()
    var pageListFilterRecentPagesArr = [PageList]()
    var pageListFilterBookamrkArr = [PageList]()
    
    var DefaultRecentArr = [String]()
    
    var isSearchPostPageData = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = whiteF7F7F9
        
        // setup header view
        
        self.view.addSubview(self.headerView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 71)
        }else{
            self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 88)
        }
        
            // setup Header sub view
        
            self.headerView.addSubview(self.headerSubView)
            self.headerSubView.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 9, paddingBottom: 0, paddingRight: 9, width: 0, height: 40)
        
                // setup back view

                self.headerSubView.addSubview(self.backView)
                self.backView.anchor(top: nil, left: self.headerSubView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
                self.backView.centerYAnchor.constraint(equalTo: self.headerSubView.centerYAnchor).isActive = true
                self.backView.backgroundColor = .white
                self.backView.layer.cornerRadius = 20.0
                self.backView.layer.applySketchShadow()
        
                self.backView.addSubview(self.backImageView)
                self.backImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 9, height: 15)
                self.backImageView.centerXAnchor.constraint(equalTo: self.backView.centerXAnchor).isActive = true
                self.backImageView.centerYAnchor.constraint(equalTo: self.backView.centerYAnchor).isActive = true
        
                self.backView.addSubview(self.backButton)
                self.backButton.anchor(top: self.backView.topAnchor, left: self.backView.leftAnchor, bottom: self.backView.bottomAnchor, right: self.backView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
                self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
                // setup select All view
        
                self.headerSubView.addSubview(self.selectAllView)
                self.selectAllView.anchor(top: nil, left: nil, bottom: nil, right: self.headerSubView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
                self.selectAllView.centerYAnchor.constraint(equalTo: self.headerSubView.centerYAnchor).isActive = true
                self.selectAllView.backgroundColor = .white
                self.selectAllView.layer.cornerRadius = 20.0
                self.selectAllView.layer.applySketchShadow()
        
                self.selectAllView.addSubview(self.selectAllSubView)
                self.selectAllSubView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 22, height: 22)
                self.selectAllSubView.backgroundColor = .black
                self.selectAllSubView.layer.cornerRadius = 11.0
                self.selectAllSubView.centerYAnchor.constraint(equalTo: self.selectAllView.centerYAnchor).isActive = true
                self.selectAllSubView.centerXAnchor.constraint(equalTo: self.selectAllView.centerXAnchor).isActive = true
        
                self.selectAllSubView.addSubview(self.checkImageView)
                self.checkImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 11.5, height: 8)
                self.checkImageView.centerYAnchor.constraint(equalTo: self.selectAllSubView.centerYAnchor).isActive = true
                self.checkImageView.centerXAnchor.constraint(equalTo: self.selectAllSubView.centerXAnchor).isActive = true
        
                self.selectAllView.addSubview(self.checkButton)
                self.checkButton.anchor(top: self.selectAllView.topAnchor, left: self.selectAllView.leftAnchor, bottom: self.selectAllView.bottomAnchor, right: self.selectAllView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
                self.checkButton.addTarget(self, action: #selector(self.click_checkAll), for: .touchUpInside)
        
        
                // setup search view
        
                self.headerSubView.addSubview(self.searchView)
                self.searchView.anchor(top: nil, left: self.backView.rightAnchor, bottom: nil, right: self.selectAllView.leftAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 40)
                self.searchView.centerYAnchor.constraint(equalTo: self.headerSubView.centerYAnchor).isActive = true
                self.searchView.backgroundColor = .white
                self.searchView.layer.cornerRadius = 15.0
                self.searchView.layer.applySketchShadow()
        
                self.searchView.addSubview(self.searchiconImageview)
                self.searchiconImageview.anchor(top: nil, left: self.searchView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 14, height: 14)
                self.searchiconImageview.centerYAnchor.constraint(equalTo: self.searchView.centerYAnchor).isActive = true
        
                self.searchView.addSubview(self.searchtextField)
                self.searchtextField.anchor(top: self.searchView.topAnchor, left: self.searchiconImageview.rightAnchor, bottom: self.searchView.bottomAnchor, right: self.searchView.rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
                self.searchtextField.delegate = self
                self.searchtextField.textColor = .white
        
        // setup Tableview
        
        self.view.addSubview(self.tableviewSharePost)
        self.tableviewSharePost.anchor(top: self.headerView.bottomAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.setUpTableview()
        
        // setup bottom view
        
        self.view.addSubview(self.BottomView)
        self.BottomView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 53)
        
        self.BottomView.addSubview(self.BottomViewImageView)
        self.BottomViewImageView.anchor(top: self.BottomView.topAnchor, left: self.BottomView.leftAnchor, bottom: self.BottomView.bottomAnchor, right: self.BottomView.rightAnchor, paddingTop: -6, paddingLeft: 18, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.BottomView.addSubview(self.shareButtonView)
        self.shareButtonView.anchor(top: self.BottomView.topAnchor, left: nil, bottom: self.BottomView.bottomAnchor, right: self.BottomView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 40, height: 0)
        self.shareButtonView.backgroundColor = .white
        
        self.shareButtonView.addSubview(self.shareImageView)
        self.shareImageView.anchor(top: nil, left: self.shareButtonView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 36, height: 36)
        self.shareImageView.centerYAnchor.constraint(equalTo: self.shareButtonView.centerYAnchor).isActive = true

        self.shareButtonView.addSubview(self.shareButton)
        self.shareButton.anchor(top: nil, left: self.shareButtonView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 36, height: 36)
        self.shareButton.centerYAnchor.constraint(equalTo: self.shareButtonView.centerYAnchor).isActive = true
        self.shareButton.addTarget(self, action: #selector(self.uploadSharePostImage), for: .touchUpInside)

        self.BottomView.addSubview(self.scrollView)
        self.scrollView.anchor(top: self.BottomView.topAnchor, left: self.BottomView.leftAnchor, bottom: self.BottomView.bottomAnchor, right: self.shareButtonView.leftAnchor, paddingTop: 0, paddingLeft: 18, paddingBottom: 0, paddingRight: 8, width: 0, height: 0)
        
        self.scrollView.addSubview(self.scrollViewsubview)
        self.scrollViewsubview.anchor(top: self.scrollView.topAnchor, left: self.scrollView.leftAnchor, bottom: nil, right: self.scrollView.rightAnchor, paddingTop: 5, paddingLeft: 5, paddingBottom: 0, paddingRight: 5, width: 0, height: 43)

        self.scrollViewsubview.addSubview(self.selectedPageNameLable)
        self.selectedPageNameLable.anchor(top: self.scrollViewsubview.topAnchor, left: self.scrollViewsubview.leftAnchor, bottom: self.scrollViewsubview.bottomAnchor, right: self.scrollViewsubview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.BottomView.isHidden = true
    
        DefaultRecentArr = Defaults[.RecentPostedPagesID]
        
        self.getUserOwnAndBookmarkPageList(sender: FirebaseClient.sharedInstance.firebaseCurrentUser!.userID)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.addSearchObserver()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: UITextField.textDidChangeNotification, object: nil)
    }

    // MARK:- change status bar color
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .default
    }
    
    // MARK:- Textfield Delegate Method
    
    func addSearchObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.textChange(_:)), name: UITextField.textDidChangeNotification, object: nil)
    }
    
    func removeSearchObserver() {
        self.searchtextField.resignFirstResponder()
        NotificationCenter.default.removeObserver(self, name: UITextField.textDidChangeNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func textChange(_ notification: Notification) {
        
        searchRecordsFirstName(str: self.searchtextField.text!)
        
    }
    
    func searchRecordsFirstName(str: String) {
        
        if str.count != 0
        {
            print(str)
            self.searchData(searchStaring: str)
        }else{
            self.searchData(searchStaring: str)
        }
    }
    
    // MARK:- SearchData Function
    
    func searchData(searchStaring: String){
        if searchStaring.count == 0 {
            
            self.isSearchPostPageData = false
            
            self.tableviewSharePost.reloadData()
            
        } else {
            
            self.isSearchPostPageData = true
            
            self.pageListFilterAllArr = self.pageListAllArr.filter { (page) -> Bool in
                return page.PageName!.lowercased().contains(searchStaring.lowercased())
            }
            
            self.pageListBookmarkArr = self.pageListBookmarkArr.filter { (page) -> Bool in
                return page.PageName!.lowercased().contains(searchStaring.lowercased())
            }
            
            self.pageListFilterRecentPagesArr = self.pageListRecentPagesArr.filter { (page) -> Bool in
                return page.PageName!.lowercased().contains(searchStaring.lowercased())
            }
            
            self.pageListFilterMyPagesArr = self.pageListMyPagesArr.filter { (page) -> Bool in
                return page.PageName!.lowercased().contains(searchStaring.lowercased())
            }
            self.tableviewSharePost.reloadData()
        }
    }
    
    
    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        self.tableviewSharePost.register(sharePostHeader_cell.self, forCellReuseIdentifier: "sharePostHeader_cell")
        self.tableviewSharePost.register(sharePostData_cell.self, forCellReuseIdentifier: "sharePostData_cell")
        self.tableviewSharePost.dataSource = self
        self.tableviewSharePost.delegate = self
        self.tableviewSharePost.tableFooterView = UIView()
        self.tableviewSharePost.separatorStyle = .none
        self.tableviewSharePost.showsVerticalScrollIndicator = false
    }
    
    // MARK:- Button Action
    
    @objc func click_back()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_checkAll()
    {
        print("check all")
        
        if self.isSelectAll == false
        {
            self.selctedPageIDArr.removeAll()
            self.selctedPageNameArr.removeAll()
            self.selctedPageImageArr.removeAll()
            self.selctedPageNameIDArr.removeAll()
            
            if self.isSearchPostPageData == true{
                for data in self.pageListFilterAllArr{
                    if let pId = data.pageId, pId.count != 0{
                        self.selctedPageIDArr.append(pId)
                    }
                    
                    if let name = data.PageName, name.count != 0{
                        self.selctedPageNameArr.append(name)
                    }
                    
                    if let iamgeURL = data.PagethumbnilURLOne, iamgeURL.count != 0{
                        self.selctedPageImageArr.append(iamgeURL)
                    }
                    
                    if let iamgeURL = data.PageNameID, iamgeURL.count != 0{
                        self.selctedPageNameIDArr.append(iamgeURL)
                    }
                }
                
                self.selectAllSubView.backgroundColor = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
                self.isSelectAll = true
            }else{
                for data in self.pageListAllArr{
                    if let pId = data.pageId, pId.count != 0{
                        self.selctedPageIDArr.append(pId)
                    }
                    
                    if let name = data.PageName, name.count != 0{
                        self.selctedPageNameArr.append(name)
                    }
                    
                    if let iamgeURL = data.PagethumbnilURLOne, iamgeURL.count != 0{
                        self.selctedPageImageArr.append(iamgeURL)
                    }
                    
                    if let iamgeURL = data.PageNameID, iamgeURL.count != 0{
                        self.selctedPageNameIDArr.append(iamgeURL)
                    }
                }
                
                self.selectAllSubView.backgroundColor = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
                self.isSelectAll = true
            }
        }
        else
        {
            self.selctedPageIDArr.removeAll()
            self.selctedPageNameArr.removeAll()
            self.selctedPageImageArr.removeAll()
            self.selctedPageNameIDArr.removeAll()
            self.selectAllSubView.backgroundColor = .black
            self.isSelectAll = false
        }
        
        if self.selctedPageIDArr.count != 0{
            self.BottomView.isHidden = false
        }else{
            self.BottomView.isHidden = true
        }
        
        let stringRepresentation = self.selctedPageNameArr.joined(separator: ", ")
        print(stringRepresentation)
        
        self.selectedPageNameLable.text = stringRepresentation
        
        self.tableviewSharePost.reloadData()
    }

    @objc func selectPage(sender: DCustomButton)
    {
        let dic: PageList?
        if sender.indexPath?.section == 0{
            if self.isSearchPostPageData == true{
                dic = self.pageListFilterRecentPagesArr[(sender.indexPath?.row)!]
            }else{
                dic = self.pageListRecentPagesArr[(sender.indexPath?.row)!]
            }
        }else if sender.indexPath?.section == 1{
            if self.isSearchPostPageData == true{
                dic = self.pageListFilterMyPagesArr[(sender.indexPath?.row)!]
            }else{
                dic = self.pageListMyPagesArr[(sender.indexPath?.row)!]
            }
        }else if sender.indexPath?.section == 2{
            if self.isSearchPostPageData == true{
                dic = self.pageListFilterBookamrkArr[(sender.indexPath?.row)!]
            }else{
                dic = self.pageListBookmarkArr[(sender.indexPath?.row)!]
            }
        }else{
            if self.isSearchPostPageData == true{
                dic = self.pageListFilterAllArr[(sender.indexPath?.row)!]
            }else{
                dic = self.pageListAllArr[(sender.indexPath?.row)!]
            }
        }
        
        if self.selctedPageIDArr.contains((dic?.pageId!)!){
            self.selctedPageIDArr = self.selctedPageIDArr.filter{$0 != (dic?.pageId!)!}
            self.selctedPageNameArr = self.selctedPageNameArr.filter{$0 != (dic?.PageName!)!}
            self.selctedPageImageArr = self.selctedPageImageArr.filter{$0 != (dic?.PagethumbnilURLOne!)!}
            self.selctedPageNameIDArr = self.selctedPageNameIDArr.filter{$0 != (dic?.PageNameID!)!}
        }else{
            self.selctedPageIDArr.append((dic?.pageId!)!)
            self.selctedPageNameArr.append((dic?.PageName!)!)
            self.selctedPageImageArr.append((dic?.PagethumbnilURLOne!)!)
            self.selctedPageNameIDArr.append((dic?.PageNameID!)!)
        }
        
        if self.selctedPageIDArr.count == self.pageListAllArr.count{
            self.isSelectAll = true
            self.selectAllSubView.backgroundColor = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        }else{
            self.isSelectAll = false
            self.selectAllSubView.backgroundColor = .black
        }
        
        let stringRepresentation = self.selctedPageNameArr.joined(separator: ", ")
        self.selectedPageNameLable.text = stringRepresentation
        if self.selctedPageIDArr.count != 0{
            self.BottomView.isHidden = false
        }else{
            self.BottomView.isHidden = true
        }
        
        self.tableviewSharePost.reloadData()
    }
    
}

extension sharePostScreen: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension sharePostScreen: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            if self.isSearchPostPageData == true{
                return self.pageListFilterRecentPagesArr.count
            }else{
                return self.pageListRecentPagesArr.count
            }
        }else if section == 1{
            if self.isSearchPostPageData == true{
                return self.pageListFilterMyPagesArr.count
            }else{
                return self.pageListMyPagesArr.count
            }
        }else if section == 2{
            if self.isSearchPostPageData == true{
                return self.pageListFilterBookamrkArr.count
            }else{
                return self.pageListBookmarkArr.count
            }
        }else{
            if self.isSearchPostPageData == true{
                return self.pageListFilterAllArr.count
            }else{
                return self.pageListAllArr.count
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "sharePostHeader_cell") as! sharePostHeader_cell
        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        if section == 0{
            cell.titleLable.text = "Recent"
        }else if section == 1{
            cell.titleLable.text = "My Pages"
        }else if section == 2{
            cell.titleLable.text = "Bookmarked"
        }else{
            cell.titleLable.text = "All Pages"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0{
            if self.isSearchPostPageData == true{
                if self.pageListFilterRecentPagesArr.count != 0{
                    return 49
                }else{
                    return 0
                }
            }else{
                if self.pageListRecentPagesArr.count != 0{
                    return 49
                }else{
                    return 0
                }
            }
        }else if section == 1{
            if self.isSearchPostPageData == true{
                if self.pageListFilterMyPagesArr.count != 0{
                    return 49
                }else{
                    return 0
                }
            }else{
                if self.pageListMyPagesArr.count != 0{
                    return 49
                }else{
                    return 0
                }
            }
        }else if section == 2{
            if self.isSearchPostPageData == true{
                if self.pageListFilterBookamrkArr.count != 0{
                    return 49
                }else{
                    return 0
                }
            }else{
                if self.pageListBookmarkArr.count != 0{
                    return 49
                }else{
                    return 0
                }
            }
        }else{
            if self.isSearchPostPageData == true{
                if self.pageListFilterAllArr.count != 0{
                    return 49
                }else{
                    return 0
                }
            }else{
                if self.pageListAllArr.count != 0{
                    return 49
                }else{
                    return 0
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 0))
        return footerView
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "sharePostData_cell", for: indexPath) as! sharePostData_cell
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        cell.contentView.isHidden = true
        
        var dict: PageList?
        
        if indexPath.section == 0{
            
            if self.isSearchPostPageData == true{
                dict = self.pageListFilterRecentPagesArr[indexPath.row]
                
                if self.pageListFilterRecentPagesArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.pageListFilterRecentPagesArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.pageListFilterRecentPagesArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }
            }else{
                dict = self.pageListRecentPagesArr[indexPath.row]
                
                if self.pageListRecentPagesArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.pageListRecentPagesArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.pageListRecentPagesArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }
            }
        }else if indexPath.section == 1{
            
            if self.isSearchPostPageData == true{
                dict = self.pageListFilterMyPagesArr[indexPath.row]
                
                if self.pageListFilterMyPagesArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.pageListFilterMyPagesArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.pageListFilterMyPagesArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }
            }else{
                dict = self.pageListMyPagesArr[indexPath.row]
                
                if self.pageListMyPagesArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.pageListMyPagesArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.pageListMyPagesArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }
            }
            
        }else if indexPath.section == 2{
            
            if self.isSearchPostPageData == true{
                dict = self.pageListFilterBookamrkArr[indexPath.row]
                
                if self.pageListFilterBookamrkArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.pageListFilterBookamrkArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.pageListFilterBookamrkArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }
            }else{
                dict = self.pageListBookmarkArr[indexPath.row]
                
                if self.pageListBookmarkArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.pageListBookmarkArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.pageListBookmarkArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }
            }
            
        }else{
            
            if self.isSearchPostPageData == true{
                dict = self.pageListFilterAllArr[indexPath.row]
                
                if self.pageListFilterAllArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.pageListFilterAllArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.pageListFilterAllArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }
            }else{
                dict = self.pageListAllArr[indexPath.row]
                
                if self.pageListAllArr.count == 2{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }
                }else if self.pageListAllArr.count == 1{
                    cell.subviewBackgroundImageView.image = UIImage(named: "")
                    cell.subviewBackgroundImageView.backgroundColor = .white
                    cell.subviewBackgroundImageView.layer.cornerRadius = 15.0
                }else{
                    if indexPath.row == 0{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostTop")
                    }else if indexPath.row == self.pageListAllArr.count - 1{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostBottom")
                    }else{
                        cell.subviewBackgroundImageView.image = UIImage(named: "sharePostCenter")
                    }
                }
            }
        }
        
        if let name = dict?.PageName, name.count != 0{
            cell.titleLable.text = name
        }
        
        if let pId = dict?.PageNameID, pId.count != 0{
            cell.usernameLable.text = pId
        }
        
        if self.selctedPageIDArr.contains(dict!.pageId!)
        {
            cell.checkImageView.image = UIImage(named: "icon_sharePostSelectPage_1x")
            cell.Checkview.backgroundColor = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        }
        else
        {
            cell.checkImageView.image = UIImage(named: "")
            cell.Checkview.backgroundColor = .clear
        }
        
        
        if let pageImage = dict?.PagethumbnilURLOne, pageImage.count != 0{
            cell.userImage.kf.indicatorType = .activity
            cell.userImage.kf.setImage(with: URL(string: pageImage))
        }else{
            cell.userImage.image = UIImage(named: "postImage")
        }
        
        cell.selectCheckButton.indexPath = indexPath
        cell.selectCheckButton.addTarget(self, action: #selector(self.selectPage), for: .touchUpInside)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68
    }
}

extension sharePostScreen{
    
    func getUserOwnAndBookmarkPageList(sender: String){
        
//        var tempPageListArr = [PageList]()
        
        FirebaseClient.sharedInstance.getUserOwnAndBookMarksPageList(userId: sender) { (doc) in
            if doc is[QueryDocumentSnapshot]{
                
                self.pageListAllArr.removeAll()
                self.pageListMyPagesArr.removeAll()
                self.pageListRecentPagesArr.removeAll()
                
                if let queryData = doc as? [QueryDocumentSnapshot], queryData.count != 0{
                    
                    if let usr = FirebaseClient.sharedInstance.firebaseCurrentUser{
                        
                        var myPageArr = [String]()
                        var BookmarkPageArr = [String]()
                        
                        if let arr = usr.mypages, arr.count != 0{
                            myPageArr = arr
                        }
                        
                        if usr.ALLpages.count != 0{
                            BookmarkPageArr = usr.ALLpages
                        }
                        
                        
                        for document in queryData {
                            print("\(document.documentID) => \(document.data())")
                            
                            let pge = PageList(pageMainID: document.documentID, dictionary: document.data())
                            
                            if myPageArr.contains(pge.pageId!){
                                self.pageListMyPagesArr.append(pge)
                            }else if BookmarkPageArr.contains(pge.pageId!){
                                self.pageListBookmarkArr.append(pge)
                            }
                            
                            
                            if self.DefaultRecentArr.contains(pge.pageId!){
                                self.pageListRecentPagesArr.append(pge)
                            }
                            
                            self.pageListAllArr.append(pge)
                            //                                tempPageListArr.append(pge)
                        }
                    }
                    
                    self.tableviewSharePost.reloadData()
                }
                else{
                    self.tableviewSharePost.reloadData()
                }
            }
        }
    }
    
    @objc func uploadSharePostImage(){
        
        let image = self.postImage
        guard let uploadData = image.jpegData(compressionQuality: 0.5) else { return }
        
        SVProgressHUD.show()
        let filename = NSUUID().uuidString
        let deviceID = UIDevice.current.identifierForVendor!.uuidString
        print(deviceID)
        
        let storageRef = Storage.storage().reference().child("pages").child(deviceID).child("posts").child(filename)
        storageRef.putData(uploadData, metadata: nil) { (metadata, err) in
            
            if let err = err {
                self.navigationItem.rightBarButtonItem?.isEnabled = true
                SVProgressHUD.dismiss()
                self.shareButton.isEnabled = true
                print("Failed to upload post image:", err)
                return
            }
            
            storageRef.downloadURL(completion: { (downloadURL, err) in
                if let err = err {
                    SVProgressHUD.dismiss()
                    self.shareButton.isEnabled = true
                    print("Failed to retrieve downloadURL:", err)
                    return
                }
                
                guard let imageUrl = downloadURL?.absoluteString else { return }
                SVProgressHUD.dismiss()
                print("Successfully uploaded post image:", imageUrl)
                self.uploadedImageURl = imageUrl
                self.sharePost(uniqueTime: ApiUtillity.sharedInstance.GetCurrentDateAndTimeWithOutSpecialChar() + FirebaseClient.sharedInstance.firebaseCurrentUser!.userID)
            })
        }
    }
    
    func sharePost(uniqueTime: String){
        
        var ref: DocumentReference? = nil
        SVProgressHUD.show()
        
        var params = [String: Any]()
        
        guard let usr = FirebaseClient.sharedInstance.firebaseCurrentUser else {
            SVProgressHUD.dismiss()
            return
        }
        
        
        if self.selctedPageIDArr.count != 0{
           
            if self.sharePostCount < self.selctedPageIDArr.count{
                params = [
                    "postCreatedUserID": usr.userID,
                    "postCreatedUserName": usr.UserName!,
                    "postCreatedUserFullName": usr.FullName!,
                    "postCreatedUserProfilePicture": usr.ProfilePicture!,
                    "postedImageURl": self.uploadedImageURl,
                    "creationDate": Date().timeIntervalSince1970,
                    "caption": self.caption,
                    "postedPagesId": self.selctedPageIDArr[self.sharePostCount],
                    "postedPagesName": self.selctedPageNameArr[self.sharePostCount],
                    "postedPageNameID": self.selctedPageNameIDArr[self.sharePostCount],
                    "postedPagesImageURL": self.selctedPageImageArr[self.sharePostCount],
                    "PostUniqueID": uniqueTime,
                    "PictoID": usr.pictoID!
                ]

                if DefaultRecentArr.contains(self.selctedPageIDArr[self.sharePostCount]){
                
                }else{
                    DefaultRecentArr.append(self.selctedPageIDArr[self.sharePostCount])
                }
                
                Defaults[.RecentPostedPagesID] = DefaultRecentArr
                
                ref = Firestore.firestore().collection("Posts").document()
                ref?.setData(params, completion: { (err) in
                    if let err = err {
                        SVProgressHUD.dismiss()
                        print("Error adding document: \(err)")
                    } else {
                        print("Document added with ID: \(ref!.documentID)")
                        SVProgressHUD.dismiss()
                        self.setsharePostIdInUserTable(postID: ref!.documentID, userID: usr.userID, pageID: self.selctedPageIDArr[self.sharePostCount], uniqueTime: uniqueTime)
                    }
                })
            }
            else{
                SVProgressHUD.dismiss()
                let vc = MainVC()
                isBackUserProfileScreen = 0
                isNavigateToLaunchVC = true
                self.navigationController?.pushViewController(vc, animated: false)
            }
        }
    }
    
    func setsharePostIdInUserTable(postID: String, userID: String, pageID: String, uniqueTime: String){
        
        var ref: DocumentReference? = nil
        SVProgressHUD.show()
        
        let para = [
            "myPostsID" : FieldValue.arrayUnion([postID])
        ]
        
        ref = Firestore.firestore().collection("users").document(userID)
        
        ref?.updateData(para, completion: { (err) in
            if let err = err {
                SVProgressHUD.dismiss()
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
                SVProgressHUD.dismiss()
                self.setsharePostIdInPagesTable(postID: postID, pageID: pageID, uniqueTime: uniqueTime)
            }
        })
    }
    
    func setsharePostIdInPagesTable(postID: String, pageID: String, uniqueTime: String){
        
        var ref: DocumentReference? = nil
        SVProgressHUD.show()
        
        let para = [
            "PostsID" : FieldValue.arrayUnion([postID])
        ]
        
        ref = Firestore.firestore().collection("Pages").document(pageID)
        
        ref?.updateData(para, completion: { (err) in
            if let err = err {
                SVProgressHUD.dismiss()
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
                SVProgressHUD.dismiss()
                
                self.sharePostCount = self.sharePostCount + 1
                self.sharePost(uniqueTime: uniqueTime)
            }
        })
    }
    
}
