//
//  NavigationView.swift
//  SnapChatCL
//
//  Created by Morshed Alam on 13/9/18.
//  Copyright © 2018 Morshed Alam. All rights reserved.
//

import UIKit

protocol NavigationDelegate {
    func captureButtonClick()
    func flashButtonClick()
    func gallryButtonClick()
    func swapCameraButtonClick()
    func changedScreen(isStart: Bool, offset: CGFloat)
}

protocol HomeScreenDelegateMethod {
    func click_HomebookMArk()
    func click_HomelistView()
    func click_homeSearch()
}

protocol bookmarkScreenDelegateMethod {
    func click_createPage()
    func click_notification()
    func click_bookmarkSearch()
}

protocol vcDelegate {
    func clickUser()
    func clickHome()
    func clickCameraButton()
}

class NavigationView: UIView {
    
    //MARK: cameraView Property
    
    private lazy var cameraButtonView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.animateButtonClick(_:)))
        view.tag = 1
        view.addGestureRecognizer(tap)
        view.tintColor = .white
        return view
    }()
    
    lazy var cameraBtnGrayImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "CameraSmall1x")
        return imageView
    }()
    
    lazy var cameraBtnWhiteImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "CameraLarge1x")
        return imageView
    }()
    
    // MARK: ChatIconView Property
    
    private lazy var bottomIconView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var swapCameraIconView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var swapCameraIconeImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "iconMainCamera_1x")
        imageView.tintColor = .white
        imageView.isOpaque = true
        return imageView
    }()
    
    private lazy var swapcameraButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(self.swapCameraButtonClick), for: .touchUpInside)
        return btn
    }()
    
    private lazy var gallryIconView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var gallryIconeImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "iconGallery_1x")
        imageView.tintColor = .white
        imageView.isOpaque = true
        return imageView
    }()
    
    private lazy var gallryButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(self.gallryButtonClick), for: .touchUpInside)
        return btn
    }()
    
    private lazy var FlashIconView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var flashIconeImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "iconFlashOff_1x")
        imageView.tintColor = .white
        imageView.isOpaque = true
        return imageView
    }()
    
    private lazy var flashButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(self.flashButtonClick), for: .touchUpInside)
        return btn
    }()
    
    let HomeButtonMainView: UIView = {
        let logov = UIView()
        logov.tag = 2
        return logov
    }()
    
    let homeOvalImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "Oval_white")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let homeButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "Home1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let homeButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let userButtonMainView: UIView = {
        let logov = UIView()
        logov.tag = 3
        return logov
    }()
    
    let userOvalImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "Oval_whiteRight")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let userButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "NatureImage")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFill
        return logoimg
    }()
    
    let bookmarkButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "bookmarkBalck_icon1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let userButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    
    // headerSearchView
    
    let headerSubView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let addView: UIView = {
        let v = UIView()
        return v
    }()
    
    let bookMarkHomeImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "bookMark200H")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let bookMrakHomeButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let addBookImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "add1x")
        return img
    }()
    
    let addBookMarkButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let selectView: UIView = {
        let v = UIView()
        return v
    }()
    
    let selectImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "listViewIcon")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let selectButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let notificationImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "notificationIcon1x")
        return img
    }()

    let notificationButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let searchView: UIView = {
        let v = UIView()
        return v
    }()
    
    let searchiconImageview: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleToFill
        img.image = UIImage(named: "SearchBlack_1x")
        return img
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
    
    let homeSearchButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
