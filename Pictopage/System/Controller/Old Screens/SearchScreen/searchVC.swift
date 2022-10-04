//
//  searchVC.swift
//  Pictopage
//
//  Created by Grewon on 27/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

var searchUserArr = [userData]()
var searchPageListAllArr = [PageList]()
var searchAllDataArr = [Any]()
var searchFilterUserArr = [userData]()
var searchFilterPageListAllArr = [PageList]()
var searchFilterAllDataArr = [Any]()

class searchVC: UIViewController {

    var superVC : searchCAPSController!
    static var catID:String = String()
    var tabBarHeight = CGFloat()
    
    static var isSearch = Bool()
    
    var  tableviewSearch: UITableView = {
        var tableview = UITableView()
        tableview.backgroundColor = .white
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.tableviewSearch)
        self.tableviewSearch.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.setUpTableview()
        
        self.getAllUserList()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.searchData), name: .searchData, object: nil)
    }
    

    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        self.tableviewSearch.register(search_cell.self, forCellReuseIdentifier: "search_cell")
        self.tableviewSearch.register(searchHeaderSection_cell.self, forCellReuseIdentifier: "searchHeaderSection_cell")
        self.tableviewSearch.dataSource = self
        self.tableviewSearch.delegate = self
        self.tableviewSearch.tableFooterView = UIView()
        self.tableviewSearch.separatorStyle = .none
        self.tableviewSearch.showsVerticalScrollIndicator = false
    }
    
    
    // MARK:- Button Action
    
    @objc func click_userProfile()
    {
        let vc = viewUserProfileVC()
        superVC.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func click_close()
    {
        print("click cell close")
    }
    
    // MARK:- SearchData
    
    
    @objc func searchData(){
        self.tableviewSearch.reloadData()
    }

}

extension searchVC: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searchVC.catID == "2"
        {
            if searchVC.isSearch == true{
                return searchFilterPageListAllArr.count
            }else{
                return searchPageListAllArr.count
            }
            
        }
        else if searchVC.catID == "1"
        {
            if searchVC.isSearch == true{
                return searchFilterUserArr.count
            }else{
                return searchUserArr.count
            }
            
        }
        else
        {
            if searchVC.isSearch == true{
                return searchFilterAllDataArr.count
            }else{
                return searchAllDataArr.count
            }
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if searchVC.catID == "2" || searchVC.catID == "2"
        {
            return UIView()
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "searchHeaderSection_cell") as! searchHeaderSection_cell
            cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if searchVC.catID == "2" || searchVC.catID == "2"
        {
            return 0
        }
        else
        {
            return 35
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "search_cell", for: indexPath) as! search_cell
        cell.selectionStyle = .none
        cell.contentView.isHidden = true
        
        
        if searchVC.catID == "2"{
            
            
            let dict: PageList?
            
            if searchVC.isSearch == true{
                dict = searchFilterPageListAllArr[indexPath.row]
            }else{
                dict = searchPageListAllArr[indexPath.row]
            }
            
            if let pagename = dict?.PageName, pagename.count != 0{
                cell.titleLable.text = pagename
            }
            
            if let pid = dict?.PageNameID, pid.count != 0{
                cell.usernameLable.text = pid
            }
            
            if let image = dict?.PagethumbnilURLOne, image.count != 0
            {
                cell.userImage.kf.indicatorType = .activity
                cell.userImage.kf.setImage(with: URL(string: image))
            }
            
            
        }else if searchVC.catID == "1"{
            
            let dict: userData?
            
            if searchVC.isSearch == true{
                dict = searchFilterUserArr[indexPath.row]
            }else{
                dict = searchUserArr[indexPath.row]
            }
          
            if let fname = dict?.FullName, fname.count != 0{
                cell.titleLable.text = fname
            }else{
                cell.titleLable.text = ""
            }
            
            if let uname = dict?.UserName, uname.count != 0{
                cell.usernameLable.text = uname
            }
            
            if let image = dict?.ProfilePicture, image.count != 0
            {
                cell.userImage.kf.indicatorType = .activity
                cell.userImage.kf.setImage(with: URL(string: image))
            }
            
        }else{
            let dict: Any?
            
            if searchVC.isSearch == true{
                dict = searchFilterAllDataArr[indexPath.item]
            }else{
                dict = searchAllDataArr[indexPath.item]
            }
            
            if dict is userData
            {
                let item = dict as! userData
                
                if let fname = item.FullName, fname.count != 0{
                    cell.titleLable.text = fname
                }else{
                    cell.titleLable.text = ""
                }
                
                if let uname = item.UserName, uname.count != 0{
                    cell.usernameLable.text = uname
                }
                
                if let image = item.ProfilePicture, image.count != 0
                {
                    cell.userImage.kf.indicatorType = .activity
                    cell.userImage.kf.setImage(with: URL(string: image))
                }
            }
            else
            {
                if dict is PageList
                {
                    let item = dict as! PageList
                    if let pagename = item.PageName, pagename.count != 0{
                        cell.titleLable.text = pagename
                    }
                    
                    if let pid = item.PageNameID, pid.count != 0{
                        cell.usernameLable.text = pid
                    }
                    
                    if let image = item.PagethumbnilURLOne, image.count != 0
                    {
                        cell.userImage.kf.indicatorType = .activity
                        cell.userImage.kf.setImage(with: URL(string: image))
                    }
                }
            }
        }
        
        cell.userImageButton.addTarget(self, action: #selector(self.click_userProfile), for: .touchUpInside)
        cell.closeButton.addTarget(self, action: #selector(self.click_close), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

extension searchVC{
    
    func getAllUserList(){
        
        FirebaseClient.sharedInstance.getAllUserData { (userDocument) in
            let data = userDocument as! [QueryDocumentSnapshot]
            
            searchUserArr.removeAll()
            searchAllDataArr.removeAll()
            
            for document in data{                
                let user = userData(uID: document.documentID, dictionary: document.data())
                searchUserArr.append(user)
                searchAllDataArr.append(user)
            }
            
            searchUserArr.sort(by: { (u1, u2) -> Bool in
                return u1.UserName!.compare(u2.UserName!) == .orderedAscending
            })
            
            self.getAllPages()
            self.tableviewSearch.reloadData()
        }
    }
    
    func getAllPages(){
        
        FirebaseClient.sharedInstance.getAllPageList(completionSuccess: { (pageData) in
            let data = pageData as! [QueryDocumentSnapshot]
            
            searchPageListAllArr.removeAll()
            
            for document in data{
                let page = PageList(pageMainID: document.documentID, dictionary: document.data())
                searchPageListAllArr.append(page)
                searchAllDataArr.append(page)
            }
            
            searchPageListAllArr.sort(by: { (u1, u2) -> Bool in
                return u1.PageName!.compare(u2.PageName!) == .orderedAscending
            })
            
            self.tableviewSearch.reloadData()
        }) { (error) in
            self.tableviewSearch.reloadData()
        }
    }
    
}
