//
//  profileCreatorPofilePictureVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 20/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import CropViewController
import SVProgressHUD

class profileCreatorPofilePictureVC: UIViewController {

    let headerview: UIView = {
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
    
    let titleLabel : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Profile Creator"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DataView: UIView = {
        let v = UIView()
        return v
    }()
    
    let DataViewBackgroundImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "profileCreatorGredian1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let ImageMainView: UIView = {
        let v = UIView()
        return v
    }()
    
    let ImageMainBorderImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "userProfileBorder1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleToFill
        return backButtonImageView
    }()
    
    let profileImageView: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "userLogo1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFill
        return backButtonImageView
    }()
    
    let NameLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Firstname Lastname"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pictoIDLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "pictoID"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable1 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Choose a Profile Picture"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let DescriptionsLable2 : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Click on the icon bellow."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let selectImageMainView: UIView = {
        let v = UIView()
        return v
    }()
    
    let profileImageViewNew: UIImageView = {
        let backButtonImageView = UIImageView()
        backButtonImageView.image = UIImage(named: "userLogo1x")
        backButtonImageView.contentMode = UIView.ContentMode.scaleAspectFill
        return backButtonImageView
    }()

    let selectprofileImageButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    let resetButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Reset", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        return btn
    }()
    
    let orSkipView: UIView = {
        let v = UIView()
        return v
    }()
    
    let orSkipLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "or Skip"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let skipButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        return btn
    }()
    
    let saveButtonView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.layer.borderColor = black10.cgColor
        v.layer.borderWidth = 2.0
        return v
    }()
    
    let saveButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Save", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 19.0)!
        return btn
    }()
    
    private var croppingStyle = CropViewCroppingStyle.default
    var uploadedImage = UIImage()
    
    var userEmail = String()
    var userPassword = String()
    var userFisrtname = String()
    var userLastName = String()
    var userBirthday = String()
    var userPictoID = String()
    var uploadedImageURl = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // Header View
        self.view.addSubview(self.headerview)
        self.headerview.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
        
        // Title Label
        self.headerview.addSubview(self.titleLabel)
        self.titleLabel.anchor(top: self.headerview.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 147, height: 21)
        self.titleLabel.centerXAnchor.constraint(equalTo: self.headerview.centerXAnchor).isActive = true
        
        // Back Button
        self.headerview.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: nil, right: nil, paddingTop: 14.5, paddingLeft: 27, paddingBottom: 0, paddingRight: 0, width: 9, height: 15)
        
        self.headerview.addSubview(self.backButton)
        self.backButton.anchor(top: self.headerview.topAnchor, left: self.headerview.leftAnchor, bottom: self.headerview.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 36, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        // Data View
        
        self.view.addSubview(self.DataView)
        self.DataView.anchor(top: self.headerview.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 282, height: 205)
        self.DataView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.DataView.addSubview(self.DataViewBackgroundImageView)
        self.DataViewBackgroundImageView.anchor(top: self.DataView.topAnchor, left: self.DataView.leftAnchor, bottom: self.DataView.bottomAnchor, right: self.DataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.DataView.addSubview(self.ImageMainView)
        self.ImageMainView.anchor(top: self.DataView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 28, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 71.5, height: 71.5)
        self.ImageMainView.centerXAnchor.constraint(equalTo: self.DataView.centerXAnchor).isActive = true
        
        self.ImageMainView.addSubview(self.ImageMainBorderImageView)
        self.ImageMainBorderImageView.anchor(top: self.ImageMainView.topAnchor, left: self.ImageMainView.leftAnchor, bottom: self.ImageMainView.bottomAnchor, right: self.ImageMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.ImageMainView.addSubview(self.profileImageView)
        self.profileImageView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        self.profileImageView.centerXAnchor.constraint(equalTo: self.ImageMainView.centerXAnchor).isActive = true
        self.profileImageView.centerYAnchor.constraint(equalTo: self.ImageMainView.centerYAnchor).isActive = true
        self.profileImageView.layer.cornerRadius = 22.5
        self.profileImageView.clipsToBounds = true
        
        self.DataView.addSubview(self.NameLable)
        self.NameLable.anchor(top: self.ImageMainView.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 18)
        
        self.DataView.addSubview(self.pictoIDLable)
        self.pictoIDLable.anchor(top: self.NameLable.bottomAnchor, left: self.DataView.leftAnchor, bottom: nil, right: self.DataView.rightAnchor, paddingTop: 9.5, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 16)
        
        // discription lable 1
        self.view.addSubview(self.DescriptionsLable1)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.DescriptionsLable1.anchor(top: self.DataView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 18, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 24)
        }else{
            self.DescriptionsLable1.anchor(top: self.DataView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 35, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 24)
        }
        
        // discription lable 2
        self.view.addSubview(self.DescriptionsLable2)
        self.DescriptionsLable2.anchor(top: self.DescriptionsLable1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 4, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 22)
        
        // select profile view
        
        self.view.addSubview(self.selectImageMainView)
        self.selectImageMainView.anchor(top: self.DescriptionsLable2.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 34, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 95, height: 95)
        self.selectImageMainView.layer.cornerRadius = 47.5
        self.selectImageMainView.clipsToBounds = true
        self.selectImageMainView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.selectImageMainView.addSubview(self.profileImageViewNew)
        self.profileImageViewNew.anchor(top: self.selectImageMainView.topAnchor, left: self.selectImageMainView.leftAnchor, bottom: self.selectImageMainView.bottomAnchor, right: self.selectImageMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.selectImageMainView.addSubview(self.selectprofileImageButton)
        self.selectprofileImageButton.anchor(top: self.selectImageMainView.topAnchor, left: self.selectImageMainView.leftAnchor, bottom: self.selectImageMainView.bottomAnchor, right: self.selectImageMainView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.selectprofileImageButton.addTarget(self, action: #selector(self.click_selectProfile), for: .touchUpInside)
        
        
        // reset button
        self.view.addSubview(self.resetButton)
        self.resetButton.anchor(top: self.selectImageMainView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 52, height: 22)
        self.resetButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.resetButton.addTarget(self, action: #selector(self.click_reset), for: .touchUpInside)
        
        // orSkipView
        self.view.addSubview(self.orSkipView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.orSkipView.anchor(top: nil, left: nil, bottom: self.view.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 18, paddingRight: 0, width: 62, height: 22)
        }else{
            self.orSkipView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 87, paddingRight: 0, width: 62, height: 22)
        }
        self.orSkipView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.orSkipView.addSubview(self.orSkipLable)
        self.orSkipLable.anchor(top: self.orSkipView.topAnchor, left: self.orSkipView.leftAnchor, bottom: self.orSkipView.bottomAnchor, right: self.orSkipView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        let myString = "or Skip"
        let myString1 = "Skip"
        let targetString = myString
        let range = NSMakeRange(myString.count - myString1.count, myString1.count)
        
        self.orSkipLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: targetString, BoldRange: range, font1: UIFont(name: "HelveticaNeue", size: 19.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 19.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        
        self.orSkipView.addSubview(self.skipButton)
        self.skipButton.anchor(top: self.orSkipView.topAnchor, left: self.orSkipView.leftAnchor, bottom: self.orSkipView.bottomAnchor, right: self.orSkipView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.skipButton.addTarget(self, action: #selector(self.click_skip), for: .touchUpInside)
        
        // save button
        self.view.addSubview(self.saveButtonView)
        self.saveButtonView.anchor(top: nil, left: nil, bottom: self.orSkipView.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 15, paddingRight: 0, width: 281, height: 45)
        self.saveButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.saveButtonView.layer.cornerRadius = 22.5
        self.saveButtonView.clipsToBounds = true
        
        self.saveButtonView.addSubview(self.saveButton)
        self.saveButton.anchor(top: self.saveButtonView.topAnchor, left: self.saveButtonView.leftAnchor, bottom: self.saveButtonView.bottomAnchor, right: self.saveButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.saveButton.addTarget(self, action: #selector(self.click_save), for: .touchUpInside)
        
        self.setValue()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.croppingStyle = .circular
    }
    
    
    func setValue(){
        
        self.NameLable.text = self.userFisrtname + " " + self.userLastName
        self.pictoIDLable.text = self.userPictoID
        
        let image = self.uploadedImageURl
        self.profileImageView.kf.indicatorType = .activity
        self.profileImageView.kf.setImage(with: URL(string: image))
        self.profileImageViewNew.kf.setImage(with: URL(string: image))
        
    }

    // MARK:- Button Action
    
    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_selectProfile(){
        print("select profile")
        ImagePicker().pickImage(self){ image in
            let cropController = CropViewController(croppingStyle: .circular, image: image)
            cropController.customAspectRatio = CGSize(width: 50.0, height: 50.0)
            cropController.delegate = self
            cropController.aspectRatioLockDimensionSwapEnabled = true
            cropController.aspectRatioLockEnabled = true
            cropController.cropView.cropBoxResizeEnabled = false
            cropController.aspectRatioPickerButtonHidden = true
            cropController.resetButtonHidden = true
            cropController.modalPresentationStyle = .fullScreen
            if self.croppingStyle == .circular {
                self.present(cropController, animated: true, completion: nil)
            }else {
                self.present(cropController, animated: true, completion: nil)
            }
        }
    }
    
    @objc func click_reset(){
        print("select profile")
        self.ImageMainBorderImageView.isHidden = false
        self.profileImageView.image = UIImage(named: "userLogo1x")
        self.profileImageViewNew.image = UIImage(named: "userLogo1x")
        self.uploadedImage = UIImage(named: "userLogo1x")!
    }
    
    @objc func click_skip(){
        print("select skip")
        let vc = profiltCreatorBioVC()
        vc.userEmail = self.userEmail
        vc.userFisrtname = self.userFisrtname
        vc.userLastName = self.userLastName
        vc.userPassword = self.userPassword
        vc.userBirthday = self.userBirthday
        vc.userPictoID = self.userPictoID
        vc.uploadedImageURl = self.uploadedImageURl
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func click_save(){
        print("select save")
        let vc = profiltCreatorBioVC()
        vc.userEmail = self.userEmail
        vc.userFisrtname = self.userFisrtname
        vc.userLastName = self.userLastName
        vc.userPassword = self.userPassword
        vc.userBirthday = self.userBirthday
        vc.userPictoID = self.userPictoID
        vc.uploadedImageURl = self.uploadedImageURl
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension profileCreatorPofilePictureVC: CropViewControllerDelegate
{
    public func cropViewController(_ cropViewController: CropViewController, didCropToImage image: UIImage, withRect cropRect: CGRect, angle: Int) {
        print(image)
        cropViewController.dismiss(animated: true) {
            self.ImageMainBorderImageView.isHidden = true
            self.profileImageView.image = image
            self.profileImageViewNew.image = image
            self.uploadedImage = image
            self.uploadUserProfileImage()
        }
    }
}


// MARK:- Update User Data

extension profileCreatorPofilePictureVC{
        
    func uploadUserProfileImage(){
        SVProgressHUD.show()
        FirebaseClient.sharedInstance.uploadUserProfileImage(image: self.uploadedImage, completionSuccess: { (DownloadURL) in
            print(DownloadURL as! String)
            SVProgressHUD.dismiss()
            self.uploadedImageURl = DownloadURL as! String
            self.updateUserData()
        }) { (error) in
            SVProgressHUD.dismiss()
            print(error)
        }
    }
    
    func updateUserData(){
        
        let params = [
            "ProfilePicture": self.uploadedImageURl
        ]
        
        FirebaseClient.sharedInstance.updateUserData(params: params, completionStatus: { (isUpdate) in
            print(isUpdate)
        }) { (error) in
            print(error)
        }
        
    }
    
}