//    let bookMarkSearchButton: UIButton = {
//        let btn = UIButton()
//        return btn
//    }()
    
    

    // MARK: - Properties
    lazy var cameraButtonWidthConstraintConstant: CGFloat = {
        return self.cameraButtonWidthConstraint.constant
    }()
    
    lazy var cameraButtonBottomConstraintConstant: CGFloat = {
        return self.cameraButtonBottomConstraint.constant
    }()
    
    lazy var bottomIconViewBottomConstraintConstant: CGFloat = {
        return self.bootomIconBottomConstraint.constant
    }()
    
    lazy var HomeButtonViewBottomConstraintConstant: CGFloat = {
        return self.HomeButtonViewBottomConstraint.constant
    }()
    
    lazy var HomeButtonMainViewLeftConstraintConstant: CGFloat = {
        return self.HomeButtonMainViewLeftConstraint.constant
    }()
    
    var cameraButtonWidthConstraint: NSLayoutConstraint!
    var cameraButtonBottomConstraint: NSLayoutConstraint!
    var bootomIconBottomConstraint: NSLayoutConstraint!
    
    var HomeButtonViewBottomConstraint: NSLayoutConstraint!
    
    var HomeButtonMainViewLeftConstraint: NSLayoutConstraint!
    
    var navigationDelegate:NavigationDelegate?
    var vcDele:vcDelegate?
    
    var bookMarkClickDelegate: bookmarkScreenDelegateMethod?
    var homeClickDelegate: HomeScreenDelegateMethod?
    
    var isMainCamera = Bool()
    var isFlashOff = Bool()
    
    var isSet2 = Bool()
    
    init() {
        super.init(frame: UIScreen.main.bounds)
        initUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Internal
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        return view == self ? nil : view
    }
    
    
    private func initUI(){
        
        
        self.addSubview(self.cameraButtonView)
        self.cameraButtonView.addSubview(self.cameraBtnGrayImageView)
        self.cameraButtonView.addSubview(self.cameraBtnWhiteImageView)
        
        //camera
        self.cameraButtonView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.cameraButtonWidthConstraint = self.cameraButtonView.widthAnchor.constraint(equalToConstant: 86)
        self.cameraButtonWidthConstraint.isActive = true
        self.cameraButtonView.heightAnchor.constraint(equalTo: self.cameraButtonView.widthAnchor).isActive = true
        self.cameraButtonBottomConstraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: self.cameraButtonView, attribute: .bottom, multiplier: 1, constant: 70)
        self.addConstraint(self.cameraButtonBottomConstraint)

        self.cameraBtnGrayImageView.topAnchor.constraint(equalTo: self.cameraButtonView.topAnchor).isActive = true
        self.cameraBtnGrayImageView.leftAnchor.constraint(equalTo: self.cameraButtonView.leftAnchor).isActive = true
        self.cameraBtnGrayImageView.rightAnchor.constraint(equalTo: self.cameraButtonView.rightAnchor).isActive = true
        self.cameraBtnGrayImageView.bottomAnchor.constraint(equalTo: self.cameraButtonView.bottomAnchor).isActive = true

        self.cameraBtnWhiteImageView.topAnchor.constraint(equalTo: self.cameraButtonView.topAnchor).isActive = true
        self.cameraBtnWhiteImageView.leftAnchor.constraint(equalTo: self.cameraButtonView.leftAnchor).isActive = true
        self.cameraBtnWhiteImageView.rightAnchor.constraint(equalTo: self.cameraButtonView.rightAnchor).isActive = true
        self.cameraBtnWhiteImageView.bottomAnchor.constraint(equalTo: self.cameraButtonView.bottomAnchor).isActive = true

        
        // Bottom view
        
        self.addSubview(self.bottomIconView)
//        self.bottomIconView.backgroundColor = .red
        self.bottomIconView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.bottomIconView.clipsToBounds = true
        self.bottomIconView.widthAnchor.constraint(equalToConstant: 222).isActive = true
        self.bottomIconView.heightAnchor.constraint(equalToConstant: 54).isActive = true
//        self.bootomIconBottomConstraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: self.bottomIconView, attribute: .bottom, multiplier: 1, constant: 100)
        self.bootomIconBottomConstraint = self.bottomIconView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        self.bootomIconBottomConstraint.isActive = true
        self.addConstraint(self.bootomIconBottomConstraint)
        
        
        // Swap camera view
        
        self.bottomIconView.addSubview(self.swapCameraIconView)
