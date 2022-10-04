//
//  NotificationVC.swift
//  Pictopage
//
//  Created by Darshit on 09/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class NotificationVC: UIViewController {
    
    //header view
    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerTitleLbl : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Notifications"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let backButtonView: UIView = {
        let v = UIView()
        return v
    }()
    
    let backButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "backBlack_1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(click_back), for: .touchUpInside)
        return btn
    }()
    
    //Notification tableview
    let notificationTblView: UITableView = {
        var tableview = UITableView()
        tableview = UITableView(frame: CGRect.zero, style: .plain)
        tableview.backgroundColor = .clear
        tableview.separatorStyle = .none
        tableview.showsVerticalScrollIndicator = false
        tableview.showsHorizontalScrollIndicator = false
        return tableview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        // setup Header view
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 54)

        self.headerView.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 54)
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: nil, right: nil, paddingTop: 34, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 11, height: 18)
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.fillSuperview()
        
        self.headerView.addSubview(self.headerTitleLbl)
        self.headerTitleLbl.anchor(top: self.headerView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 33, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        self.headerTitleLbl.centerX(inView: self.headerView)
        
        self.backButtonImageView.centerY(inView: self.headerTitleLbl)
        
        //notification table view
        self.view.addSubview(self.notificationTblView)
        self.notificationTblView.anchor(top: self.headerView.bottomAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        setupTableView()

    }
    
    // MARK:- Button Action
    @objc func click_back() {
        self.navigationController?.popViewController(animated: true)
    }
}

//MARK:- Helpers
extension NotificationVC {
    private func setupTableView() {
        self.notificationTblView.register(NotificationsCell.self, forCellReuseIdentifier: NotificationsCell.cellID)
        self.notificationTblView.dataSource = self
        self.notificationTblView.delegate = self
        self.notificationTblView.tableFooterView = UIView()
    }
}

// MARK:- Tableview Methods
extension NotificationVC: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NotificationsCell.cellID, for: indexPath) as! NotificationsCell
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700//UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700//UITableView.automaticDimension
    }
}
