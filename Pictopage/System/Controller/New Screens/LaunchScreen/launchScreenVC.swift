//
//  launchScreenVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 29/01/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase

class launchScreenVC: UIViewController {

    
    var timer: Timer?
    
    let loaderImageview: UIImageView = {
        let img = UIImageView()
        img.image = UIImage.gif(name: "LoadingLogoNew")
        img.image = UIImage(named: "launchIcon_1x")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.view.addSubview(self.loaderImageview)
        self.loaderImageview.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 75, height: 75)
        self.loaderImageview.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.loaderImageview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(fire), userInfo: nil, repeats: true)
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.timer?.invalidate()
        self.timer = nil
    }
    
    
    @objc func fire()
    {
        if Auth.auth().currentUser == nil {
//            let loginController = LoginVC()
//            self.navigationController?.pushViewController(loginController, animated: true)
            
            let transition: CATransition = CATransition()
            transition.duration = 0.4
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            transition.type = CATransitionType.fade
            self.navigationController!.view.layer.add(transition, forKey: nil)

            let vc = LoginVC()
            self.navigationController?.pushViewController(vc, animated: false)
            
        }else{
//            let loginController = MainVC()
//            isNavigateToLaunchVC = true
//            self.navigationController?.pushViewController(loginController, animated: true)
            let transition: CATransition = CATransition()
            transition.duration = 0.4
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            transition.type = CATransitionType.fade
            self.navigationController!.view.layer.add(transition, forKey: nil)

            let vc = MainVC()
            isNavigateToLaunchVC = true
            self.navigationController?.pushViewController(vc, animated: false)
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
