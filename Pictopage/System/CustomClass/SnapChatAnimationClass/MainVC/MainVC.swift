//
//  ViewController.swift
//  SnapChatCL
//
//  Created by Morshed Alam on 13/9/18.
//  Copyright © 2018 Morshed Alam. All rights reserved.
//

import UIKit

var isCameraVC = Bool()
var isBookMarkVC = Bool()
var isNavigateToLaunchVC = Bool()
var isBackUserProfileScreen = Int()
var CurrentScreenName = String()

protocol changeUserProfileControllerDelegate {
    func changeUserProfileController()
}

protocol changeHomeControllerDelegate {
    func changeHomeController()
}

protocol changeBookmarkControllerDelegate {
    func changeBookmarkController()
}

class MainVC: UIViewController {
    
    var Userdelegate: changeUserProfileControllerDelegate?
    var Homedelegate: changeHomeControllerDelegate?
    var bookmarkdelegate: changeBookmarkControllerDelegate?
    
    private lazy var navigationView:NavigationView = {
        let view = NavigationView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.vcDele = self
        return view
    }()
    
    private lazy var containerView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var scrollVC :ScrollVC = {
        let scrollVC = ScrollVC()
        scrollVC.delegate = self
        return scrollVC
    }()
    
    
    let chatVC = HomeVC()
    let middleWareVC = HomeCameraVC()
    let discoverVC = loginUserProfileVC()
    let bookmarkVC = bookMarkVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        embededScollVC()
        self.navigationView.navigationDelegate = middleWareVC
        self.navigationView.homeClickDelegate = chatVC
        self.navigationView.bookMarkClickDelegate = bookmarkVC
        
        
        self.Homedelegate = chatVC
        self.Userdelegate = discoverVC
        self.bookmarkdelegate = bookmarkVC
        
        
        self.chatVC.BookMarkButtondelegate = self
    }
        
    override var preferredStatusBarStyle: UIStatusBarStyle{
        if #available(iOS 13.0, *) {
            return .darkContent
        } else {
            return .default
        }
    }
    
    override var prefersStatusBarHidden: Bool{
        if isCameraVC == true{
            return true
        }else{
            return false
        }
    }
    
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.right:
                print("Swiped right")
            case UISwipeGestureRecognizer.Direction.down:
                print("Swiped down")
            case UISwipeGestureRecognizer.Direction.left:
                print("Swiped left")
            case UISwipeGestureRecognizer.Direction.up:
                print("Swiped up")
            default:
                break
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func initUI(){
        
        view.addSubview(containerView)
        view.addSubview(navigationView)
        
        containerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.safeLeftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo:view.safeRightAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.safeBottomAnchor).isActive = true
        
        navigationView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        navigationView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        navigationView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        navigationView.bottomAnchor.constraint(equalTo: view.safeBottomAnchor).isActive = true
    
    }
    
    private func embededScollVC(){
        self.addChild(scrollVC)
        scrollVC.view.frame = self.view.bounds
        self.containerView.addSubview(scrollVC.view)
        self.scrollVC.didMove(toParent: self)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.scrollVC.view.addGestureRecognizer(swipeRight)
    }
    
    
}

extension MainVC: HomeVCDelegate{
    func clickBookMark() {
        print("click bookmark")
        isBookMarkVC = true
        bookmarkdelegate?.changeBookmarkController()
        scrollVC.setController(to: bookmarkVC, animated: true)
    }
}

extension MainVC:vcDelegate{
    func clickCameraButton() {
        scrollVC.setController(to: middleWareVC, animated: true)
    }
    
    func clickUser() {
        
        if isBookMarkVC == true{
            isBookMarkVC = false
            Homedelegate?.changeHomeController()
            scrollVC.setController(to: chatVC, animated: true)
        }else{
            Userdelegate?.changeUserProfileController()
            scrollVC.setController(to: discoverVC, animated: true)
        }
    }
    
    func clickHome() {
        Homedelegate?.changeHomeController()
        scrollVC.setController(to: chatVC, animated: true)
    }
    
}



extension MainVC:ScrollViewControllerDelegate{
    var viewControllers: [UIViewController?] {
        return [bookmarkVC, chatVC, middleWareVC, discoverVC]
    }
    
    var initialViewController: UIViewController {
        
        if isBackUserProfileScreen == 3{
            isBackUserProfileScreen = 0
            return bookmarkVC
        }
        else if isBackUserProfileScreen == 2{
            isBackUserProfileScreen = 0
            return discoverVC
        }else if isBackUserProfileScreen == 1{
            isBackUserProfileScreen = 0
            return middleWareVC
        }
        else{
            return chatVC
        }
    }
    
    func scrollViewDidScroll() {
        // calculate percentage for animation
        let min: CGFloat = 0
        let max: CGFloat = scrollVC.pageSize.width
        let x = scrollVC.scrollView.contentOffset.x
        let result = ((x - min) / (max - min)) - 2
        var controller: UIViewController?
        /*if scrollVC.isControllerVisible(chatVC) {
            isCameraVC = false
            self.setNeedsStatusBarAppearanceUpdate()
            self.navigationView.homeOvalImageview.image = UIImage(named: "Oval_white")
            controller = chatVC
        }else if scrollVC.isControllerVisible(discoverVC) {
            isCameraVC = false
            self.setNeedsStatusBarAppearanceUpdate()
            self.navigationView.homeOvalImageview.image = UIImage(named: "OvalOpp50")
            controller = discoverVC
        }else{
            isCameraVC = true
            self.setNeedsStatusBarAppearanceUpdate()
            self.navigationView.homeOvalImageview.image = UIImage(named: "Oval_white")
            controller = middleWareVC
        }*/
        
        //Darshit
        if scrollVC.isControllerVisible(bookmarkVC) {
            isCameraVC = false
            isBookMarkVC = true
            self.setNeedsStatusBarAppearanceUpdate()
            controller = bookmarkVC
            CurrentScreenName = "Bookmark"
        }else if scrollVC.isControllerVisible(chatVC) {
            isCameraVC = false
            isBookMarkVC = false
            
            self.setNeedsStatusBarAppearanceUpdate()
            self.navigationView.homeOvalImageview.image = UIImage(named: "Oval_white")
            controller = chatVC
            CurrentScreenName = "Home"
        }else if scrollVC.isControllerVisible(discoverVC) {
            isCameraVC = false
            isBookMarkVC = false
            
            self.setNeedsStatusBarAppearanceUpdate()
            self.navigationView.homeOvalImageview.image = UIImage(named: "OvalOpp50")
            controller = discoverVC
            CurrentScreenName = "userProfile"
        }else{
            isCameraVC = true
            isBookMarkVC = false
            
            self.setNeedsStatusBarAppearanceUpdate()
            self.navigationView.homeOvalImageview.image = UIImage(named: "Oval_white")
            controller = middleWareVC
            CurrentScreenName = "Camera"
        }
//        print("naivgate")
        
        
        navigationView.animate(to: controller, percent: result)
    }
    
    
}
