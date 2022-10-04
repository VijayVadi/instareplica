//
//  ViewController.swift
//  Pictopage
//
//  Created by Grewon on 12/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UINavigationController {

    // MARK:- viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.isHidden = true        
        
        
        
//        print("Running on: \(UIDevice().type)")
//        
//        if Auth.auth().currentUser == nil {
//            let loginController = launchScreenVC()
//            self.pushViewController(loginController, animated: true)
//        }else{
//            let loginController = launchScreenVC()
//            self.pushViewController(loginController, animated: true)
//        }
        
        let loginController = launchScreenVC()
        self.pushViewController(loginController, animated: true)
    }
}

extension UINavigationController {
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }
}
