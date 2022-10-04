//
//  PageSettingVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 02/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class PageSettingVC: UIViewController {

    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerDividerImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "bookmarkdivider1x")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
    let titleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Page Name"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DownArrowView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let downArrowImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "downArrowblack1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let DownArrowButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        return btn
    }()
    
    var  tableviewPageSetting: UITableView = {
        var tableview = UITableView()
        tableview.backgroundColor = .white
        return tableview
    }()
    
    var controller = UIViewController()
    var pageID = String()
    static var isDeletePage = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 46)
        
        self.headerView.addSubview(self.headerDividerImageview)
        self.headerDividerImageview.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        self.headerDividerImageview.isHidden = true
        
        self.headerView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 22)
        
        self.headerView.addSubview(self.DownArrowView)
        self.DownArrowView.anchor(top: self.headerView.topAnchor, left: nil, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 22, width: 46, height: 46)
        
        self.DownArrowView.addSubview(self.downArrowImageview)
        self.downArrowImageview.anchor(top: self.DownArrowView.topAnchor, left: nil, bottom: nil, right: self.DownArrowView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 17, height: 10)
        
        self.DownArrowView.addSubview(self.DownArrowButton)
        self.DownArrowButton.anchor(top: self.DownArrowView.topAnchor, left: self.DownArrowView.leftAnchor, bottom: self.DownArrowView.bottomAnchor, right: self.DownArrowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.DownArrowButton.addTarget(self, action: #selector(self.click_downArrow), for: .touchUpInside)
        // setup tableview
        
        self.view.addSubview(self.tableviewPageSetting)
        self.tableviewPageSetting.anchor(top: self.headerView.bottomAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.setUpTableview()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if PageSettingVC.isDeletePage{
            self.dismiss(animated: false, completion: nil)
        }
    }
    
    // MARk:- Action
    
    @objc func click_downArrow(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func click_deletePage(){
        let vc = deletePageVC()
        vc.pageID = self.pageID
        let transition = CATransition()
        transition.duration = 0.25
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        view.window!.layer.add(transition, forKey: kCATransition)
        self.present(vc, animated: false, completion: nil)
    }
    
    @objc func clickOnCell(sender: UIButton){
        if sender.tag == 0{
            let vc = editPageNameVC()
            vc.pageId = self.pageID
            let transition = CATransition()
            transition.duration = 0.25
            transition.type = CATransitionType.push
            transition.subtype = CATransitionSubtype.fromRight
            view.window!.layer.add(transition, forKey: kCATransition)
            self.present(vc, animated: false, completion: nil)
            
        }else{
            let vc = editPageDescriptionVC()
            vc.pageID = self.pageID
            let transition = CATransition()
            transition.duration = 0.25
            transition.type = CATransitionType.push
            transition.subtype = CATransitionSubtype.fromRight
            view.window!.layer.add(transition, forKey: kCATransition)
            self.present(vc, animated: false, completion: nil)
        }
    }
    
    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        self.tableviewPageSetting.register(pageSetting_sectionOne_cell.self, forCellReuseIdentifier: "pageSetting_sectionOne_cell")
        self.tableviewPageSetting.register(pageSetting_sectionTwo_cell.self, forCellReuseIdentifier: "pageSetting_sectionTwo_cell")
        self.tableviewPageSetting.register(pageSetting_sectionThree_cell.self, forCellReuseIdentifier: "pageSetting_sectionThree_cell")
        self.tableviewPageSetting.register(pageSetting_sectionFour_cell.self, forCellReuseIdentifier: "pageSetting_sectionFour_cell")
        self.tableviewPageSetting.register(pageSetting_sectionFive_Cell.self, forCellReuseIdentifier: "pageSetting_sectionFive_Cell")
        self.tableviewPageSetting.dataSource = self
        self.tableviewPageSetting.delegate = self
        self.tableviewPageSetting.tableFooterView = UIView()
        self.tableviewPageSetting.separatorStyle = .none
        self.tableviewPageSetting.backgroundColor = .white
        self.tableviewPageSetting.showsVerticalScrollIndicator = false
        self.tableviewPageSetting.separatorStyle = .none
        self.sheetViewController?.handleScrollView(self.tableviewPageSetting)
    }

    // MARK:- instantiate
    
    static func instantiate() -> PageSettingVC {
        return PageSettingVC()
    }

}

extension PageSettingVC: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else if section == 1{
            return 1
        }else if section == 2{
            return 1
        }else if section == 3{
            return 2
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "pageSetting_sectionTwo_cell", for: indexPath) as! pageSetting_sectionTwo_cell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            cell.pageSettingTitleLable.text = "Quick Control"
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "pageSetting_sectionOne_cell", for: indexPath) as! pageSetting_sectionOne_cell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
        }else if indexPath.section == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "pageSetting_sectionTwo_cell", for: indexPath) as! pageSetting_sectionTwo_cell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
        }else if indexPath.section == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "pageSetting_sectionThree_cell", for: indexPath) as! pageSetting_sectionThree_cell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            cell.contentView.isHidden = true
            
            if indexPath.row == 0{
                cell.pageSettingTitleLable.text = "Page Name"
            }else{
                cell.pageSettingTitleLable.text = "Page Description"
            }
            
            cell.tapButton.tag = indexPath.row
            cell.tapButton.addTarget(self, action: #selector(self.clickOnCell), for: .touchUpInside)
            
            return cell
        }else if indexPath.section == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "pageSetting_sectionFour_cell", for: indexPath) as! pageSetting_sectionFour_cell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            cell.contentView.isHidden = true
            
            cell.DeletePageButton.addTarget(self, action: #selector(click_deletePage), for: .touchUpInside)
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "pageSetting_sectionFive_Cell", for: indexPath) as! pageSetting_sectionFive_Cell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
        }
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 44
        }else if indexPath.section == 1{
            return 280
        }else if indexPath.section == 2{
            return 44
        }else if indexPath.section == 3{
            return 48
        }else if indexPath.section == 4{
            return 56
        }else{
            return 120
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 44
        }else if indexPath.section == 1{
            return 280
        }else if indexPath.section == 2{
            return 44
        }else if indexPath.section == 3{
            return 48
        }else if indexPath.section == 4{
            return 56
        }else{
            return 120
        }
    }
}

extension PageSettingVC: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)
        
        if scrollView.contentOffset.y > 0{
            self.headerDividerImageview.isHidden = false
        }else{
            self.headerDividerImageview.isHidden = true
        }
    }
}