//        self.swapCameraIconView.backgroundColor = .blue
        self.swapCameraIconView.clipsToBounds = true
        self.swapCameraIconView.leftAnchor.constraint(equalTo: self.bottomIconView.leftAnchor, constant: 0.0).isActive = true
        self.swapCameraIconView.widthAnchor.constraint(equalToConstant: 56).isActive = true
        self.swapCameraIconView.heightAnchor.constraint(equalToConstant: 47).isActive = true
        self.swapCameraIconView.centerYAnchor.constraint(equalTo: self.bottomIconView.centerYAnchor).isActive = true
        
        self.swapCameraIconView.addSubview(self.swapCameraIconeImageView)
        self.swapCameraIconeImageView.widthAnchor.constraint(equalToConstant: 56).isActive = true
        self.swapCameraIconeImageView.heightAnchor.constraint(equalToConstant: 47).isActive = true
        self.swapCameraIconeImageView.centerYAnchor.constraint(equalTo: self.swapCameraIconView.centerYAnchor).isActive = true
        self.swapCameraIconeImageView.centerXAnchor.constraint(equalTo: self.swapCameraIconView.centerXAnchor).isActive = true
    
        self.swapCameraIconView.addSubview(self.swapcameraButton)
        self.swapcameraButton.leftAnchor.constraint(equalTo: self.swapCameraIconView.leftAnchor, constant: 0.0).isActive = true
        self.swapcameraButton.topAnchor.constraint(equalTo: self.swapCameraIconView.topAnchor, constant: 0.0).isActive = true
        self.swapcameraButton.bottomAnchor.constraint(equalTo: self.swapCameraIconView.bottomAnchor, constant: 0.0).isActive = true
        self.swapcameraButton.rightAnchor.constraint(equalTo: self.swapCameraIconView.rightAnchor, constant: 0.0).isActive = true
        
        // gallry view
        
        self.bottomIconView.addSubview(self.gallryIconView)
//        self.gallryIconView.backgroundColor = .green
        self.gallryIconView.clipsToBounds = true
        self.gallryIconView.leftAnchor.constraint(equalTo: self.swapCameraIconView.rightAnchor, constant: 20.0).isActive = true
        self.gallryIconView.widthAnchor.constraint(equalToConstant: 66).isActive = true
        self.gallryIconView.heightAnchor.constraint(equalToConstant: 54).isActive = true
        self.gallryIconView.centerYAnchor.constraint(equalTo: self.bottomIconView.centerYAnchor).isActive = true
        
        self.gallryIconView.addSubview(self.gallryIconeImageView)
        self.gallryIconeImageView.widthAnchor.constraint(equalToConstant: 66).isActive = true
        self.gallryIconeImageView.heightAnchor.constraint(equalToConstant: 54).isActive = true
        self.gallryIconeImageView.centerYAnchor.constraint(equalTo: self.gallryIconView.centerYAnchor).isActive = true
        self.gallryIconeImageView.centerXAnchor.constraint(equalTo: self.gallryIconView.centerXAnchor).isActive = true
        
        self.gallryIconView.addSubview(self.gallryButton)
        self.gallryButton.leftAnchor.constraint(equalTo: self.gallryIconView.leftAnchor, constant: 0.0).isActive = true
        self.gallryButton.topAnchor.constraint(equalTo: self.gallryIconView.topAnchor, constant: 0.0).isActive = true
        self.gallryButton.bottomAnchor.constraint(equalTo: self.gallryIconView.bottomAnchor, constant: 0.0).isActive = true
        self.gallryButton.rightAnchor.constraint(equalTo: self.gallryIconView.rightAnchor, constant: 0.0).isActive = true
        
        // flash view
        
        self.bottomIconView.addSubview(self.FlashIconView)
