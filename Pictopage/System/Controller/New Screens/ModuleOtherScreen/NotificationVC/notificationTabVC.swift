//
//  notificationTabVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 14/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit


class notificationTabVC: UIViewController {

    let mainView: UIView = {
         let logov = UIView()
         logov.backgroundColor = .white
         return logov
     }()
    
    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let titleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Notifications"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DownArrowView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let DownArrowImageview: UIImageView = {
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
    
    var tab_Width:CGFloat = UIScreen.main.bounds.size.width/3
    var tabArray:NSArray = NSArray()
    var pageMenu : CAPSPageMenu?
    var lineview = UIView()
    
    var headerViewHeightConstraint = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.mainView)
        self.mainView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.headerViewHeightConstraint = self.headerView.heightAnchor.constraint(equalToConstant: 68.0)
        self.headerViewHeightConstraint.isActive = true
        
        self.headerView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 32, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        
        self.headerView.addSubview(self.DownArrowView)
        self.DownArrowView.anchor(top: self.headerView.topAnchor, left: nil, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 68, height: 68)
        
        self.DownArrowView.addSubview(self.DownArrowImageview)
        self.DownArrowImageview.anchor(top: self.DownArrowView.topAnchor, left: nil, bottom: nil, right: self.DownArrowView.rightAnchor, paddingTop: 39, paddingLeft: 0, paddingBottom: 0, paddingRight: 22, width: 17, height: 10)
        
        self.DownArrowView.addSubview(self.DownArrowButton)
        self.DownArrowButton.anchor(top: self.DownArrowView.topAnchor, left: self.DownArrowView.leftAnchor, bottom: self.DownArrowView.bottomAnchor, right: self.DownArrowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.DownArrowButton.addTarget(self, action: #selector(self.click_downArrow), for: .touchUpInside)
        
        self.pagemenuSetup()
    }
    

    // MARK:- Action
    
    @objc func click_downArrow(){
        self.navigationController?.popViewController(animated: true)
    }

}

extension notificationTabVC: CAPSPageMenuDelegate{
    
    func pagemenuSetup() {
        
        let VC1 = notificationVC()
        VC1.title = "All"
        VC1.tabBarHeight = self.headerViewHeightConstraint.constant
        notificationVC.notificationcatID = "0"
        VC1.superVC = self
        
        let VC2 = notificationVC()
        VC2.title = "People"
        VC2.tabBarHeight = self.headerViewHeightConstraint.constant
        notificationVC.notificationcatID = "1"
        VC2.superVC = self
        
        let VC3 = notificationVC()
        VC3.title = "Page"
        VC3.tabBarHeight = self.headerViewHeightConstraint.constant
        notificationVC.notificationcatID = "2"
        VC3.superVC = self
        
        let VC4 = notificationVC()
        VC4.title = "App"
        VC4.tabBarHeight = self.headerViewHeightConstraint.constant
        notificationVC.notificationcatID = "3"
        VC4.superVC = self
        
        let controllerArray = [VC1, VC2, VC3, VC4]
        
        let width = CGFloat(UIScreen.main.bounds.width) / CGFloat(controllerArray.count)
        let parameters = [CAPSPageMenuOptionScrollMenuBackgroundColor: UIColor.white,
                          CAPSPageMenuOptionViewBackgroundColor: UIColor.white,
                          CAPSPageMenuOptionSelectionIndicatorColor: UIColor.black,
                          CAPSPageMenuOptionSelectedMenuItemLabelColor: UIColor.black,
                          CAPSPageMenuOptionUnselectedMenuItemLabelColor: UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.50),
                          CAPSPageMenuOptionMenuItemFont: UIFont(name: "HelveticaNeue-Medium", size: 15.0)!,
                          CAPSPageMenuOptionMenuHeight: 30.0,
                          CAPSPageMenuOptionMenuItemWidth: (width),
                          CAPSPageMenuOptionCenterMenuItems: true] as [AnyHashable : Any]
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: self.headerViewHeightConstraint.constant, width: view.frame.size.width, height: view.frame.size.height-64), options: parameters)
        pageMenu?.delegate = self
        pageMenu?.move(toPage: 0)
        searchVC.catID = "\(0)"
        self.view.addSubview((pageMenu?.view)!)
        self.lineview = UIView(frame: CGRect(x: 0.0, y: 30 + self.headerViewHeightConstraint.constant, width: view.frame.size.width, height: 1.0))
        self.lineview.backgroundColor = UIColor.lightGray
        self.view.addSubview(self.lineview)
    }
    
    func willMove(toPage controller: UIViewController!, index: Int) {
        print(index)
        notificationVC.notificationcatID = "\(index)"
    }
    
    func didMove(toPage controller: UIViewController!, index: Int) {
        notificationVC.notificationcatID = "\(index)"
    }
}
