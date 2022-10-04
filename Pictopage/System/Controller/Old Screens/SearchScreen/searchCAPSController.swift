//
//  searchCAPSController.swift
//  Pictopage
//
//  Created by Grewon on 27/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class searchCAPSController: UIViewController, CAPSPageMenuDelegate {

    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let subView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let closeView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let closeImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "close_black")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let closeButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let searchView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let searchtextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        txt.autocorrectionType = .no
        txt.attributedPlaceholder = NSAttributedString(string: "Search",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 142.0/255.0, green: 142.0/255.0, blue: 147.0/255.0, alpha: 1.0)])
        return txt
    }()
    
    var tab_Width:CGFloat = UIScreen.main.bounds.size.width/3
    var tabArray:NSArray = NSArray()
    var pageMenu : CAPSPageMenu?
    var lineview = UIView()
    
    var headerViewHeightConstraint = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.headerViewHeightConstraint = self.headerView.heightAnchor.constraint(equalToConstant: 74.0)
        self.headerViewHeightConstraint.isActive = true
        
        self.headerView.addSubview(self.subView)
        self.subView.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 40)
        
        self.subView.addSubview(self.closeView)
        self.closeView.anchor(top: nil, left: self.subView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        
        self.closeView.addSubview(self.closeImageview)
        self.closeImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 20, height: 20)
        self.closeImageview.centerYAnchor.constraint(equalTo: self.closeView.centerYAnchor).isActive = true
        self.closeImageview.centerXAnchor.constraint(equalTo: self.closeView.centerXAnchor).isActive = true
        
        self.closeView.addSubview(self.closeButton)
        self.closeButton.anchor(top: self.closeView.topAnchor, left: self.closeView.leftAnchor, bottom: self.closeView.bottomAnchor, right: self.closeView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.closeButton.addTarget(self, action: #selector(self.click_close), for: .touchUpInside)
        
        self.subView.addSubview(self.searchView)
        self.searchView.anchor(top: nil, left: self.closeView.rightAnchor, bottom: nil, right: self.subView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 40, width: 0, height: 40)
        
        self.searchView.addSubview(self.searchtextField)
        self.searchtextField.anchor(top: self.searchView.topAnchor, left: self.searchView.leftAnchor, bottom: self.searchView.bottomAnchor, right: self.searchView.rightAnchor, paddingTop: 0, paddingLeft: 11, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.searchtextField.delegate = self
        self.pagemenuSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.addSearchObserver()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: UITextField.textDidChangeNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: .searchData, object: nil)
    }
    
    // MARK:- Button Action
    
    @objc func click_close()
    {
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
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
            
            searchVC.isSearch = false
            
            if searchVC.catID == "0"
            {
                searchFilterAllDataArr = searchAllDataArr
                NotificationCenter.default.post(name: .searchData, object: nil)
            }
            else if searchVC.catID == "1"
            {
                searchFilterUserArr = searchUserArr
                NotificationCenter.default.post(name: .searchData, object: nil)
            }
            else if searchVC.catID == "2"
            {
                searchFilterPageListAllArr = searchPageListAllArr
                NotificationCenter.default.post(name: .searchData, object: nil)
            }
        } else {
            
            searchVC.isSearch = true
            
            if searchVC.catID == "0"
            {
                searchFilterAllDataArr = searchAllDataArr.filter { (data) -> Bool in
                    
                    if data is userData
                    {
                        let m = data as! userData
                        return m.UserName!.lowercased().contains(searchStaring.lowercased())
                    }
                    else
                    {
                        let page = data as! PageList
                        return page.PageName!.lowercased().contains(searchStaring.lowercased())
                    }
                }
                NotificationCenter.default.post(name: .searchData, object: nil)
            }
            else if searchVC.catID == "1"
            {
                searchFilterUserArr = searchUserArr.filter { (user) -> Bool in
                    return user.UserName!.lowercased().contains(searchStaring.lowercased())
                }
                NotificationCenter.default.post(name: .searchData, object: nil)
            }
            else if searchVC.catID == "2"
            {
                searchFilterPageListAllArr = searchPageListAllArr.filter { (page) -> Bool in
                    return page.PageName!.lowercased().contains(searchStaring.lowercased())
                }
                NotificationCenter.default.post(name: .searchData, object: nil)
            }
        }
    }
    
    // MARK:- PAGEMenu Funcation
    
    func pagemenuSetup() {
        
        let VC1 = searchVC()
        VC1.title = "All"
        VC1.tabBarHeight = self.headerViewHeightConstraint.constant
        searchVC.catID = "0"
        VC1.superVC = self
        
        let VC2 = searchVC()
        VC2.title = "Users"
        VC2.tabBarHeight = self.headerViewHeightConstraint.constant
        searchVC.catID = "1"
        VC2.superVC = self
        
        let VC3 = searchVC()
        VC3.title = "Pages"
        VC3.tabBarHeight = self.headerViewHeightConstraint.constant
        searchVC.catID = "2"
        VC3.superVC = self
        
        let controllerArray = [VC1, VC2, VC3]
        let width = CGFloat(UIScreen.main.bounds.width) / CGFloat(controllerArray.count)
        let parameters = [CAPSPageMenuOptionScrollMenuBackgroundColor: UIColor.white,
                          CAPSPageMenuOptionViewBackgroundColor: UIColor.white,
                          CAPSPageMenuOptionSelectionIndicatorColor: UIColor.black,
                          CAPSPageMenuOptionSelectedMenuItemLabelColor: UIColor.black,
                          CAPSPageMenuOptionUnselectedMenuItemLabelColor: UIColor.lightGray,
                          CAPSPageMenuOptionMenuItemFont: UIFont.systemFont(ofSize: 14.0),
                          CAPSPageMenuOptionMenuHeight: 40.0,
                          CAPSPageMenuOptionMenuItemWidth: (width),
                          CAPSPageMenuOptionCenterMenuItems: true] as [AnyHashable : Any]
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: self.headerViewHeightConstraint.constant, width: view.frame.size.width, height: view.frame.size.height-64), options: parameters)
        pageMenu?.delegate = self
        pageMenu?.move(toPage: 0)
        searchVC.catID = "\(0)"
        self.view.addSubview((pageMenu?.view)!)
        self.lineview = UIView(frame: CGRect(x: 0.0, y: 40 + self.headerViewHeightConstraint.constant, width: view.frame.size.width, height: 1.0))
        self.lineview.backgroundColor = UIColor.lightGray
        self.view.addSubview(self.lineview)
    }
    
    func willMove(toPage controller: UIViewController!, index: Int) {
        print(index)
        searchVC.catID = "\(index)"
    }
    
    func didMove(toPage controller: UIViewController!, index: Int) {
        searchVC.catID = "\(index)"
    }

}

extension searchCAPSController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
