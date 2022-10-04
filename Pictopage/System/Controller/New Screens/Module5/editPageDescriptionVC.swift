//
//  editPageDescriptionVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 03/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import Firebase

class editPageDescriptionVC: UIViewController {

    let mainView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let headerDividerImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "bookmarkdivider1x")
        backimage.contentMode = UIView.ContentMode.scaleToFill
        return backimage
    }()
    
    let titleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Page Description"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let backArrowView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let backArrowImageview: UIImageView = {
        let backimage = UIImageView()
        backimage.image = UIImage(named: "back_1x")
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        return backimage
    }()
    
    let backArrowButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        return btn
    }()
    
    let descripitonLable1: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Describe your Page to others that might see it."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let descripitonLable2: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "This is visible to everyone that views your page."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let dataView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let DividerView1: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor.black
        return logov
    }()
    
    let DividerView2: UIView = {
        let logov = UIView()
        logov.backgroundColor = UIColor.black
        return logov
    }()
    
    let descriptionTextview: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        view.textAlignment = .left
        view.textContainer.maximumNumberOfLines = 5
        view.autocorrectionType = .no
        view.textContainer.lineBreakMode = .byTruncatingTail
        return view
    }()
    
    let countView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .white
        return logov
    }()
    
    let LettersLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Letters:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let rowLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Rows:"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 13.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    // Change Button
    
    let saveButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let saveButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Save", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        return btn
    }()
    
    var pageID = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.mainView)
        self.mainView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 36)
        
        //        self.headerView.addSubview(self.headerDividerImageview)
        //        self.headerDividerImageview.anchor(top: nil, left: self.headerView.leftAnchor, bottom: self.headerView.bottomAnchor, right: self.headerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        self.headerView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        
        self.headerView.addSubview(self.backArrowView)
        self.backArrowView.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 36, height: 36)
        
        self.backArrowView.addSubview(self.backArrowImageview)
        self.backArrowImageview.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: nil, right: nil, paddingTop: 19, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.backArrowView.addSubview(self.backArrowButton)
        self.backArrowButton.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: self.backArrowView.bottomAnchor, right: self.backArrowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backArrowButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.view.addSubview(self.descripitonLable1)
        self.descripitonLable1.anchor(top: self.titleLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 33, paddingLeft: 50, paddingBottom: 0, paddingRight: 50, width: 0, height: 36)
        
        self.view.addSubview(self.descripitonLable2)
        self.descripitonLable2.anchor(top: self.descripitonLable1.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 10, paddingLeft: 50, paddingBottom: 0, paddingRight: 50, width: 0, height: 36)
        
        // setup data view
        
        self.view.addSubview(self.dataView)
        self.dataView.anchor(top: self.descripitonLable2.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 107)
        
        self.dataView.addSubview(self.DividerView1)
        self.DividerView1.anchor(top: self.dataView.topAnchor, left: self.dataView.leftAnchor, bottom: nil, right: self.dataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2)
        
        self.dataView.addSubview(self.DividerView2)
        self.DividerView2.anchor(top: nil, left: self.dataView.leftAnchor, bottom: self.dataView.bottomAnchor, right: self.dataView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2)
        
        self.dataView.addSubview(self.descriptionTextview)
        self.descriptionTextview.anchor(top: self.DividerView1.bottomAnchor, left: self.dataView.leftAnchor, bottom: self.DividerView2.topAnchor, right: self.dataView.rightAnchor, paddingTop: 5, paddingLeft: 10, paddingBottom: 5, paddingRight: 18, width: 0, height: 0)
        self.descriptionTextview.delegate = self
        
        self.descriptionTextview.text = "Add a Description…"
        self.descriptionTextview.textColor = UIColor(red: 95.0/255.0, green: 95.0/255.0, blue: 95.0/255.0, alpha: 1.0)
        
        // setup count view
        
        self.view.addSubview(self.countView)
        self.countView.anchor(top: self.dataView.bottomAnchor, left: nil, bottom: nil, right: self.view.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 26, width: 68, height: 37)
        
        self.countView.addSubview(self.LettersLable)
        self.LettersLable.anchor(top: self.countView.topAnchor, left: self.countView.leftAnchor, bottom: nil, right: self.countView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        let myCount = "Letters: 250"
        let myCount1 = "250"
        let myCounttargetString = myCount
        let myrange = NSMakeRange(myCount.count - myCount1.count, myCount1.count)
        self.LettersLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: myCounttargetString, BoldRange: myrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        
        self.countView.addSubview(self.rowLable)
        self.rowLable.anchor(top: self.LettersLable.bottomAnchor, left: self.countView.leftAnchor, bottom: nil, right: self.countView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        let RowsCount = "Rows: 5"
        let RowsCount1 = "5"
        let RowsCounttargetString = RowsCount
        let Rowsrange = NSMakeRange(RowsCount.count - RowsCount1.count, RowsCount1.count)
        self.rowLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: RowsCounttargetString, BoldRange: Rowsrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        
        // Change Button

        self.view.addSubview(self.saveButtonView)
        self.saveButtonView.anchor(top: self.dataView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 45, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 111, height: 35)
        self.saveButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.saveButtonView.layer.cornerRadius = 17.5
        self.saveButtonView.clipsToBounds = true
        self.saveButtonView.backgroundColor = black10
        
        self.saveButtonView.addSubview(self.saveButton)
        self.saveButton.anchor(top: self.saveButtonView.topAnchor, left: self.saveButtonView.leftAnchor, bottom: self.saveButtonView.bottomAnchor, right: self.saveButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.saveButton.addTarget(self, action: #selector(self.click_save), for: .touchUpInside)
        self.saveButton.isUserInteractionEnabled = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.addSearchObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.removeSearchObserver()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    // MARK:- Action
    
    @objc func click_back(){
        self.dismiss(animated: false, completion: nil)
    }
    
    @objc func click_save(){
        if self.descriptionTextview.text! == "Add a Description…" || self.descriptionTextview.text.count == 0{
            self.view.makeToast("Please add a description")
        }else{
            self.updatePageDescription()
        }
    }
}


extension editPageDescriptionVC: UITextViewDelegate{
    
    func textViewDidBeginEditing(_ textView: UITextView)
    {
        if textView.text == "Add a Description…"{
            textView.text = ""
        }
        textView.becomeFirstResponder()
    }

    func textViewDidEndEditing(_ textView: UITextView)
    {
        if textView.text == ""
        {
            textView.text = "Add a Description…"
            textView.textColor = UIColor(red: 95.0/255.0, green: 95.0/255.0, blue: 95.0/255.0, alpha: 1.0)
        }
        textView.resignFirstResponder()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let newText = (textView.text as NSString).replacingCharacters(in: range, with: text)
        let numberOfChars = newText.count
        return numberOfChars < 251
    }
    
    // MARK:- Textview Delegate Method
    
    func addSearchObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.textChange(_:)), name: UITextView.textDidChangeNotification, object: nil)
    }
    
    func removeSearchObserver() {
        self.descriptionTextview.resignFirstResponder()
        NotificationCenter.default.removeObserver(self, name: UITextView.textDidChangeNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func textChange(_ notification: Notification) {
        searchRecordsFirstName(str: self.descriptionTextview.text!)
    }
    
    func searchRecordsFirstName(str: String) {
        if str.count == 0{
            let myCount = "Letters: 250"
            let myCount1 = "250"
            let myCounttargetString = myCount
            let myrange = NSMakeRange(myCount.count - myCount1.count, myCount1.count)
            self.LettersLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: myCounttargetString, BoldRange: myrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        }else{
            let myCount = "Letters: \(250-(str.count))"
            let myCount1 = "\(250-(str.count))"
            let myCounttargetString = myCount
            let myrange = NSMakeRange(myCount.count - myCount1.count, myCount1.count)
            self.LettersLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: myCounttargetString, BoldRange: myrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        }
    }
}

extension editPageDescriptionVC{
    
    func updatePageDescription(){
        
        let db = Firestore.firestore()
        
        let washingtonRef = db.collection("Pages").document(self.pageID)
        
        washingtonRef.updateData([
            "PageDescription": self.descriptionTextview.text!
        ]) { err in
            if let err = err {
                print("Error updating document: \(err)")
            } else {
                print("Document successfully updated")
                
                self.navigationController?.view.makeToast("Page Description Changed Successfully")
                self.dismiss(animated: false, completion: nil)
            }
        }
    }
    
}
