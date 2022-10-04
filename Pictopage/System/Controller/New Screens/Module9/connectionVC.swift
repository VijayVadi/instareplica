//
//  connectionVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 15/10/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit

class connectionVC: UIViewController, UIGestureRecognizerDelegate {

    let headerView: UIView = {
        let v = UIView()
        return v
    }()
    
    let backButtonImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "FireflyBack")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let searchImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "SearchBlack_1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
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
    
    let tabView: UIView = {
        let v = UIView()
        return v
    }()
    
    let allTabView: UIView = {
        let v = UIView()
        return v
    }()
    
    let lableall: UILabel = {
        let lblLogin = UILabel()
        lblLogin.text = "All"
        lblLogin.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        lblLogin.textColor = .black
        lblLogin.textAlignment = .center
        return lblLogin
    }()
    
    let AllButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let bothConnectTabView: UIView = {
        let v = UIView()
        return v
    }()
    
    let bothConnectImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "botthConnection1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let bothConnectionButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let sendConnectTabView: UIView = {
        let v = UIView()
        return v
    }()
    
    let sendConnectImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "sendConnection1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let sendConnectionButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let receiveConnectTabView: UIView = {
        let v = UIView()
        return v
    }()
    
    let receiveConnectImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "receiveConnection1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFit
        return backButtonImageView
    }()
    
    let receiveConnectionButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let dividerTabView: UIView = {
        let v = UIView()
        return v
    }()
    
    let divider1TabView: UIView = {
        let v = UIView()
        return v
    }()
    
    // collectionview data
    
    let CollectionDummyView: UIView = {
        let v = UIView()
        return v
    }()

    lazy var connectionCollectionView: UICollectionView = {
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.dataSource = self
        cv.delegate = self

        cv.isPrefetchingEnabled = true
        cv.isSpringLoaded = false

        cv.isScrollEnabled = true
        cv.isPagingEnabled = true

        cv.isDirectionalLockEnabled = false
        cv.bouncesZoom = true
        cv.bounces = false
        cv.alwaysBounceHorizontal = true
        cv.alwaysBounceVertical = false
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        
        cv.backgroundColor = .white
        
        cv.register(connectionScreen_cell.self, forCellWithReuseIdentifier: "connectionScreen_cell")
        
        return cv
    }()
    
    // popup dailog view
    
    let dalogBackgroundView: UIView = {
        let v = UIView()
        return v
    }()
    
    let dailogMainView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let dailogUserImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "userLogo1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFill
        return backButtonImageView
    }()
    
    let dailogFirstLastNameLabel: UILabel = {
        let lblLogin = UILabel()
        lblLogin.text = "Firstname Lastname"
        lblLogin.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lblLogin.textColor = .black
        lblLogin.textAlignment = .center
        return lblLogin
    }()
    
    let dailogPictoIDLabel: UILabel = {
        let lblLogin = UILabel()
        lblLogin.text = "pictoid"
        lblLogin.font = UIFont(name: "HelveticaNeue-Light", size: 11.0)!
        lblLogin.textColor = .black
        lblLogin.textAlignment = .center
        return lblLogin
    }()
    
    let dailogConnectView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let dailogConnectImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "Connect1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let dailogConnectButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let dailogDisconnectView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let dailogDisconnectImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "disConnect_1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let dailogDisconnectButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let dailogRemoveView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let dailogRemoveImageview: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "Remove_1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let dailogRemoveButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let dailogCancelButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Cancle", for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        btn.setTitleColor(UIColor.black, for: .normal)
        return btn
    }()
    
    var dividerTabViewLeftConstraint : NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 73)
        
        // Back Button
        self.headerView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: nil, paddingTop: 38.5, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.headerView.addSubview(self.backButton)
        self.backButton.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 32, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.headerView.addSubview(self.searchImageview)
        self.searchImageview.anchor(top: nil, left: self.backButton.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 36, paddingBottom: 0, paddingRight: 0, width: 14, height: 14)
        self.searchImageview.centerYAnchor.constraint(equalTo: self.backButtonImageView.centerYAnchor).isActive = true
        
        self.headerView.addSubview(self.searchtextField)
        self.searchtextField.anchor(top: nil, left: self.searchImageview.rightAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 15, paddingRight: 0, width: 0, height: 23)
        
        // tab view
        
        self.view.addSubview(self.tabView)
        self.tabView.anchor(top: self.headerView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        
        self.tabView.addSubview(self.allTabView)
        self.allTabView.anchor(top: self.tabView.topAnchor, left: self.tabView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.view.frame.size.width / 4, height: 19.5)
        
        self.allTabView.addSubview(self.lableall)
        self.lableall.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 19, height: 18)
        self.lableall.centerXAnchor.constraint(equalTo: self.allTabView.centerXAnchor).isActive = true
        self.lableall.centerYAnchor.constraint(equalTo: self.allTabView.centerYAnchor).isActive = true
        
        self.allTabView.addSubview(self.AllButton)
        self.AllButton.anchor(top: self.allTabView.topAnchor, left: self.allTabView.leftAnchor, bottom: self.allTabView.bottomAnchor, right: self.allTabView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.AllButton.addTarget(self, action: #selector(self.click_all), for: .touchUpInside)
        
        self.tabView.addSubview(self.bothConnectTabView)
        self.bothConnectTabView.anchor(top: self.tabView.topAnchor, left: self.allTabView.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.view.frame.size.width / 4, height: 19.5)
        
        self.bothConnectTabView.addSubview(self.bothConnectImageview)
        self.bothConnectImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 21, height: 14)
        self.bothConnectImageview.centerXAnchor.constraint(equalTo: self.bothConnectTabView.centerXAnchor).isActive = true
        self.bothConnectImageview.centerYAnchor.constraint(equalTo: self.bothConnectTabView.centerYAnchor).isActive = true
        
        self.bothConnectTabView.addSubview(self.bothConnectionButton)
        self.bothConnectionButton.anchor(top: self.bothConnectTabView.topAnchor, left: self.bothConnectTabView.leftAnchor, bottom: self.bothConnectTabView.bottomAnchor, right: self.bothConnectTabView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.bothConnectionButton.addTarget(self, action: #selector(self.click_bothConnection), for: .touchUpInside)
        
        self.tabView.addSubview(self.sendConnectTabView)
        self.sendConnectTabView.anchor(top: self.tabView.topAnchor, left: self.bothConnectTabView.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.view.frame.size.width / 4, height: 19.5)
        
        self.sendConnectTabView.addSubview(self.sendConnectImageview)
        self.sendConnectImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 21, height: 14)
        self.sendConnectImageview.centerXAnchor.constraint(equalTo: self.sendConnectTabView.centerXAnchor).isActive = true
        self.sendConnectImageview.centerYAnchor.constraint(equalTo: self.sendConnectTabView.centerYAnchor).isActive = true
        
        self.sendConnectTabView.addSubview(self.sendConnectionButton)
        self.sendConnectionButton.anchor(top: self.sendConnectTabView.topAnchor, left: self.sendConnectTabView.leftAnchor, bottom: self.sendConnectTabView.bottomAnchor, right: self.sendConnectTabView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.sendConnectionButton.addTarget(self, action: #selector(self.click_sendConnection), for: .touchUpInside)
        
        self.tabView.addSubview(self.receiveConnectTabView)
        self.receiveConnectTabView.anchor(top: self.tabView.topAnchor, left: self.sendConnectTabView.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.view.frame.size.width / 4, height: 19.5)
        
        self.receiveConnectTabView.addSubview(self.receiveConnectImageview)
        self.receiveConnectImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 21, height: 14)
        self.receiveConnectImageview.centerXAnchor.constraint(equalTo: self.receiveConnectTabView.centerXAnchor).isActive = true
        self.receiveConnectImageview.centerYAnchor.constraint(equalTo: self.receiveConnectTabView.centerYAnchor).isActive = true
        
        self.receiveConnectTabView.addSubview(self.receiveConnectionButton)
        self.receiveConnectionButton.anchor(top: self.receiveConnectTabView.topAnchor, left: self.receiveConnectTabView.leftAnchor, bottom: self.receiveConnectTabView.bottomAnchor, right: self.receiveConnectTabView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.receiveConnectionButton.addTarget(self, action: #selector(self.click_receiveConnection), for: .touchUpInside)
        
        self.tabView.addSubview(self.divider1TabView)
        self.divider1TabView.anchor(top: nil, left: self.tabView.leftAnchor, bottom: self.tabView.bottomAnchor, right: self.tabView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2)
        self.divider1TabView.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        
        self.tabView.addSubview(self.dividerTabView)
        self.dividerTabView.anchor(top: nil, left: nil, bottom: self.tabView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.view.frame.size.width / 4, height: 2)
        self.dividerTabViewLeftConstraint = self.dividerTabView.leftAnchor.constraint(equalTo: self.tabView.leftAnchor, constant: 0.0)
        self.dividerTabViewLeftConstraint?.isActive = true
        self.dividerTabView.backgroundColor = .black
        
        // setup collectionview
        
        self.view.addSubview(self.CollectionDummyView)
        self.CollectionDummyView.anchor(top: self.tabView.bottomAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.CollectionDummyView.addSubview(self.connectionCollectionView)
        self.connectionCollectionView.fillSuperview()
     
        
        // setup dailog
        
        self.view.addSubview(self.dalogBackgroundView)
        self.dalogBackgroundView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.dalogBackgroundView.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.10)
        
        self.dalogBackgroundView.addSubview(self.dailogMainView)
        self.dailogMainView.anchor(top: nil, left: self.dalogBackgroundView.leftAnchor, bottom: nil, right: self.dalogBackgroundView.rightAnchor, paddingTop: 0, paddingLeft: 30, paddingBottom: 0, paddingRight: 30, width: 0, height: 274)
        self.dailogMainView.layer.cornerRadius = 25
        self.dailogMainView.centerXAnchor.constraint(equalTo: self.dalogBackgroundView.centerXAnchor).isActive = true
        self.dailogMainView.centerYAnchor.constraint(equalTo: self.dalogBackgroundView.centerYAnchor).isActive = true
        
        self.dailogMainView.addSubview(self.dailogUserImageview)
        self.dailogUserImageview.anchor(top: self.dailogMainView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        self.dailogUserImageview.clipsToBounds = true
        self.dailogUserImageview.layer.cornerRadius = 22.5
        self.dailogUserImageview.centerXAnchor.constraint(equalTo: self.dailogMainView.centerXAnchor).isActive = true
        
        self.dailogMainView.addSubview(self.dailogFirstLastNameLabel)
        self.dailogFirstLastNameLabel.anchor(top: self.dailogUserImageview.bottomAnchor, left: self.dailogMainView.leftAnchor, bottom: nil, right: self.dailogMainView.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 17)
        
        self.dailogMainView.addSubview(self.dailogPictoIDLabel)
        self.dailogPictoIDLabel.anchor(top: self.dailogFirstLastNameLabel.bottomAnchor, left: self.dailogMainView.leftAnchor, bottom: nil, right: self.dailogMainView.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 13)
        
        self.dailogMainView.addSubview(self.dailogConnectView)
        self.dailogConnectView.anchor(top: self.dailogPictoIDLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 113, height: 35)
        self.dailogConnectView.centerXAnchor.constraint(equalTo: self.dailogMainView.centerXAnchor).isActive = true
        
        self.dailogConnectView.addSubview(self.dailogConnectImageview)
        self.dailogConnectImageview.fillSuperview()
        
        self.dailogConnectView.addSubview(self.dailogConnectButton)
        self.dailogConnectButton.fillSuperview()
        
        self.dailogMainView.addSubview(self.dailogDisconnectView)
        self.dailogDisconnectView.anchor(top: self.dailogPictoIDLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 143, height: 35)
        self.dailogDisconnectView.centerXAnchor.constraint(equalTo: self.dailogMainView.centerXAnchor).isActive = true
        
        self.dailogDisconnectView.addSubview(self.dailogDisconnectImageview)
        self.dailogDisconnectImageview.fillSuperview()
        
        self.dailogDisconnectView.addSubview(self.dailogDisconnectButton)
        self.dailogDisconnectButton.fillSuperview()
        
        self.dailogMainView.addSubview(self.dailogRemoveView)
        self.dailogRemoveView.anchor(top: self.dailogConnectView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 120, height: 31)
        self.dailogRemoveView.centerXAnchor.constraint(equalTo: self.dailogMainView.centerXAnchor).isActive = true
        
        self.dailogRemoveView.addSubview(self.dailogRemoveImageview)
        self.dailogRemoveImageview.fillSuperview()
        
        self.dailogRemoveView.addSubview(self.dailogRemoveButton)
        self.dailogRemoveButton.fillSuperview()
        
        self.dailogMainView.addSubview(self.dailogCancelButton)
        self.dailogCancelButton.anchor(top: self.dailogRemoveView.bottomAnchor, left: self.dailogMainView.leftAnchor, bottom: nil, right: self.dailogMainView.rightAnchor, paddingTop: 19, paddingLeft: 40.5, paddingBottom: 0, paddingRight: 40.5, width: 0, height: 18)
        self.dailogCancelButton.addTarget(self, action: #selector(self.click_dailogCancel), for: .touchUpInside)
        
        self.dalogBackgroundView.isHidden = true
        self.dailogDisconnectView.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
    }
    
    
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    

    // MARK:- Button Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_all(){
        let indexPath = IndexPath(row: 0, section: 0)
        self.connectionCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
    }
    
    @objc func click_bothConnection(){
        let indexPath = IndexPath(row: 0, section: 1)
        self.connectionCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
    }
    
    @objc func click_sendConnection(){
        let indexPath = IndexPath(row: 0, section: 2)
        self.connectionCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
    }
    
    @objc func click_receiveConnection(){
        let indexPath = IndexPath(row: 0, section: 3)
        self.connectionCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
    }

    @objc func click_dailogCancel(){
        self.dalogBackgroundView.isHidden = true
    }
}


extension connectionVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, tableviewDidSelect {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "connectionScreen_cell", for: indexPath) as! connectionScreen_cell
//        if indexPath.section == 0{
//            cell.tableviewConnection.backgroundColor = .red
//        }else if indexPath.section == 1{
//            cell.tableviewConnection.backgroundColor = .blue
//        }else if indexPath.section == 2{
//            cell.tableviewConnection.backgroundColor = .yellow
//        }else{
//            cell.tableviewConnection.backgroundColor = .green
//        }
        cell.didSelectDelegate = self
        return cell
        
    }
    
    func click_didSelect(index: Int) {
        if index == 0{
            self.dailogDisconnectView.isHidden = true
            self.dailogConnectView.isHidden = false
            
            self.dalogBackgroundView.isHidden = false
        }else{
            self.dailogDisconnectView.isHidden = false
            self.dailogConnectView.isHidden = true
            
            self.dalogBackgroundView.isHidden = false
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.connectionCollectionView.frame.width, height: self.connectionCollectionView.frame.height)
    }
}


extension connectionVC: UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.dividerTabViewLeftConstraint!.constant = scrollView.contentOffset.x / 4
    }
    
}