//        self.FlashIconView.backgroundColor = .purple
        self.FlashIconView.clipsToBounds = true
        self.FlashIconView.leftAnchor.constraint(equalTo: self.gallryIconView.rightAnchor, constant: 21.0).isActive = true
        self.FlashIconView.widthAnchor.constraint(equalToConstant: 43).isActive = true
        self.FlashIconView.heightAnchor.constraint(equalToConstant: 49).isActive = true
        self.FlashIconView.centerYAnchor.constraint(equalTo: self.bottomIconView.centerYAnchor).isActive = true
        
        self.FlashIconView.addSubview(self.flashIconeImageView)
        self.flashIconeImageView.widthAnchor.constraint(equalToConstant: 43).isActive = true
        self.flashIconeImageView.heightAnchor.constraint(equalToConstant: 49).isActive = true
        self.flashIconeImageView.centerYAnchor.constraint(equalTo: self.FlashIconView.centerYAnchor).isActive = true
        self.flashIconeImageView.centerXAnchor.constraint(equalTo: self.FlashIconView.centerXAnchor).isActive = true
    
        self.FlashIconView.addSubview(self.flashButton)
        self.flashButton.leftAnchor.constraint(equalTo: self.FlashIconView.leftAnchor, constant: 0.0).isActive = true
        self.flashButton.topAnchor.constraint(equalTo: self.FlashIconView.topAnchor, constant: 0.0).isActive = true
        self.flashButton.bottomAnchor.constraint(equalTo: self.FlashIconView.bottomAnchor, constant: 0.0).isActive = true
        self.flashButton.rightAnchor.constraint(equalTo: self.FlashIconView.rightAnchor, constant: 0.0).isActive = true
        
        // set up home icon section view
        
        self.addSubview(self.HomeButtonMainView)
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow
            if let bottomPadding = (window?.safeAreaInsets.bottom){
                
                print(bottomPadding)
                
                let bottomLeftViewBottomConstraint = NSLayoutConstraint(item: self.HomeButtonMainView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal
                    , toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: bottomPadding + 1)
                
                NSLayoutConstraint.activate([bottomLeftViewBottomConstraint])
                self.HomeButtonMainView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 75, height: 74)
                self.HomeButtonMainViewLeftConstraint = self.HomeButtonMainView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0)
                self.HomeButtonMainViewLeftConstraint.isActive = true
            }
        }
        
        self.HomeButtonMainView.clipsToBounds = true
        
        self.HomeButtonMainView.addSubview(self.homeOvalImageview)
        self.homeOvalImageview.anchor(top: self.HomeButtonMainView.topAnchor, left: self.HomeButtonMainView.leftAnchor, bottom: self.HomeButtonMainView.bottomAnchor, right: self.HomeButtonMainView.rightAnchor, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 0)

        self.HomeButtonMainView.addSubview(self.homeButtonImageview)
        self.homeButtonImageview.anchor(top: nil, left: self.HomeButtonMainView.leftAnchor, bottom: self.HomeButtonMainView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 10, paddingRight: 0, width: 30, height: 30)
        self.HomeButtonMainView.addSubview(self.homeButton)
        self.homeButton.anchor(top: self.HomeButtonMainView.topAnchor, left: self.HomeButtonMainView.leftAnchor, bottom: self.HomeButtonMainView.bottomAnchor, right: self.HomeButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.homeButton.addTarget(self, action: #selector(self.click_home), for: .touchUpInside)

        // set up user Profile icon section
        self.addSubview(self.userButtonMainView)
        if #available(iOS 11.0, *) {
            let window1 = UIApplication.shared.keyWindow
            if let bottomPadding1 = (window1?.safeAreaInsets.bottom){
                let bottomRightViewBottomConstraint = NSLayoutConstraint(item: self.userButtonMainView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal
                    , toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: bottomPadding1 + 1)
                
                NSLayoutConstraint.activate([bottomRightViewBottomConstraint])
                
                self.userButtonMainView.anchor(top: nil, left: nil, bottom: nil, right: self.rightAnchor, paddingTop: 0.0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 75, height: 74)
                self.userButtonMainView.clipsToBounds = true
            }
        }
        
        
        self.userButtonMainView.addSubview(self.userOvalImageview)
        self.userOvalImageview.anchor(top: self.userButtonMainView.topAnchor, left: self.userButtonMainView.leftAnchor, bottom: self.userButtonMainView.bottomAnchor, right: self.userButtonMainView.rightAnchor, paddingTop: 6, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.userButtonMainView.addSubview(self.userButtonImageview)
        self.userButtonImageview.anchor(top: nil, left: nil, bottom: self.userButtonMainView.bottomAnchor, right: self.userButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 10, paddingRight: 10, width: 30, height: 30)
        self.userButtonImageview.layer.cornerRadius = 15
        self.userButtonImageview.clipsToBounds = true
        
        self.userButtonMainView.addSubview(self.bookmarkButtonImageview)
        self.bookmarkButtonImageview.anchor(top: nil, left: nil, bottom: self.userButtonMainView.bottomAnchor, right: self.userButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 10, paddingRight: 10, width: 30, height: 30)
        self.bookmarkButtonImageview.clipsToBounds = true
        
        self.userButtonMainView.addSubview(self.userButton)
        self.userButton.anchor(top: self.userButtonMainView.topAnchor, left: self.userButtonMainView.leftAnchor, bottom: self.userButtonMainView.bottomAnchor, right: self.userButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.userButton.addTarget(self, action: #selector(self.click_user), for: .touchUpInside)
        
        
        // searchBar setup
        
        // setup Header sub view
        
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.addSubview(self.headerSubView)
            self.headerSubView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 31, paddingLeft: 9, paddingBottom: 0, paddingRight: 9, width: 0, height: 40)
        }else{
            self.addSubview(self.headerSubView)
            self.headerSubView.anchor(top: self.safeTopAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 0, paddingLeft: 9, paddingBottom: 0, paddingRight: 9, width: 0, height: 40)
        }
        
        
        // setup Left button view
        
        self.headerSubView.addSubview(self.addView)
        self.addView.anchor(top: nil, left: self.headerSubView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        self.addView.centerYAnchor.constraint(equalTo: self.headerSubView.centerYAnchor).isActive = true
        self.addView.backgroundColor = .white
        self.addView.layer.cornerRadius = 20.0
        self.addView.layer.applySketchShadow()
        
        self.addView.addSubview(self.bookMarkHomeImageView)
        self.bookMarkHomeImageView.anchor(top: self.addView.topAnchor, left: self.addView.leftAnchor, bottom: self.addView.bottomAnchor, right: self.addView.rightAnchor, paddingTop: 11, paddingLeft: 13, paddingBottom: 11, paddingRight: 13, width: 0, height: 0)
        
        self.addView.addSubview(self.bookMrakHomeButton)
        self.bookMrakHomeButton.anchor(top: self.addView.topAnchor, left: self.addView.leftAnchor, bottom: self.addView.bottomAnchor, right: self.addView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.bookMrakHomeButton.addTarget(self, action: #selector(self.click_BookMark), for: .touchUpInside)
        
        self.addView.addSubview(self.addBookImageview)
        self.addBookImageview.anchor(top: self.addView.topAnchor, left: self.addView.leftAnchor, bottom: self.addView.bottomAnchor, right: self.addView.rightAnchor, paddingTop: 9, paddingLeft: 9, paddingBottom: 9, paddingRight: 9, width: 0, height: 0)
        
        self.addView.addSubview(self.addBookMarkButton)
        self.addBookMarkButton.anchor(top: self.addView.topAnchor, left: self.addView.leftAnchor, bottom: self.addView.bottomAnchor, right: self.addView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.addBookMarkButton.addTarget(self, action: #selector(self.click_createPage), for: .touchUpInside)
        
        // setup Right Button view
        
        self.headerSubView.addSubview(self.selectView)
        self.selectView.anchor(top: nil, left: nil, bottom: nil, right: self.headerSubView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        self.selectView.centerYAnchor.constraint(equalTo: self.headerSubView.centerYAnchor).isActive = true
        self.selectView.backgroundColor = .white
        self.selectView.layer.cornerRadius = 20.0
        self.selectView.layer.applySketchShadow()
        
        self.selectView.addSubview(self.selectImageView)
        self.selectImageView.anchor(top: self.selectView.topAnchor, left: self.selectView.leftAnchor, bottom: self.selectView.bottomAnchor, right: self.selectView.rightAnchor, paddingTop: 8, paddingLeft: 8, paddingBottom: 8, paddingRight: 8, width: 0, height: 0)
        
        self.selectView.addSubview(self.selectButton)
        self.selectButton.anchor(top: self.selectView.topAnchor, left: self.selectView.leftAnchor, bottom: self.selectView.bottomAnchor, right: self.selectView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.selectButton.addTarget(self, action: #selector(self.click_listView), for: .touchUpInside)
        
        // notification Image Button
        self.selectView.addSubview(self.notificationImageview)
        self.notificationImageview.anchor(top: self.selectView.topAnchor, left: self.selectView.leftAnchor, bottom: self.selectView.bottomAnchor, right: self.selectView.rightAnchor, paddingTop: 9.5, paddingLeft: 11, paddingBottom: 9.5, paddingRight: 11, width: 0, height: 0)
        
        self.selectView.addSubview(self.notificationButton)
        self.notificationButton.anchor(top: self.selectView.topAnchor, left: self.selectView.leftAnchor, bottom: self.selectView.bottomAnchor, right: self.selectView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.notificationButton.addTarget(self, action: #selector(self.click_notification), for: .touchUpInside)
        
        // setup search view
        
        self.headerSubView.addSubview(self.searchView)
        self.searchView.anchor(top: nil, left: self.addView.rightAnchor, bottom: nil, right: self.selectView.leftAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 40)
        self.searchView.centerYAnchor.constraint(equalTo: self.headerSubView.centerYAnchor).isActive = true
        self.searchView.backgroundColor = .white
        self.searchView.layer.cornerRadius = 15.0
        self.searchView.layer.applySketchShadow()
        
        self.searchView.addSubview(self.searchiconImageview)
        self.searchiconImageview.anchor(top: nil, left: self.searchView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 14, height: 14)
        self.searchiconImageview.centerYAnchor.constraint(equalTo: self.searchView.centerYAnchor).isActive = true
        
        self.searchView.addSubview(self.searchtextField)
        self.searchtextField.anchor(top: self.searchView.topAnchor, left: self.searchiconImageview.rightAnchor, bottom: self.searchView.bottomAnchor, right: self.searchView.rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.searchView.addSubview(self.homeSearchButton)
        self.homeSearchButton.anchor(top: self.searchView.topAnchor, left: self.searchiconImageview.rightAnchor, bottom: self.searchView.bottomAnchor, right: self.searchView.rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.homeSearchButton.addTarget(self, action: #selector(self.click_homeSearch), for: .touchUpInside)
        
        self.isMainCamera = true
        self.isFlashOff = true
        
        
        self.setUserImage()
    }
    
    func setUserImage(){
        
        FirebaseClient.sharedInstance.getCurrentUserData(controller: UIViewController()) { (userDocument) in
            let data = userDocument as! userData
            FirebaseClient.sharedInstance.firebaseCurrentUser = data
            if let image = data.ProfilePicture, image.count != 0{
                self.userButtonImageview.kf.indicatorType = .activity
                self.userButtonImageview.kf.setImage(with: URL(string: image))
            }
        }
    }
    
    @objc func click_home(){
        print("click home")
        self.vcDele?.clickHome()
    }
    
    @objc func click_user(){
        print("click user")
        self.vcDele?.clickUser()
    }
    
    @objc func animateButtonClick(_ recognizer: UIGestureRecognizer){
        print(isCameraVC)
        
        if isCameraVC == true{
            isBackUserProfileScreen = 1
            navigationDelegate?.captureButtonClick()
        }else{
            vcDele?.clickCameraButton()
        }
        
    }
    
    @objc func flashButtonClick(){
        
        if self.isFlashOff == true{
            self.isFlashOff = false
            self.flashIconeImageView.image = UIImage(named: "iconFlashOn_1x")
        }else{
            self.isFlashOff = true
            self.flashIconeImageView.image = UIImage(named: "iconFlashOff_1x")
        }
        
        navigationDelegate?.flashButtonClick()
    }
    
    @objc func gallryButtonClick(){
        
        isBackUserProfileScreen = 1
        navigationDelegate?.gallryButtonClick()
    }
    
    @objc func swapCameraButtonClick(){
        
        if self.isMainCamera == true{
            self.isMainCamera = false
            self.swapCameraIconeImageView.image = UIImage(named: "iconFrontCamera_1x")
        }else{
            self.isMainCamera = true
            self.swapCameraIconeImageView.image = UIImage(named: "iconMainCamera_1x")
        }
        
        navigationDelegate?.swapCameraButtonClick()
    }
    
    func animate(to controller: UIViewController?, percent: CGFloat) {
        let offset = abs(percent)
        
        self.homeOvalImageview.alpha = 0
        self.userOvalImageview.alpha = 0
        
//        navigationDelegate?.changedScreen()
        
        if isCameraVC == true{
            
            self.homeButtonImageview.image = UIImage(named: "Home1x")
            self.homeButtonImageview.changeImageColor(color: .white)
            
            self.homeOvalImageview.image = UIImage(named: "Ovalleftopp25")
            self.userOvalImageview.image = UIImage(named: "ovalRightOpp25")
            
        }
        else{
            
            self.homeButtonImageview.image = UIImage(named: "Home1x")
            self.homeButtonImageview.changeImageColor(color: .black)
            
            self.homeOvalImageview.image = UIImage(named: "Oval_white")
            self.userOvalImageview.image = UIImage(named: "Oval_whiteRight")
        }
        
        if isNavigateToLaunchVC == false{
            
            if isBookMarkVC == true{
                self.animateIconLeftPosition(offset: offset, finalDistanceFromLeft: -75.0)
            }else{
                self.animateIconLeftPosition(offset: offset, finalDistanceFromLeft: 0.0)
            }
        }else{
            isNavigateToLaunchVC = false
        }
        
        animateIconColor(offset: offset)
        animateIconPosition(offset: offset)
        animateIconScale(offset: offset)
        
        layoutIfNeeded()
        
        let className = NSStringFromClass(controller!.classForCoder)
        
//        print("offset ----------- \(offset)-------")
        
        if offset < 1.0{
            print("start camera")
            navigationDelegate?.changedScreen(isStart: true, offset: offset)
        }else if offset > 0.0{
            print("stop camera")
            navigationDelegate?.changedScreen(isStart: false, offset: offset)
        }
        
        if offset < 1{
            self.addBookImageview.isHidden = true
            self.addBookMarkButton.isHidden = true
            self.notificationImageview.isHidden = true
            self.notificationButton.isHidden = true
            
            self.bookMarkHomeImageView.isHidden = false
            self.bookMrakHomeButton.isHidden = false
            self.selectImageView.isHidden = false
            self.selectButton.isHidden = false
            
            if className == "Pictopage.HomeVC"{
                self.setShadowSearchView(shadow: offset)
            }else if className == "Pictopage.loginUserProfileVC"{
                self.setShadowSearchView(shadow: offset - 1)
            }else{
                self.setShadowSearchView(shadow: offset)
            }
        }else{
            self.addBookImageview.isHidden = false
            self.addBookMarkButton.isHidden = false
            self.notificationImageview.isHidden = false
            self.notificationButton.isHidden = false
            
            self.bookMarkHomeImageView.isHidden = false
            self.bookMrakHomeButton.isHidden = false
            self.selectImageView.isHidden = false
            self.selectButton.isHidden = false
            
            if className == "Pictopage.loginUserProfileVC"{
                self.setShadowSearchView(shadow: offset - 1)
            }else{
                self.setShadowSearchView(shadow: offset)
                if className == "Pictopage.HomeVC"{
                    print(className)
                    if offset == 1.0{
                        self.isSet2 = false
                    }
                    self.bookmarkButtonImageview.alpha = 0
                    self.userButtonImageview.alpha = offset
                    self.setHomeScreenIconAlpha(offset: offset)
                }else{
                    print(className)
                    
                    if offset == 2.0{
                        self.isSet2 = true
                    }

                    if offset < 2{
                        if self.isSet2 == true{
                            self.bookmarkButtonImageview.alpha = 0.0
                            self.userButtonImageview.alpha = 2 - offset
                            self.setBookmarkScreenIconAlpha(homeOffset: 2 - offset, BookmarkOffset: 0)
                        }else{
                            self.bookmarkButtonImageview.alpha = offset - 1
                            self.userButtonImageview.alpha = 0
                            self.setBookmarkScreenIconAlpha(homeOffset: 0, BookmarkOffset: offset - 1)
                        }
                    }else{
                        self.bookmarkButtonImageview.alpha = offset - 1
                        self.userButtonImageview.alpha = 0
                        self.setBookmarkScreenIconAlpha(homeOffset: 0, BookmarkOffset: offset - 1)
                    }
                }
                
            }
        }
    }
    
    func setShadowSearchView(shadow: CGFloat){
        self.headerSubView.alpha = shadow

        self.addView.alpha = shadow
        self.bookMarkHomeImageView.alpha = shadow
        self.bookMrakHomeButton.alpha = shadow
        self.addBookImageview.alpha = shadow
        self.addBookMarkButton.alpha = shadow

        self.selectView.alpha = shadow
        self.selectImageView.alpha = shadow
        self.selectButton.alpha = shadow
        self.notificationImageview.alpha = shadow
        self.notificationButton.alpha = shadow

        self.searchView.alpha = shadow
        self.searchiconImageview.alpha = shadow
        self.searchtextField.alpha = shadow
        self.homeSearchButton.alpha = shadow
        
        UIView.animate(withDuration: 0.5) {
            self.layoutIfNeeded()
        }
    }
    
    func setHomeScreenIconAlpha(offset: CGFloat){
        
        self.addBookImageview.alpha = 0
        self.addBookMarkButton.alpha = 0
        self.notificationImageview.alpha = 0
        self.notificationButton.alpha = 0

        self.bookMarkHomeImageView.alpha = offset
        self.bookMrakHomeButton.alpha = offset
        self.selectImageView.alpha = offset
        self.selectButton.alpha = offset
    }
    
    func setBookmarkScreenIconAlpha(homeOffset: CGFloat, BookmarkOffset: CGFloat){
        
        self.addBookImageview.alpha = BookmarkOffset
        self.addBookMarkButton.alpha = BookmarkOffset
        self.notificationImageview.alpha = BookmarkOffset
        self.notificationButton.alpha = BookmarkOffset

        self.bookMarkHomeImageView.alpha = homeOffset
        self.bookMrakHomeButton.alpha = homeOffset
        self.selectImageView.alpha = homeOffset
        self.selectButton.alpha = homeOffset
    }
    
    @objc func click_notification(){
        bookMarkClickDelegate?.click_notification()
    }
    
    @objc func click_createPage(){
        bookMarkClickDelegate?.click_createPage()
    }
    
    @objc func click_listView(){
        homeClickDelegate?.click_HomelistView()
    }
    
    @objc func click_BookMark(){
        homeClickDelegate?.click_HomebookMArk()
    }
    
    @objc func click_homeSearch(){
        if isBookMarkVC{
            bookMarkClickDelegate?.click_bookmarkSearch()
        }else{
            homeClickDelegate?.click_homeSearch()
        }
    }
    
}


