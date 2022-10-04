//
//  createAccountProsessingPage.swift
//  Pictopage
//
//  Created by Grewon on 14/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit

class createAccountProsessingPage: UIViewController {

    let backgroundImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "background")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
    let TextView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let LableText: UIView = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "We're creating your Pictopage\nAccount!"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 20.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let ProgressView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let progressImage: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "progress")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let bottomTextview: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let BottomLableText: UIView = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Did you know..."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let BottomLableText1: UIView = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "Pictopage took 13 months of\ndevelopment until the release of its first\nversion"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let loaderImageview: UIImageView = {
        let img = UIImageView()
        img.image = UIImage.gif(name: "PictopageLogoLaunchScreenGIF")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.backgroundImage)
        self.backgroundImage.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // Text Lable view
        
        self.view.addSubview(self.TextView)
        self.TextView.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 90, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 316, height: 50)
        self.TextView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.TextView.addSubview(self.LableText)
        self.LableText.anchor(top: self.TextView.topAnchor, left: self.TextView.leftAnchor, bottom: self.TextView.bottomAnchor, right: self.TextView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // Progress view
        
        self.view.addSubview(self.ProgressView)
        self.ProgressView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 84.0, height: 84.0)
        self.ProgressView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.ProgressView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // Bottom text lable view
        
        self.view.addSubview(self.bottomTextview)
        self.bottomTextview.anchor(top: self.ProgressView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 90, paddingLeft: 18, paddingBottom: 0, paddingRight: 18, width: 0, height: 132)
        
        self.bottomTextview.addSubview(self.BottomLableText)
        self.BottomLableText.anchor(top: self.bottomTextview.topAnchor, left: self.bottomTextview.leftAnchor, bottom: nil, right: self.bottomTextview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 30.0)
        
        self.bottomTextview.addSubview(self.BottomLableText1)
        self.BottomLableText1.anchor(top: self.BottomLableText.bottomAnchor, left: self.bottomTextview.leftAnchor, bottom: self.bottomTextview.bottomAnchor, right: self.bottomTextview.rightAnchor, paddingTop: 6, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        self.view.addSubview(self.loaderImageview)
        self.loaderImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
        self.loaderImageview.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.loaderImageview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = welcomeVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

}
