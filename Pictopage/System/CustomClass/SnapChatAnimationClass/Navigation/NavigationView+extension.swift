//
//  NavigationView+extension.swift
//  SnapChatCL
//
//  Created by Morshed Alam on 14/9/18.
//  Copyright © 2018 Morshed Alam. All rights reserved.
//

import UIKit

// MARK: - Animations
extension NavigationView {
    
    func animateIconColor(offset: CGFloat) {

        cameraBtnWhiteImageView.alpha = 1 - offset
        cameraBtnGrayImageView.alpha = offset
        
        if isCameraVC == true{
            UIView.animate(withDuration: 0.5, animations: {
                self.homeOvalImageview.alpha = 1
                self.userOvalImageview.alpha = 1
            })
        }else{
            self.homeOvalImageview.alpha = offset
            self.userOvalImageview.alpha = offset
        }
    }
    
    func animateIconPosition(offset: CGFloat) {
        // Line the controls up along the bottom
        
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            let finalDistanceFromBottom: CGFloat = 10.0
            var distance = cameraButtonBottomConstraintConstant - finalDistanceFromBottom
            print("cameraButtonBottomConstraintConstant", cameraButtonBottomConstraintConstant - (distance * offset))
            cameraButtonBottomConstraint.constant = cameraButtonBottomConstraintConstant - (distance * offset)
            
            let finalDistanceFromBottom1: CGFloat = 100.0
            distance = bottomIconViewBottomConstraintConstant - finalDistanceFromBottom1
            bootomIconBottomConstraint.constant = bottomIconViewBottomConstraintConstant - (distance * offset)
        }else{
            if offset > 1{
//                let finalDistanceFromBottom: CGFloat = 10.0
//                var distance = cameraButtonBottomConstraintConstant - finalDistanceFromBottom
//                print("cameraButtonBottomConstraintConstant offset > 1", cameraButtonBottomConstraintConstant - (distance * offset))
//                cameraButtonBottomConstraint.constant = cameraButtonBottomConstraintConstant - (distance * offset)
//
//                let finalDistanceFromBottom1: CGFloat = 100.0
//                distance = bottomIconViewBottomConstraintConstant - finalDistanceFromBottom1
//                bootomIconBottomConstraint.constant = bottomIconViewBottomConstraintConstant - (distance * offset)
            }else{
                let finalDistanceFromBottom: CGFloat = 10.0
                var distance = cameraButtonBottomConstraintConstant - finalDistanceFromBottom
                print("cameraButtonBottomConstraintConstant else", cameraButtonBottomConstraintConstant - (distance * (offset)))
                cameraButtonBottomConstraint.constant = cameraButtonBottomConstraintConstant - (distance * (offset))
                
                let finalDistanceFromBottom1: CGFloat = 100.0
                distance = bottomIconViewBottomConstraintConstant - finalDistanceFromBottom1
                bootomIconBottomConstraint.constant = bottomIconViewBottomConstraintConstant - (distance * (offset))
            }
        }
        
        
//        if offset > 1{
//            let finalDistanceFromBottom: CGFloat = 10.0
//            var distance = cameraButtonBottomConstraintConstant - finalDistanceFromBottom
//            cameraButtonBottomConstraint.constant = cameraButtonBottomConstraintConstant - (distance * offset)
//
//            let finalDistanceFromBottom1: CGFloat = 100.0
//            distance = bottomIconViewBottomConstraintConstant - finalDistanceFromBottom1
//            bootomIconBottomConstraint.constant = bottomIconViewBottomConstraintConstant - (distance * offset)
//        }else{
//            let finalDistanceFromBottom: CGFloat = 10.0
//            var distance = cameraButtonBottomConstraintConstant - finalDistanceFromBottom
//            cameraButtonBottomConstraint.constant = cameraButtonBottomConstraintConstant - (distance * offset)
//
//            let finalDistanceFromBottom1: CGFloat = 100.0
//            distance = bottomIconViewBottomConstraintConstant - finalDistanceFromBottom1
//            bootomIconBottomConstraint.constant = bottomIconViewBottomConstraintConstant - (distance * offset)
//        }
        
        
        
    }
    
    func animateIconLeftPosition(offset: CGFloat, finalDistanceFromLeft: CGFloat) {
        let distance = HomeButtonMainViewLeftConstraintConstant - finalDistanceFromLeft
        HomeButtonMainViewLeftConstraint.constant = HomeButtonMainViewLeftConstraintConstant - (distance * offset)
        UIView.animate(withDuration: 0.5) {
            self.layoutIfNeeded()
        }
    }
    
    func animateIconScale(offset: CGFloat) {
        // Scale the controls using width constraints
        
        if UIDevice.current.type == .iPhoneSE || UIDevice.current.type == .iPhone8 || UIDevice.current.type == .iPhone8Plus{
            let finalWidthScale: CGFloat = cameraButtonWidthConstraintConstant * 0.25
            cameraButtonWidthConstraint.constant = cameraButtonWidthConstraintConstant - (finalWidthScale * offset)
            print("totalWidth",cameraButtonWidthConstraintConstant * 0.25)
            print("set width",cameraButtonWidthConstraintConstant - (finalWidthScale * offset))
        }else{
            
            if offset > 1{
//                let finalWidthScale: CGFloat = cameraButtonWidthConstraintConstant * 0.25
//                cameraButtonWidthConstraint.constant = cameraButtonWidthConstraintConstant - (finalWidthScale * (offset + 0.20))
//                print("totalWidth",cameraButtonWidthConstraintConstant * 0.25)
//                print("set width",cameraButtonWidthConstraintConstant - (finalWidthScale * (offset + 0.20)))
            }else{
                let finalWidthScale: CGFloat = cameraButtonWidthConstraintConstant * 0.25
                cameraButtonWidthConstraint.constant = cameraButtonWidthConstraintConstant - (finalWidthScale * (offset))
                print("totalWidth",cameraButtonWidthConstraintConstant * 0.25)
                print("set width",cameraButtonWidthConstraintConstant - (finalWidthScale * offset))
            }
            
            
        }
        
//        if offset > 1{
//            let finalWidthScale: CGFloat = cameraButtonWidthConstraintConstant * 0.25
//            cameraButtonWidthConstraint.constant = cameraButtonWidthConstraintConstant - (finalWidthScale * offset)
//            print("totalWidth",cameraButtonWidthConstraintConstant * 0.25)
//            print("set width",cameraButtonWidthConstraintConstant - (finalWidthScale * offset))
//        }else{
//            let finalWidthScale: CGFloat = cameraButtonWidthConstraintConstant * 0.25
//            cameraButtonWidthConstraint.constant = cameraButtonWidthConstraintConstant - (finalWidthScale * offset)
//            print("totalWidth",cameraButtonWidthConstraintConstant * 0.25)
//            print("set width",cameraButtonWidthConstraintConstant - (finalWidthScale * offset))
//        }
        
        
        
    }
    
    
}
