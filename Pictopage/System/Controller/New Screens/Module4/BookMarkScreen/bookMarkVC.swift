//
//  bookMarkVC.swift
//  Pictopage
//
//  Created by Grewon on 23/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import MatchTransition
import Firebase
import FirebaseFirestore
import FittedSheets

class bookMarkVC: UIViewController {

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
    
    
    var  tableviewBookmark: UITableView = {
        var tableview = UITableView()
        tableview.backgroundColor = .clear
        return tableview
    }()
    
   
    // MARK:- Veriable
    var manager = MatchTransitionManager()
    var tableviewTopConstraint = NSLayoutConstraint()
    
    var pageDataArr = [PageList]()
    
    var navView : NavigationView?
    
    // MARK:- ViweDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = whiteF9FAF9
        
        navView?.bookMarkClickDelegate = self
        
        // setup Tableview
        
        self.view.addSubview(self.tableviewBookmark)
        self.tableviewBookmark.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.tableviewTopConstraint = self.tableviewBookmark.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0)
        self.tableviewTopConstraint.isActive = true
        
        // setup header view
        
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.view.addSubview(self.headerView)
            self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 71)
            self.headerView.backgroundColor = .clear
        }else{
            self.view.addSubview(self.headerView)
            self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 88)
            self.headerView.backgroundColor = .clear
        }
        
            // header background image
            self.headerView.addSubview(self.headerImageview)
            self.headerImageview.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // Setup Tableview
        self.setUpTableview()
        
        if #available(iOS 11, *) {
            self.tableviewBookmark.contentInsetAdjustmentBehavior = .never
        }
        
//        self.transitionManager = MatchTransitionManager()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("-------call data-------")
        self.getAllPages()
    }
    
    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        self.tableviewBookmark.register(bookmark_cell.self, forCellReuseIdentifier: "bookmark_cell")
        self.tableviewBookmark.register(bookmarkHeader_cell.self, forCellReuseIdentifier: "bookmarkHeader_cell")
        self.tableviewBookmark.dataSource = self
        self.tableviewBookmark.delegate = self
        self.tableviewBookmark.tableFooterView = UIView()
        self.tableviewBookmark.separatorStyle = .none
        self.tableviewBookmark.backgroundColor = .clear
        self.tableviewBookmark.showsVerticalScrollIndicator = false
    }
   
    
    // MARK: - Present Card Details
    private func presentDetailsForCard(at indexPath: IndexPath) {
        
        
        let vc = searchCAPSController()
        
        let matches: [Match] = [
            Match(tag: "container", from: view, to: vc.view)
        ]
        manager.setupTransition(from: self, to: vc, with: matches, transitionType: .push)
        navigationController?.pushViewController(vc, animated: true)        
    }

}


extension bookMarkVC : bookmarkScreenDelegateMethod{
    
    func click_bookmarkSearch() {
//        let vc = searchCAPSController()
//        vc.modalPresentationStyle = .custom
//        self.navigationController?.pushViewController(vc, animated: true)
        let controller = searchCAPSController()
//        controller.modalPresentationStyle = .custom
//        self.present(controller, animated: true, completion: nil)
        isBackUserProfileScreen = 3
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func click_createPage() {
        print("click create page")
        let vc = newCreatePageNameVC()
        isBackUserProfileScreen = 3
        self.navigationController?.pushViewController(vc, animated: true)
       
    }
    
    func click_notification() {
        let vc = notificationTabVC()
        isBackUserProfileScreen = 3
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}


extension bookMarkVC: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pageDataArr.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookmarkHeader_cell") as! bookmarkHeader_cell
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookmark_cell", for: indexPath) as! bookmark_cell
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        
        let dict = self.pageDataArr[indexPath.row]
        
        if let name = dict.PageName, name.count != 0{
            cell.TitleLable.text = name
        }
        
        if let pageImage = dict.PagethumbnilURLOne, pageImage.count != 0{
            cell.userImage.kf.indicatorType = .activity
            cell.userImage.kf.setImage(with: URL(string: pageImage))
        }
        
        if let u_name = dict.pageCreatedUserFullName, u_name.count != 0{
            
            let dt = dict.pageCreationDate
            
            let myString = "\(ApiUtillity.sharedInstance.timeAgoSinceDate(date: dt, numericDates: false)) from "
            cell.timeLable.attributedText = ApiUtillity.sharedInstance.attributedString(from: "\(ApiUtillity.sharedInstance.timeAgoSinceDate(date: dt, numericDates: false)) from \(u_name)", nonBoldRange: NSMakeRange(0, myString.count), font1: UIFont(name: "HelveticaNeue-Medium", size: 12.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 12.0)!)
        }
        
        if let pictoID = dict.pictoID, pictoID.count != 0{
            cell.IDLable.text = "by \(pictoID)"
        }
        
        if dict.pagePostsArr.count != 0{
            cell.newPostLable.isHidden = false
            cell.blueDotview.isHidden = false
            cell.newPostLable.text = "\(dict.pagePostsArr.count) new post"
        }else{
            cell.newPostLable.isHidden = true
            cell.blueDotview.isHidden = true
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let dst = newPageDetailsVC()
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .push
        transition.subtype = .fromLeft
        isBackUserProfileScreen = 3
        let dict = self.pageDataArr[indexPath.row]
        if let p_id = dict.pageId, p_id.count != 0{
            dst.pageID = p_id
        }
        navigationController?.view.layer.add(transition, forKey: kCATransition)
        navigationController?.pushViewController(dst, animated: false)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68
    }
}

extension bookMarkVC: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if operation == .push {
            return manager.transition(for: .presenting)
        }
        navigationController.delegate = nil
        return nil
    }
}

extension bookMarkVC: UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
     
//        if scrollView.contentOffset.y > 20{
//            UIView.animate(withDuration: 0.5, animations: {
//                self.addOval.backgroundColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 0)
//                self.notificationOval.backgroundColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 0)
//                self.searchView.backgroundColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 0)
//            })
//            self.searchiconImageview.changeImageColor(color: UIColor.black)
//            self.searchtextLable.textColor = UIColor.black
//        }
//        else{
//            UIView.animate(withDuration: 0.5, animations: {
//                self.addOval.backgroundColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
//                self.notificationOval.backgroundColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
//                self.searchView.backgroundColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
//            })
//            self.searchiconImageview.changeImageColor(color: UIColor(red: 142.0/255.0, green: 142.0/255.0, blue: 147.0/255.0, alpha: 1.0))
//            self.searchtextLable.textColor = UIColor(red: 142.0/255.0, green: 142.0/255.0, blue: 147.0/255.0, alpha: 1.0)
//        }
        
    }
}


extension bookMarkVC{
    
    
    func getAllPages(){
        
        FirebaseClient.sharedInstance.getAllPageList(completionSuccess: { (pageData) in
            let data = pageData as! [QueryDocumentSnapshot]
            
            self.pageDataArr.removeAll()
            
            for document in data{
                let page = PageList(pageMainID: document.documentID, dictionary: document.data())
                self.pageDataArr.append(page)
            }
            
            self.pageDataArr.sort(by: { (u1, u2) -> Bool in
                return u1.pageCreationDate.compare(u2.pageCreationDate) == .orderedAscending
            })
            
            self.tableviewBookmark.reloadData()
        }) { (error) in
            self.tableviewBookmark.reloadData()
        }
    }
    
    
}

extension bookMarkVC: changeBookmarkControllerDelegate{
    func changeBookmarkController() {
        print("change bookmark Controller")
        self.getAllPages()
    }
    
}
