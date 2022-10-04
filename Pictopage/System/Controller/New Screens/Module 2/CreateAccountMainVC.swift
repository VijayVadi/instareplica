//
//  CreateAccountMainVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 15/07/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

class CreateAccountMainVC: UIViewController {

    let menuView: UIView =  {
        let view = UIView()
        return view
    }()
    
    lazy var menuBarView: MenuBarView =  {
        let view = MenuBarView()
        view.superVC = self
        return view
    }()
    
    // collectionview data
    
    lazy var createAccountFlowlayout:UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        return flowLayout
    }()

    lazy var createAccountCollectionView: UICollectionView = {
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: self.createAccountFlowlayout)
        cv.translatesAutoresizingMaskIntoConstraints = true
        cv.setCollectionViewLayout(self.createAccountFlowlayout, animated: true)
        cv.dataSource = self
        cv.delegate = self

        cv.isPrefetchingEnabled = true
        cv.isSpringLoaded = false

        cv.isScrollEnabled = false
        cv.isPagingEnabled = true

        cv.isDirectionalLockEnabled = false
        cv.bouncesZoom = true
        cv.bounces = false
        cv.alwaysBounceHorizontal = true
        cv.alwaysBounceVertical = false
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        
        cv.register(createAccountEmailAndPasswordCell.self, forCellWithReuseIdentifier: "createAccountEmailAndPasswordCell")
        cv.register(createAccountFirstnameAndLastnameCell.self, forCellWithReuseIdentifier: "createAccountFirstnameAndLastnameCell")
        cv.register(createAccountBirthdayCell.self, forCellWithReuseIdentifier: "createAccountBirthdayCell")
        cv.register(createAccountPictoIDCell.self, forCellWithReuseIdentifier: "createAccountPictoIDCell")
        
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setupMenuBarView()
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        self.createAccountCollectionView.addGestureRecognizer(gestureRecognizer)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        IQKeyboardManager.shared.enableAutoToolbar = false
        IQKeyboardManager.shared.enable = false
    }
    
    //MARK:- viewWillDisappear
     override func viewWillDisappear(_ animated: Bool) {
        IQKeyboardManager.shared.enableAutoToolbar = true
        IQKeyboardManager.shared.enable = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- Hide Keyborad
    
    @objc func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    func setupMenuBarView() {
        
        self.view.addSubview(self.menuView)
        if !ApiUtillity.sharedInstance.isGreterPhoneX(){
            self.menuView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 15, paddingRight: 0, width: 228, height: 45)
        }else{
            self.menuView.anchor(top: nil, left: nil, bottom: self.view.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 5, paddingRight: 0, width: 228, height: 45)
        }
        self.menuView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.menuView.addSubview(menuBarView)
        self.menuBarView.anchor(top: self.menuView.topAnchor, left: self.menuView.leftAnchor, bottom: self.menuView.bottomAnchor, right: self.menuView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.menuBarView.backgroundColor = .yellow
        
        self.view.addSubview(self.createAccountCollectionView)
        self.createAccountCollectionView.anchor(top: self.view.safeTopAnchor, left: self.view.leftAnchor, bottom: self.menuView.topAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 7, paddingRight: 0, width: 0, height: 0)
    }
    
    func scrollToMenuIndex(index: Int) {
//        let indexPath = IndexPath(row: index, section: 0)
//        createAccountCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
    }
    
    // MARK:- Email Vlaidation
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    // MARK:- Button Action
    
    @objc func click_firstCellBackButton(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_firstCellNextButton(){
        if self.isValidEmail(createAccountVerifyVC.userEmail) == false{
            self.view.makeToast("Please enter valid email address")
            return
        }
        else if createAccountVerifyVC.userPassword.count < 6{
            self.view.makeToast("Password must be set 6 characters long")
            return
        }else{
            if createAccountEmailAndPasswordCell.isRegisterEmail{
                self.view.makeToast("Email is already registered")
                return
            }else{
                let indexPath = IndexPath(row: 1, section: 0)
                createAccountCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
                self.view.endEditing(true)
                UIView.animate(withDuration: 0.6) {
                    self.menuBarView.circleViewLeftConstraint.constant = 57
                    self.menuBarView.layoutIfNeeded()
                }
            }
        }
        
        
    }
    
    @objc func click_secondCellBackButton(){
        let indexPath = IndexPath(row: 0, section: 0)
        createAccountCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
        self.view.endEditing(true)
        UIView.animate(withDuration: 0.6) {
            self.menuBarView.circleViewLeftConstraint.constant = 0
            self.menuBarView.layoutIfNeeded()
        }
    }
    
    @objc func click_secondCellNextButton(){
        let indexPath = IndexPath(row: 2, section: 0)
        createAccountCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
        self.view.endEditing(true)
        UIView.animate(withDuration: 0.6) {
            self.menuBarView.circleViewLeftConstraint.constant = 114
            self.menuBarView.layoutIfNeeded()
        }
    }
    
    @objc func click_thiredCellBackButton(){
        let indexPath = IndexPath(row: 1, section: 0)
        createAccountCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
        self.view.endEditing(true)
        UIView.animate(withDuration: 0.6) {
            self.menuBarView.circleViewLeftConstraint.constant = 57
            self.menuBarView.layoutIfNeeded()
        }
    }
    
    @objc func click_thiredCellNextButton(text: String){
        
        if text.count == 0
        {
            self.view.makeToast("Please select Date of Birth")
        }
        else
        {
            let date = Date()
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMMM dd, yyyy"
            dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
            
            guard let date11 = dateFormatter.date(from: text) else {
                self.view.makeToast("To must be 13 years old to register into the app.")
                return
            }
            
            let calendar = Calendar.current
            let date1 = calendar.startOfDay(for: date11)
            let date2 = calendar.startOfDay(for: date)
            
            let components = calendar.dateComponents([.year], from: date1, to: date2)
            print(components)
            
            if components.year! >= 13
            {
                createAccountVerifyVC.userBirthday = text
                let indexPath = IndexPath(row: 3, section: 0)
                createAccountCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
                self.view.endEditing(true)
                UIView.animate(withDuration: 0.6) {
                    self.menuBarView.circleViewLeftConstraint.constant = 171
                    self.menuBarView.layoutIfNeeded()
                }
            }
            else
            {
                self.view.makeToast("To must be 13 years old to register into the app.")
            }
        }
    }
    
    @objc func click_fourthCellBackButton(){
        let indexPath = IndexPath(row: 2, section: 0)
        createAccountCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
        self.view.endEditing(true)
        UIView.animate(withDuration: 0.6) {
            self.menuBarView.circleViewLeftConstraint.constant = 114
            self.menuBarView.layoutIfNeeded()
        }
    }
    
    @objc func click_fourthCellNextButton(){
        print("navigation on next screen")
        
        if createAccountPictoIDCell.isValidePictoID{
            let vc = createAccountVerifyVC()
            self.view.endEditing(true)
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            self.view.makeToast("Please check entered PictoID")
        }
    }
}

//MARK:- UIScrollview delegate
extension CreateAccountMainVC: UIScrollViewDelegate{
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print(scrollView.contentOffset.x)
//        menuBarView.circleViewLeftConstraint.constant = scrollView.contentOffset.x / 4
//    }
//    
//   func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
//        
//        let index = targetContentOffset.pointee.x / view.frame.width
//        let indexPath = IndexPath(row: Int(index), section: 0)
//        menuBarView.menuBarCollectionView.selectItem(at: indexPath, animated: true, scrollPosition: [])
//    }
//    
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        var visibleRect = CGRect()
//
//        visibleRect.origin = self.createAccountCollectionView.contentOffset
//        visibleRect.size = self.createAccountCollectionView.bounds.size
//
//        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
//
//        guard let indexPath = self.createAccountCollectionView .indexPathForItem(at: visiblePoint) else { return }
//
//        print(indexPath.item)
//    }
}


extension CreateAccountMainVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "createAccountEmailAndPasswordCell", for: indexPath) as! createAccountEmailAndPasswordCell
            cell.backButton.addTarget(self, action: #selector(self.click_firstCellBackButton), for: .touchUpInside)
            cell.nextButton.addTarget(self, action: #selector(self.click_firstCellNextButton), for: .touchUpInside)
            return cell
        }else if indexPath.item == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "createAccountFirstnameAndLastnameCell", for: indexPath) as! createAccountFirstnameAndLastnameCell
            cell.backButton.addTarget(self, action: #selector(self.click_secondCellBackButton), for: .touchUpInside)
            cell.nextButton.addTarget(self, action: #selector(self.click_secondCellNextButton), for: .touchUpInside)
            return cell
        }else if indexPath.item == 2{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "createAccountBirthdayCell", for: indexPath) as! createAccountBirthdayCell
            cell.datePicker.backgroundColor = UIColor.white
            cell.datePicker.setValue(UIColor.black, forKeyPath: "textColor")
            cell.datePicker.datePickerMode = UIDatePicker.Mode.date
            let currentDate: Date = NSDate() as Date
            cell.datePicker.maximumDate = currentDate
            cell.superVC = self
            cell.backButton.addTarget(self, action: #selector(self.click_thiredCellBackButton), for: .touchUpInside)
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "createAccountPictoIDCell", for: indexPath) as! createAccountPictoIDCell
            cell.backButton.addTarget(self, action: #selector(self.click_fourthCellBackButton), for: .touchUpInside)
            cell.nextButton.addTarget(self, action: #selector(self.click_fourthCellNextButton), for: .touchUpInside)
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.createAccountCollectionView.frame.width, height: self.createAccountCollectionView.frame.height)
    }
}


