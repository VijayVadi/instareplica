//
//  cameraVC.swift
//  Pictopage
//
//  Created by Grewon on 26/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import LLSimpleCamera

class cameraVC: UIViewController, AVCapturePhotoCaptureDelegate, UIViewControllerTransitioningDelegate {

    var cameraView: LLSimpleCamera?
    
    let ButtonBottomView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let SwapCameraButtonBottomView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let SwapCameraButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let SwapCameraButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "SwapCamera")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    
    let gallryButtonBottomView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let gallryCameraButton: UIButton = {
        let btn = UIButton()
        return btn
    }()

    let gallryButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "gallryIcon")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let falshButtonBottomView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let falshCameraButton: UIButton = {
        let btn = UIButton()
        return btn
    }()

    let falshButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "falshOffIcon")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let captureButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let captureButton: UIButton = {
        let btn = UIButton()
        return btn
    }()

    let captureButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "camera1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    
    let closeButtonMainView: UIView = {
    let logov = UIView()
    return logov
    }()
    
    let closeImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "Oval")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let closeButtonImageview: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "close_white1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let closeButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let errorLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "We need permission for the camera.\nPlease go to your settings."
        lbl.numberOfLines = 2
        lbl.lineBreakMode = .byWordWrapping
        lbl.backgroundColor = UIColor.clear
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 13.0)!
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        return lbl
    }()
    
    let pageTitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 13.0)!
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.black
        
        
        // setup camera view
        self.cameraView = LLSimpleCamera()
        self.cameraView = LLSimpleCamera(quality: AVCaptureSession.Preset.high.rawValue, position: LLCameraPositionRear, videoEnabled: false)
        self.cameraView!.attach(to: self, withFrame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        
//        weak var weakSelf = self
        self.cameraView!.onDeviceChange = { camera, device in
            
            print("Device changed.")
            
            if self.cameraView?.isFlashAvailable() != nil {
                self.falshButtonBottomView.isHidden = false
                
                if self.cameraView?.flash == LLCameraFlashOff {
                    self.falshButtonImageview.image = UIImage(named: "falshOffIcon")
                } else {
                    self.falshButtonImageview.image = UIImage(named: "flashOn")
                }
            } else {
                self.falshButtonBottomView.isHidden = true
            }
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
        
        // set button bottom view
        
        self.view.addSubview(self.ButtonBottomView)
        self.ButtonBottomView.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 5, paddingRight: 0, width: 200, height: 40)
        self.ButtonBottomView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
            // setup Swap camera button view
        
            self.ButtonBottomView.addSubview(self.SwapCameraButtonBottomView)
            self.SwapCameraButtonBottomView.anchor(top: nil, left: self.ButtonBottomView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
            self.SwapCameraButtonBottomView.centerYAnchor.constraint(equalTo: self.ButtonBottomView.centerYAnchor).isActive = true
        
            self.SwapCameraButtonBottomView.addSubview(self.SwapCameraButtonImageview)
            self.SwapCameraButtonImageview.anchor(top: self.SwapCameraButtonBottomView.topAnchor, left: self.SwapCameraButtonBottomView.leftAnchor, bottom: self.SwapCameraButtonBottomView.bottomAnchor, right: self.SwapCameraButtonBottomView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
            self.SwapCameraButtonBottomView.addSubview(self.SwapCameraButton)
            self.SwapCameraButton.anchor(top: self.SwapCameraButtonBottomView.topAnchor, left: self.SwapCameraButtonBottomView.leftAnchor, bottom: self.SwapCameraButtonBottomView.bottomAnchor, right: self.SwapCameraButtonBottomView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
            self.SwapCameraButton.addTarget(self, action: #selector(self.click_switchCamera), for: .touchUpInside)
        
        
            // setup gallry button view
        
            self.ButtonBottomView.addSubview(self.gallryButtonBottomView)
            self.gallryButtonBottomView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 60, height: 30)
            self.gallryButtonBottomView.centerYAnchor.constraint(equalTo: self.ButtonBottomView.centerYAnchor).isActive = true
            self.gallryButtonBottomView.centerXAnchor.constraint(equalTo: self.ButtonBottomView.centerXAnchor).isActive = true
        
            self.gallryButtonBottomView.addSubview(self.gallryButtonImageview)
            self.gallryButtonImageview.anchor(top: self.gallryButtonBottomView.topAnchor, left: self.gallryButtonBottomView.leftAnchor, bottom: self.gallryButtonBottomView.bottomAnchor, right: self.gallryButtonBottomView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)

            self.gallryButtonBottomView.addSubview(self.gallryCameraButton)
            self.gallryCameraButton.anchor(top: self.gallryButtonBottomView.topAnchor, left: self.gallryButtonBottomView.leftAnchor, bottom: self.gallryButtonBottomView.bottomAnchor, right: self.gallryButtonBottomView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
            self.gallryCameraButton.addTarget(self, action: #selector(self.click_openGallry), for: .touchUpInside)
        
        
            // setup falsh button view
        
            self.ButtonBottomView.addSubview(self.falshButtonBottomView)
            self.falshButtonBottomView.anchor(top: nil, left: nil, bottom: nil, right: self.ButtonBottomView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 36, height: 36)
            self.falshButtonBottomView.centerYAnchor.constraint(equalTo: self.ButtonBottomView.centerYAnchor).isActive = true
            self.falshButtonBottomView.clipsToBounds = true
        
            self.falshButtonBottomView.addSubview(self.falshButtonImageview)
            self.falshButtonImageview.anchor(top: self.falshButtonBottomView.topAnchor, left: self.falshButtonBottomView.leftAnchor, bottom: self.falshButtonBottomView.bottomAnchor, right: self.falshButtonBottomView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
            self.falshButtonBottomView.addSubview(self.falshCameraButton)
            self.falshCameraButton.anchor(top: self.falshButtonBottomView.topAnchor, left: self.falshButtonBottomView.leftAnchor, bottom: self.falshButtonBottomView.bottomAnchor, right: self.falshButtonBottomView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
            self.falshCameraButton.addTarget(self, action: #selector(self.click_falsh), for: .touchUpInside)
        
        
        // setup camera capture view
        
        self.view.addSubview(self.captureButtonView)
        self.captureButtonView.anchor(top: nil, left: nil, bottom: self.ButtonBottomView.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 8, paddingRight: 0, width: 85, height: 85)
        self.captureButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.captureButtonView.addSubview(self.captureButtonImageview)
        self.captureButtonImageview.anchor(top: self.captureButtonView.topAnchor, left: self.captureButtonView.leftAnchor, bottom: self.captureButtonView.bottomAnchor, right: self.captureButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.captureButtonView.addSubview(self.captureButton)
        self.captureButton.anchor(top: self.captureButtonView.topAnchor, left: self.captureButtonView.leftAnchor, bottom: self.captureButtonView.bottomAnchor, right: self.captureButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.captureButton.addTarget(self, action: #selector(self.click_capture), for: .touchUpInside)
        
        // Setup pageTitleLable
        
        self.view.addSubview(self.pageTitleLabel)
        self.pageTitleLabel.anchor(top: self.view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 22)
        self.pageTitleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let myString = "Post To "
        let myString1 = "Nature"
        let targetString = myString + myString1
        let range = NSMakeRange(0, 7)
        self.pageTitleLabel.attributedText = ApiUtillity.sharedInstance.attributedString(from: targetString, nonBoldRange: range, font1: UIFont(name: "HelveticaNeue-Medium", size: 18.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 18.0)!)
        
        // setup close button
        
        self.view.addSubview(self.closeButtonMainView)
        self.closeButtonMainView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0.0, paddingLeft: -8, paddingBottom: -8, paddingRight: 0, width: 70, height: 70)
        
        self.closeButtonMainView.addSubview(self.closeImageview)
        self.closeImageview.anchor(top: self.closeButtonMainView.topAnchor, left: self.closeButtonMainView.leftAnchor, bottom: self.closeButtonMainView.bottomAnchor, right: self.closeButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.closeButtonMainView.addSubview(self.closeButtonImageview)
        self.closeButtonImageview.anchor(top: nil, left: self.closeButtonMainView.leftAnchor, bottom: self.closeButtonMainView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: 22, paddingRight: 0, width: 22, height: 22)
        
        self.closeButtonMainView.addSubview(self.closeButton)
        self.closeButton.anchor(top: self.closeButtonMainView.topAnchor, left: self.closeButtonMainView.leftAnchor, bottom: self.closeButtonMainView.bottomAnchor, right: self.closeButtonMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.closeButton.addTarget(self, action: #selector(self.click_close), for: .touchUpInside)
    }
    

    
    // MARK:- viewWillAppear
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // start the camera
        self.cameraView!.start()
    }
    
    // MARK:- prefersStatusBarHidden
    override var prefersStatusBarHidden: Bool {
        return true
    }

    // MARK:- Button Action
    
    @objc func click_close()
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func click_openGallry()
    {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = false
        present(imagePickerController, animated: true, completion: nil)
    }
    
    @objc func click_switchCamera()
    {
        self.cameraView!.togglePosition()
    }
    
    @objc func click_falsh()
    {
        if self.cameraView!.flash == LLCameraFlashOff {
            let done = self.cameraView!.updateFlashMode(LLCameraFlashOn)
            if done {
                self.falshButtonImageview.image = UIImage(named: "flashOn")
                
            }
        } else {
            let done = self.cameraView!.updateFlashMode(LLCameraFlashOff)
            if done {
                self.falshButtonImageview.image = UIImage(named: "falshOffIcon")
            }
        }
    }
    
    @objc func click_capture()
    {
        self.cameraView!.capture({ camera, image, metadata, error in
            
            if error == nil
            {
                let vc = addCaptionVC()
                vc.selectImage = image!
                isBackUserProfileScreen = 1
                let navController = UINavigationController(rootViewController: vc)
                navController.navigationBar.isHidden = true
                navController.modalPresentationStyle = .fullScreen
                self.present(navController, animated: false, completion: nil)
            }
        }, exactSeenImage: true)
    }
    
    
    
}

extension cameraVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = (info[UIImagePickerController.InfoKey.originalImage] as? UIImage) else { return }
        print(image)
        self.dismiss(animated: true, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let vc = addCaptionVC()
            vc.selectImage = image
            isBackUserProfileScreen = 1
            let navController = UINavigationController(rootViewController: vc)
            navController.navigationBar.isHidden = true
            navController.modalPresentationStyle = .fullScreen
            self.present(navController, animated: false, completion: nil)
        }
    }
}
