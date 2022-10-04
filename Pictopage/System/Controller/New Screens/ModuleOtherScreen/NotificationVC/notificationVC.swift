//
//  notificationVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 14/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class notificationVC: UIViewController {

    var superVC : notificationTabVC!
    static var notificationcatID:String = String()
    var tabBarHeight = CGFloat()
    
    
    var  tableviewNotification: UITableView = {
        var tableview = UITableView()
        tableview = UITableView(frame: CGRect.zero, style: UITableView.Style.grouped)
        tableview.backgroundColor = .clear
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.view.addSubview(self.tableviewNotification)
        self.tableviewNotification.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.setUpTableview()
    }
    

    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        self.tableviewNotification.register(notification_allScetionData_cell.self, forCellReuseIdentifier: "notification_allScetionData_cell")
        self.tableviewNotification.register(notification_allSectionHeader_cell.self, forCellReuseIdentifier: "notification_allSectionHeader_cell")
        self.tableviewNotification.dataSource = self
        self.tableviewNotification.delegate = self
        self.tableviewNotification.tableFooterView = UIView()
        self.tableviewNotification.separatorStyle = .none
        self.tableviewNotification.showsVerticalScrollIndicator = false
    }
}


extension notificationVC: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "notification_allSectionHeader_cell") as! notification_allSectionHeader_cell
        if section == 0{
            cell.titleLable.text = "Today"
        }else{
            cell.titleLable.text = "Month ##, ####"
        }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 0))
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notification_allScetionData_cell", for: indexPath) as! notification_allScetionData_cell
        
        if indexPath.section == 0{
            cell.postIconWidthConstraint.constant = 35.0
            cell.commentedUserIconWidthConstraint.constant = 44.0
            
            cell.TimeLable.text = "#m ago"
        }else{
            cell.postIconWidthConstraint.constant = 0.0
            cell.commentedUserIconWidthConstraint.constant = 0.0
            
            cell.TimeLable.text = "Yesterday, #:## AM"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 99
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 99
    }
    
}
