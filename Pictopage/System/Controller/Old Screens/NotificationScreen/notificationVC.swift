//
//  notificationVC.swift
//  Pictopage
//
//  Created by Grewon on 21/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class notificationVC: UIViewController {
    
    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerBackgroundImage: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "headerBackgroundWithShedow")
        logoimg.contentMode = UIView.ContentMode.scaleToFill
        return logoimg
    }()
    
    let createPageLogoImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "notificationTitleLogo")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let settingButtonView: UIView = {
        let v = UIView()
        return v
    }()
    
    let settingButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "settingIcon")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let settingButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let NotificationButtonMainView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let ovalImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "Oval_white")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let NotificationButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "notificationIcon1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let notificationButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    var  tableviewNotification: UITableView = {
        var tableview = UITableView()
        tableview.backgroundColor = .clear
        return tableview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: -7, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 77)
        
        self.headerView.addSubview(self.headerBackgroundImage)
        self.headerBackgroundImage.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -7, paddingRight: 0, width: 0, height: 0)
        
        self.headerView.addSubview(self.createPageLogoImageview)
        self.createPageLogoImageview.anchor(top: nil, left: nil, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 5, paddingRight: 0, width: 173, height: 41)
        self.createPageLogoImageview.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor).isActive = true
        
        self.headerView.addSubview(self.settingButtonView)
        self.settingButtonView.anchor(top: nil, left: nil, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 5, paddingRight: 0, width: 41, height: 41)
        
        self.settingButtonView.addSubview(self.settingButtonImageView)
        self.settingButtonImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 22, height: 22)
        self.settingButtonImageView.centerXAnchor.constraint(equalTo: self.settingButtonView.centerXAnchor).isActive = true
        self.settingButtonImageView.centerYAnchor.constraint(equalTo: self.settingButtonView.centerYAnchor).isActive = true

        self.settingButtonView.addSubview(self.settingButton)
        self.settingButton.anchor(top: self.settingButtonView.topAnchor, left: self.settingButtonView.leftAnchor, bottom: self.settingButtonView.bottomAnchor, right: self.settingButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.settingButton.addTarget(self, action: #selector(self.click_setting), for: .touchUpInside)
        
        // setup Tableview
        
        self.view.addSubview(self.tableviewNotification)
        self.tableviewNotification.anchor(top: self.headerView.bottomAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        
        
        // back button view
        
        self.view.addSubview(self.NotificationButtonMainView)
        self.NotificationButtonMainView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0.0, paddingLeft: -8, paddingBottom: -8, paddingRight: 0, width: 70, height: 70)
        
        self.NotificationButtonMainView.addSubview(self.ovalImageview)
        self.ovalImageview.anchor(top: self.NotificationButtonMainView.topAnchor, left: self.NotificationButtonMainView.leftAnchor, bottom: self.NotificationButtonMainView.bottomAnchor, right: self.NotificationButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.NotificationButtonMainView.addSubview(self.NotificationButtonImageview)
        self.NotificationButtonImageview.anchor(top: nil, left: self.NotificationButtonMainView.leftAnchor, bottom: self.NotificationButtonMainView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: 22, paddingRight: 0, width: 22, height: 22)
        
        self.NotificationButtonMainView.addSubview(self.notificationButton)
        self.notificationButton.anchor(top: self.NotificationButtonMainView.topAnchor, left: self.NotificationButtonMainView.leftAnchor, bottom: self.NotificationButtonMainView.bottomAnchor, right: self.NotificationButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.notificationButton.addTarget(self, action: #selector(self.click_notification), for: .touchUpInside)
        
        self.setUpTableview()
    }
    

    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        tableviewNotification.register(notification_likePostCell.self, forCellReuseIdentifier: "notification_likePostCell")
        tableviewNotification.register(Notification_addedCell.self, forCellReuseIdentifier: "Notification_addedCell")
        tableviewNotification.dataSource = self
        tableviewNotification.delegate = self
        tableviewNotification.tableFooterView = UIView()
        tableviewNotification.separatorStyle = .none
        self.tableviewNotification.showsVerticalScrollIndicator = false
        
    }
    
    // MARK:- Button Action
    
    @objc func click_setting()
    {
        let vc = settingVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func click_notification()
    {
        self.navigationController?.popViewController(animated: true)
    }

}

extension notificationVC: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 1
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_addedCell", for: indexPath) as! Notification_addedCell
            cell.selectionStyle = .none
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "notification_likePostCell", for: indexPath) as! notification_likePostCell
            cell.selectionStyle = .none
            if indexPath.row == 2
            {
                cell.imageviewWidthConstraint.constant = 50.0
            }
            else
            {
                cell.imageviewWidthConstraint.constant = 0.0
            }
            
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
