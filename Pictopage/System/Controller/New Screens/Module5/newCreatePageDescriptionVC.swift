//
//  newCreatePageDescriptionVC.swift
//  Pictopage
//
//  Created by Ravi Padshala on 03/09/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import UIKit
import FittedSheets

class newCreatePageDescriptionVC: UIViewController {

    let headerView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
        return logov
    }()
    
    let titleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Create Page"
        lbl.font = UIFont(name: "HelveticaNeue-Medium", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let backArrowView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
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
    
    let pageNameLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "What is your Page about?"
        lbl.font = UIFont(name: "HelveticaNeue", size: 21.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageNameDescriptionLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Describe your Page to others that might see it."
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 17.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let pageNameTitleLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "Page Description"
        lbl.font = UIFont(name: "HelveticaNeue", size: 18.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let dataView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
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
        view.font = UIFont(name: "HelveticaNeue-Light", size: 15.0)!
        view.textAlignment = .left
        view.textContainer.maximumNumberOfLines = 5
        view.autocorrectionType = .no
        view.textContainer.lineBreakMode = .byTruncatingTail
        return view
    }()
    
    let countView: UIView = {
        let logov = UIView()
        logov.backgroundColor = .clear
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
    
    // next Button
    
    let nextButtonView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Next", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        return btn
    }()
    
    let orSkipView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let orSkipLable: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.text = "or Skip"
        lbl.font = UIFont(name: "HelveticaNeue-Light", size: 19.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let orSkipButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        return btn
    }()
    
    var pageName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = whiteF9FAF9
        
        // setup Header view
        
        self.view.addSubview(self.headerView)
        self.headerView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 51)
        
        self.headerView.addSubview(self.titleLable)
        self.titleLable.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: self.headerView.rightAnchor, paddingTop: 32, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 21)
        
        self.headerView.addSubview(self.backArrowView)
        self.backArrowView.anchor(top: self.headerView.topAnchor, left: self.headerView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 51, height: 51)
        
        self.backArrowView.addSubview(self.backArrowImageview)
        self.backArrowImageview.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: nil, right: nil, paddingTop: 35, paddingLeft: 21, paddingBottom: 0, paddingRight: 0, width: 11, height: 16)
        
        self.backArrowView.addSubview(self.backArrowButton)
        self.backArrowButton.anchor(top: self.backArrowView.topAnchor, left: self.backArrowView.leftAnchor, bottom: self.backArrowView.bottomAnchor, right: self.backArrowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.backArrowButton.addTarget(self, action: #selector(self.click_back), for: .touchUpInside)
        
        self.view.addSubview(self.pageNameLable)
        self.pageNameLable.anchor(top: self.headerView.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 38, paddingLeft: 66, paddingBottom: 0, paddingRight: 66, width: 0, height: 24)
        
        self.view.addSubview(self.pageNameDescriptionLable)
        self.pageNameDescriptionLable.anchor(top: self.pageNameLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 22, paddingLeft: 47.5, paddingBottom: 0, paddingRight: 47.5, width: 0, height: 41)
        
        self.view.addSubview(self.pageNameTitleLable)
        self.pageNameTitleLable.anchor(top: self.pageNameDescriptionLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 25, paddingLeft: 47.5, paddingBottom: 0, paddingRight: 47.5, width: 0, height: 21)
        
        // setup data view
        
        self.view.addSubview(self.dataView)
        self.dataView.anchor(top: self.pageNameTitleLable.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 105)
        
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
        self.countView.anchor(top: self.dataView.bottomAnchor, left: nil, bottom: nil, right: self.view.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 26, width: 68, height: 37)
        
        self.countView.addSubview(self.LettersLable)
        self.LettersLable.anchor(top: self.countView.topAnchor, left: self.countView.leftAnchor, bottom: nil, right: self.countView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 16)
        let myCount = "Letters: 200"
        let myCount1 = "200"
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

        self.view.addSubview(self.nextButtonView)
        self.nextButtonView.anchor(top: self.dataView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 50, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 35)
        self.nextButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.nextButtonView.layer.cornerRadius = 17.5
        self.nextButtonView.clipsToBounds = true
        self.nextButtonView.backgroundColor = .white
        self.nextButtonView.setBorder(color: .black, width: 2.0)

        self.nextButtonView.addSubview(self.nextButton)
        self.nextButton.anchor(top: self.nextButtonView.topAnchor, left: self.nextButtonView.leftAnchor, bottom: self.nextButtonView.bottomAnchor, right: self.nextButtonView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.nextButton.addTarget(self, action: #selector(self.click_next), for: .touchUpInside)
        self.nextButton.isEnabled = false
        
        // setup orSkipView
        
        self.view.addSubview(self.orSkipView)
        self.orSkipView.anchor(top: self.nextButtonView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 62, height: 40)
        self.orSkipView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.orSkipView.addSubview(self.orSkipLable)
        self.orSkipLable.anchor(top: self.orSkipView.topAnchor, left: self.orSkipView.leftAnchor, bottom: orSkipView.bottomAnchor, right: self.orSkipView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        let orSkip = "or Skip"
        let orSkip1 = "Skip"
        let orSkipCounttargetString = orSkip
        let OrSkiprange = NSMakeRange(orSkip.count - orSkip1.count, orSkip1.count)
        self.orSkipLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: orSkipCounttargetString, BoldRange: OrSkiprange, font1: UIFont(name: "HelveticaNeue", size: 19.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 19.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        
        self.orSkipView.addSubview(self.orSkipButton)
        self.orSkipButton.anchor(top: self.orSkipView.topAnchor, left: self.orSkipView.leftAnchor, bottom: self.orSkipView.bottomAnchor, right: self.orSkipView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.orSkipButton.addTarget(self, action: #selector(self.click_skip), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.addSearchObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.removeSearchObserver()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- Action

    @objc func click_back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func click_next(){
        let vc = newCreatePageAddImageVC()
        vc.pageName = self.pageName
        vc.pageDescriptionText = self.descriptionTextview.text!
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @objc func click_skip(){
        let vc = newCreatePageAddImageVC()
        vc.pageName = self.pageName
        if let txt = self.descriptionTextview.text{
            vc.pageDescriptionText = txt
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


extension newCreatePageDescriptionVC: UITextViewDelegate{
    
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
        return numberOfChars < 201
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
            self.nextButton.isEnabled = false
            let myCount = "Letters: 200"
            let myCount1 = "200"
            let myCounttargetString = myCount
            let myrange = NSMakeRange(myCount.count - myCount1.count, myCount1.count)
            self.LettersLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: myCounttargetString, BoldRange: myrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        }else{
            self.nextButton.isEnabled = true
            let myCount = "Letters: \(200-(str.count))"
            let myCount1 = "\(200-(str.count))"
            let myCounttargetString = myCount
            let myrange = NSMakeRange(myCount.count - myCount1.count, myCount1.count)
            self.LettersLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: myCounttargetString, BoldRange: myrange, font1: UIFont(name: "HelveticaNeue", size: 13.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 13.0)!, font1Color: UIColor.black, font2Color: UIColor.black)
        }
    }
}
