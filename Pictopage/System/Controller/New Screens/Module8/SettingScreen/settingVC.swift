//
//  settingVC.swift
//  Pictopage
//
//  Created by Grewon on 21/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import Firebase

class settingVC: UIViewController, UIGestureRecognizerDelegate {

    let headerSubView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    
    let backButtonView: UIView = {
        let v = UIView()
        return v
    }()
    
    let backButtonImageView: UIImageView = {
        let logoimg = UIImageView()
        logoimg.image = UIImage(named: "backBlack_1x")
        logoimg.contentMode = UIView.ContentMode.scaleAspectFit
        return logoimg
    }()
    
    let backButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    let titleLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Settings"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let headerUnderLineView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .black
        return logov
    }()
    
    var  tableviewSetting: UITableView = {
        var tableview = UITableView()
        tableview = UITableView(frame: CGRect.zero, style: UITableView.Style.grouped)
        tableview.backgroundColor = .clear
        return tableview
    }()
    
    
    var dismissBGButton:UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        button.addTarget(self, action: #selector(dismissPopup), for: .touchUpInside)
        return button
    }()
    
    var popupView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.clipsToBounds = true
        return v
    }()
    
    var popupHeadingTitle:UILabel = {
       let lbl = UILabel()
        lbl.textColor = .black
        lbl.textAlignment = .left
        lbl.text = "Edit Profile"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        return lbl
    }()
    
    var downArrowBtn:UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = .clear
        button.setImage(UIImage(named: "downArrowblack1x")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.imageView?.tintColor = Black101010
        button.addTarget(self, action: #selector(dismissPopup), for: .touchUpInside)
        return button
    }()
    
    var popupOptionBtnsView:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    var profilePicView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    var bioView:UIView = {
        let v = UIView()
        v.backgroundColor = .white
        return v
    }()
    
    let userSmileImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "userLogo1x")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let bioBarImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bio_bar")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let profilePictureLbl : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Profile Picture"
        lbl.font = UIFont(name: "HelveticaNeue", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let bioLbl : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Bio"
        lbl.font = UIFont(name: "HelveticaNeue", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let profilePicButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.addTarget(self, action: #selector(onClick_profileBtn), for: .touchUpInside)
        return btn
    }()
    
    let bioButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.addTarget(self, action: #selector(onClick_bioBtn), for: .touchUpInside)
        return btn
    }()
    
    var bottomPopupViewBC = NSLayoutConstraint()
    
    // MARK:- Declare veriables
    
    var AccountTitleArr = ["Email", "Password", "Picto id", "Birthday", "More"]
    var AccountImageArr = ["iconSetting_email_1x", "iconSetting_changePassword_1x", "menu_id", "iconSetting_birthday_1x", "setting_more1x"]
    
    var GeneralTitleArr = ["Notifications", "About"]
    var GeneralImageArr = ["iconSetting_notification_1x", "iconSetting_about_1x"]
    
    var SupportTitleArr = ["Report a Problem", "Feedback"]
    var SupportImageArr = ["iconSetting_reportProblem_1x", "iconSetting_feedback_1x"]
    
    var LegalTitleArr = ["Privacy Policy", "Terms and Conditions"]
    var LegalImageArr = ["iconSetting_privacyPolicy_1x", "iconSetting_termsConditions_1x"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        self.view.backgroundColor = .white

        // setup Header view
        
        self.view.addSubview(self.headerSubView)
        self.headerSubView.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
        
        self.headerSubView.addSubview(self.backButtonView)
        self.backButtonView.anchor(top: nil, left: self.headerSubView.leftAnchor, bottom: self.headerSubView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 36, height: 32)
        
        self.backButtonView.addSubview(self.backButtonImageView)
        self.backButtonImageView.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: nil, right: nil, paddingTop: 14.5, paddingLeft: 27, paddingBottom: 0, paddingRight: 0, width: 9, height: 15)
        
        self.backButtonView.addSubview(self.backButton)
        self.backButton.anchor(top: self.backButtonView.topAnchor, left: self.backButtonView.leftAnchor, bottom: self.backButtonView.bottomAnchor, right: self.backButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.headerSubView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerSubView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 11, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 80, height: 21)
        self.titleLable.centerXAnchor.constraint(equalTo: self.headerSubView.centerXAnchor).isActive = true
        
        self.headerSubView.addSubview(self.headerUnderLineView)
        self.headerUnderLineView.anchor(top: nil, left: self.headerSubView.leftAnchor, bottom: self.headerSubView.bottomAnchor, right: self.headerSubView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        self.headerUnderLineView.isHidden = true
        
        // setup Tableview
        
        self.view.addSubview(self.tableviewSetting)
        self.tableviewSetting.anchor(top: self.headerSubView.bottomAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.setUpTableview()
        
        
        
        // setup bottom view
        
        self.view.addSubview(self.dismissBGButton)
        self.dismissBGButton.fillSuperview()
        self.dismissBGButton.isHidden = true
        
        self.view.addSubview(self.popupView)
        self.popupView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -500, paddingRight: 0, width: 0, height: 240)
        self.popupView.layer.masksToBounds = true
        self.popupView.layer.cornerRadius = 15
        self.popupView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.popupView.layoutIfNeeded()
        self.bottomPopupViewBC = self.popupView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 500)
        self.bottomPopupViewBC.isActive = true
        
        self.popupView.addSubview(self.popupHeadingTitle)
        self.popupHeadingTitle.anchor(top: self.popupView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        self.popupHeadingTitle.centerX(inView: self.popupView)
        
        self.popupView.addSubview(self.downArrowBtn)
        self.downArrowBtn.anchor(top: self.popupView.topAnchor, left: nil, bottom: nil, right: self.popupView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 25, width: 17, height: 10)
        
        self.popupView.addSubview(self.popupOptionBtnsView)
        self.popupOptionBtnsView.anchor(top: self.popupHeadingTitle.bottomAnchor, left: self.popupView.leftAnchor, bottom: nil, right: self.popupView.rightAnchor, paddingTop: 24, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 150)
        
        self.popupOptionBtnsView.addSubview(self.profilePicView)
        self.profilePicView.anchor(top: self.popupOptionBtnsView.topAnchor, left: self.popupOptionBtnsView.leftAnchor, bottom: self.popupOptionBtnsView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 150)
        self.profilePicView.layer.cornerRadius = 20
        self.profilePicView.layer.applySketchShadowYOne(y: 1.0)
        
        self.popupOptionBtnsView.addSubview(self.bioView)
        self.bioView.anchor(top: self.popupOptionBtnsView.topAnchor, left: nil, bottom: self.popupOptionBtnsView.bottomAnchor, right: self.popupOptionBtnsView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 150)
        self.bioView.layer.cornerRadius = 20
        self.bioView.layer.applySketchShadowYOne(y: 1.0)
        
        self.profilePicView.addSubview(self.userSmileImageView)
        self.userSmileImageView.anchor(top: self.profilePicView.topAnchor, left: self.profilePicView.leftAnchor, bottom: nil, right: self.profilePicView.rightAnchor, paddingTop: 15, paddingLeft: 37.5, paddingBottom: 0, paddingRight: 37.5, width: 0, height: 75)
        
        self.bioView.addSubview(self.bioBarImageView)
        self.bioBarImageView.anchor(top: self.bioView.topAnchor, left: self.bioView.leftAnchor, bottom: nil, right: self.bioView.rightAnchor, paddingTop: 35, paddingLeft: 42, paddingBottom: 0, paddingRight: 42, width: 0, height: 42)
        
        self.profilePicView.addSubview(self.profilePictureLbl)
        self.profilePictureLbl.anchor(top: self.userSmileImageView.bottomAnchor, left: self.profilePicView.leftAnchor, bottom: nil, right: self.profilePicView.rightAnchor, paddingTop: 15, paddingLeft: 18.5, paddingBottom: 0, paddingRight: 18.5, width: 0, height: 21)
        
        self.bioView.addSubview(self.bioLbl)
        self.bioLbl.anchor(top: self.bioBarImageView.bottomAnchor, left: self.bioView.leftAnchor, bottom: nil, right: self.bioView.rightAnchor, paddingTop: 28, paddingLeft: 61.5, paddingBottom: 0, paddingRight: 61.5, width: 0, height: 21)
        
        self.profilePicView.addSubview(self.profilePicButton)
        self.profilePicButton.fillSuperview()
        
        self.bioView.addSubview(self.bioButton)
        self.bioButton.fillSuperview()
    }
    
    // MARK:- SetUp tableView
    
    func setUpTableview()
    {
        tableviewSetting.register(settingHeaderCell.self, forCellReuseIdentifier: "settingHeaderCell")
        tableviewSetting.register(settingDataCell.self, forCellReuseIdentifier: "settingDataCell")
        tableviewSetting.register(settingLogoutCell.self, forCellReuseIdentifier: "settingLogoutCell")
        tableviewSetting.register(companyInfo_cell.self, forCellReuseIdentifier: "companyInfo_cell")
        tableviewSetting.register(settingDivider_cell.self, forCellReuseIdentifier: "settingDivider_cell")
        tableviewSetting.register(QuickControlsDataCell.self, forCellReuseIdentifier: QuickControlsDataCell.cellID)
        tableviewSetting.dataSource = self
        tableviewSetting.delegate = self
        tableviewSetting.tableFooterView = UIView()
        tableviewSetting.separatorStyle = .none
        self.tableviewSetting.showsVerticalScrollIndicator = false
        
    }
    

    // MARK:- Button Action
    @objc func click_back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_logout() {
        print("logout")
        
        let fcm = Defaults[.FCMToken]
        Defaults.removeAll()
        Defaults[.FCMToken] = fcm
        try! Auth.auth().signOut()
        let loginController = ViewController()
        loginController.modalPresentationStyle = .fullScreen
        self.present(loginController, animated: true, completion: nil)
        
    }
    
    @objc func handleEditOptionClick(sender:UIButton) {
        showHidePopupView(constant: 0, isHidden: false, aView: popupView)
    }
    
    @objc func handleTapSwitchBtn(sender:UIButton) {
    }
    
    @objc func dismissPopup(sender:UIButton) {
       showHidePopupView(constant: 500, isHidden: true, aView: popupView)
    }
    
    @objc func onClick_profileBtn() {
       print("DEBUG: Profile Btn Tapped")
    }
    
    @objc func onClick_bioBtn() {
       print("DEBUG: Bio Btn Tapped")
    }
}


// MARK:- Tableview Methods

extension settingVC: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 11
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if section == 0 {
            return 1
        } else if section == 1 {
            return 5
        } else if section == 2 {
            return 1
        }else if section == 3 {
            return 2
        }else if section == 4 {
            return 1
        }else if section == 5 {
            return 2
        }else if section == 6 {
            return 1
        }else if section == 7 {
            return 2
        }else if section == 8 {
            return 1
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
 
        if section == 0 || section == 1 || section == 3 || section == 5 || section == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingHeaderCell") as! settingHeaderCell
            if section == 0 {
                cell.titleLable.text = "Quick Controls"
            } else if section == 1 {
                cell.titleLable.text = "Account"
            } else if section == 3 {
                cell.titleLable.text = "General"
            } else if section == 5 {
                cell.titleLable.text = "Support"
            } else {
                cell.titleLable.text = "Legal"
            }
            cell.selectionStyle = .none
            return cell
        }else{
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0 || section == 1 || section == 3 || section == 5 || section == 7{
            return 34
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return  0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: QuickControlsDataCell.cellID, for: indexPath) as! QuickControlsDataCell
            cell.selectionStyle = .none
            cell.contentView.isHidden = true
            
            cell.editOptionBtn.tag = indexPath.row
            cell.tapSwitchBtn.tag = indexPath.row
            cell.editOptionBtn.addTarget(self, action: #selector(handleEditOptionClick), for: .touchUpInside)
            cell.tapSwitchBtn.addTarget(self, action: #selector(handleTapSwitchBtn), for: .touchUpInside)
            
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingDataCell", for: indexPath) as! settingDataCell
            cell.dataTitleLable.text = self.AccountTitleArr[indexPath.row]
            cell.dataIconImage.image = UIImage(named: self.AccountImageArr[indexPath.row])
            cell.selectionStyle = .none
            return cell
        }else if indexPath.section == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingDivider_cell", for: indexPath) as! settingDivider_cell
            cell.selectionStyle = .none
            cell.dividerView.isHidden = false
            return cell
        }else if indexPath.section == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingDataCell", for: indexPath) as! settingDataCell
            cell.dataTitleLable.text = self.GeneralTitleArr[indexPath.row]
            cell.dataIconImage.image = UIImage(named: self.GeneralImageArr[indexPath.row])
            cell.selectionStyle = .none
            return cell
        }else if indexPath.section == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingDivider_cell", for: indexPath) as! settingDivider_cell
            cell.selectionStyle = .none
            cell.dividerView.isHidden = false
            return cell
        }else if indexPath.section == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingDataCell", for: indexPath) as! settingDataCell
            cell.dataTitleLable.text = self.SupportTitleArr[indexPath.row]
            cell.dataIconImage.image = UIImage(named: self.SupportImageArr[indexPath.row])
            cell.selectionStyle = .none
            return cell
        }else if indexPath.section == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingDivider_cell", for: indexPath) as! settingDivider_cell
            cell.selectionStyle = .none
            cell.dividerView.isHidden = false
            return cell
        }else if indexPath.section == 7{
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingDataCell", for: indexPath) as! settingDataCell
            cell.dataTitleLable.text = self.LegalTitleArr[indexPath.row]
            cell.dataIconImage.image = UIImage(named: self.LegalImageArr[indexPath.row])
            cell.selectionStyle = .none
            return cell
        }else if indexPath.section == 8{
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingDivider_cell", for: indexPath) as! settingDivider_cell
            cell.selectionStyle = .none
            cell.dividerView.isHidden = true
            return cell
        }else if indexPath.section == 9{
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingLogoutCell", for: indexPath) as! settingLogoutCell
            cell.selectionStyle = .none
            cell.contentView.isHidden = true
            cell.LogoutButton.addTarget(self, action: #selector(self.click_logout), for: .touchUpInside)
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "companyInfo_cell", for: indexPath) as! companyInfo_cell
            cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                let vc = changeEmailVC()
                self.navigationController?.pushViewController(vc, animated: true)
            } else if indexPath.row == 1 {
                let vc = changePasswordVC()
                self.navigationController?.pushViewController(vc, animated: true)
            } else if indexPath.row == 2 {
                let vc = PictoIDVC()
                self.navigationController?.pushViewController(vc, animated: true)
            } else if indexPath.row == 3 {
                let vc = changeBirthDayDateVC()
                self.navigationController?.pushViewController(vc, animated: true)
            } else if indexPath.row == 4 {
//                let user = Auth.auth().currentUser
//                user?.delete { error in
//                    if error != nil {
//                        print(error!._code)
//
//                        if error!._code == 17014 {
//                            self.view.makeToast("Login again.")
//                        } else {
//                            self.view.makeToast(error?.localizedDescription)
//                        }
//                        return
//                    } else {
//                        let fcm = Defaults[.FCMToken]
//                        Defaults.removeAll()
//                        Defaults[.FCMToken] = fcm
//                        try! Auth.auth().signOut()
//                        let loginController = ViewController()
//                        loginController.modalPresentationStyle = .fullScreen
//                        self.present(loginController, animated: true, completion: nil)
//                    }
//                }
                
                self.view.makeToast("Under Development")
            }
        } else if indexPath.section == 3 {
            if indexPath.row == 0 {
                let vc = NotificationVC()
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 182
        } else if indexPath.section == 1{
            return 40
        }else if indexPath.section == 2{
            return 16
        }else if indexPath.section == 3{
            return 40
        }else if indexPath.section == 4{
            return 16
        }else if indexPath.section == 5{
            return 40
        }else if indexPath.section == 6{
            return 16
        }else if indexPath.section == 7{
            return 40
        }else if indexPath.section == 8{
            return 16
        }else if indexPath.section == 9{
            return 50
        }else{
            return 100
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 182
        } else if indexPath.section == 1{
            return 40
        }else if indexPath.section == 2{
            return 16
        }else if indexPath.section == 3{
            return 40
        }else if indexPath.section == 4{
            return 16
        }else if indexPath.section == 5{
            return 40
        }else if indexPath.section == 6{
            return 16
        }else if indexPath.section == 7{
            return 40
        }else if indexPath.section == 8{
            return 16
        }else if indexPath.section == 9{
            return 50
        }else{
            return 100
        }
    }
}

extension settingVC: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)
        
        if scrollView.contentOffset.y > 0 {
            self.headerUnderLineView.isHidden = false
        } else {
            self.headerUnderLineView.isHidden = true
        }
    }
}

//Helpers
extension settingVC {
    func showHidePopupView(constant: CGFloat, isHidden: Bool, aView: UIView) {
        if isHidden {
            self.dismissBGButton.isHidden = true
        } else {
            self.dismissBGButton.isHidden = false
        }
        
        if aView == popupView {
            self.bottomPopupViewBC.constant = constant
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}
