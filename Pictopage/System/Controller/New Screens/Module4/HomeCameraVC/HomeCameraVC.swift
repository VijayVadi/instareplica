//
//  HomeCameraVC.swift
//  Pictopage
//
//  Created by Grewon on 30/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import LLSimpleCamera

class HomeCameraVC: UIViewController {
    
    var cameraView: LLSimpleCamera?
    
    var navView : NavigationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navView?.navigationDelegate = self
    
        self.cameraView = LLSimpleCamera()
        self.cameraView = LLSimpleCamera(quality: AVCaptureSession.Preset.high.rawValue, position: LLCameraPositionRear, videoEnabled: false)
        self.cameraView!.attach(to: self, withFrame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        
        //        weak var weakSelf = self
        self.cameraView!.onDeviceChange = { camera, device in
            print("Device changed.")
            
//            if self.cameraView?.isFlashAvailable() != nil {
//                navView.falshButtonBottomView.isHidden = false
//
//                if self.cameraView?.flash == LLCameraFlashOff {
//                    navView.falshButtonImageview.image = UIImage(named: "falshOffIcon")
//                } else {
//                    navView.falshButtonImageview.image = UIImage(named: "flashOn")
//                }
//            } else {
//                navView.falshButtonBottomView.isHidden = true
//            }
            
        }
        
        cameraView!.onError = { camera, error in
            if let error = error {
                print("Camera error: \(error)")
            }
            if (((error as NSError?)?.domain) == LLSimpleCameraErrorDomain) {
                if (error as NSError?)?.code == Int(Float(LLSimpleCameraErrorCodeCameraPermission.rawValue)){
                    print(error!.localizedDescription)
                }
            }
        }
        
        self.cameraView!.view.frame = self.view.frame
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // start the camera
        if isCameraVC{
            self.cameraView?.start()
        }else{
            self.cameraView?.stop()
        }
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("will Disappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        print("HomeCameraVC")
    }
    
    
}

extension HomeCameraVC : NavigationDelegate{
    
    func changedScreen(isStart: Bool, offset: CGFloat) {
        if isStart{
            DispatchQueue.main.async {
                if offset == 0.0{
                    self.cameraView?.start()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.04, execute: {
                        UIView.animate(withDuration: 0.15) {
                            self.cameraView?.view.layer.opacity = 1.0
                        }
                    })
                }
            }
        }else{
            self.cameraView?.stop()
            self.cameraView?.view.layer.opacity = 0.0
        }
    }
    
    func captureButtonClick() {
        print("click capture")
        self.cameraView!.capture({ camera, image, metadata, error in
            if error == nil
            {
                
                self.cameraView?.stop()
                self.cameraView?.view.layer.opacity = 0.0
                let vc = addCaptionVC()
                vc.selectImage = image!
                let navController = UINavigationController(rootViewController: vc)
                navController.navigationBar.isHidden = true
                navController.modalPresentationStyle = .fullScreen
                self.present(navController, animated: false, completion: nil)
            }
        }, exactSeenImage: true) 
    }
    
    func flashButtonClick() {
        if self.cameraView!.flash == LLCameraFlashOff {
            self.cameraView!.updateFlashMode(LLCameraFlashOn)
        } else {
            self.cameraView!.updateFlashMode(LLCameraFlashOff)
        }
    }
    
    func gallryButtonClick() {
        print("click gallery")
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = false
        self.present(imagePickerController, animated: true, completion: nil)
    }
    
    func swapCameraButtonClick() {
        print("click swap camera")
        self.cameraView?.togglePosition()
    }
    
}

extension HomeCameraVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = (info[UIImagePickerController.InfoKey.originalImage] as? UIImage) else { return }
        print(image)
        self.dismiss(animated: true, completion: nil)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            
            self.cameraView?.stop()
            self.cameraView?.view.layer.opacity = 0.0
            
            let vc = addCaptionVC()
            vc.selectImage = image
            let navController = UINavigationController(rootViewController: vc)
            navController.navigationBar.isHidden = true
            navController.modalPresentationStyle = .fullScreen
            self.present(navController, animated: false, completion: nil)
        }
    }
}
