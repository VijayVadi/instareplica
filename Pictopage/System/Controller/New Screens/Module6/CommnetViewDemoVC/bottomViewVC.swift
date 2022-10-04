//
//  bottomViewVC.swift
//  BottomSheetDemo
//
//  Created by Ravi Padshala on 06/02/20.
//  Copyright © 2020 Ravi Padshala. All rights reserved.
//

import UIKit
import FittedSheets
import IQKeyboardManagerSwift
import Firebase

extension UIViewController {
    /// The sheet view controller presenting the current view controller heiarchy (if any)
    public var sheetViewController: SheetViewController? {
        var parent = self.parent
        while let currentParent = parent {
            if let sheetViewController = currentParent as? SheetViewController {
                return sheetViewController
            } else {
                parent = currentParent.parent
            }
        }
        return nil
    }
}

class bottomViewVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
//    @IBOutlet weak var myTableView: UITableView!
    
    var myTableView: UITableView!
    
    
    let addCommentView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black0B0B0B
        return logov
    }()
    
    let sendCommentView: UIView = {
        let logov = UIView()
        return logov
    }()
    
    let sendCommentImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "sendCommentDisable1x")
        return img
    }()
    
    let sendCommentButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    
    let addCommentextField: UITextField = {
        let txt = UITextField()
        txt.borderStyle = UITextField.BorderStyle.none
        txt.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        txt.attributedPlaceholder = NSAttributedString(string: "Comment…",
                                                       attributes: [NSAttributedString.Key.foregroundColor: grayA5])
        txt.textColor = grayA5
        return txt
    }()
    
    let TotalCommentCountView: UIView = {
        let logov = UIView()
        logov.backgroundColor = black13
        return logov
    }()
    
    let totalCommentCountLable : UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.text = "#Comments"
        lbl.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        lbl.numberOfLines = 0
        return lbl
    }()
    
    
    let downImage: UIImageView = {
        let backimage = UIImageView()
        backimage.contentMode = UIView.ContentMode.scaleAspectFit
        backimage.image = UIImage(named: "downArrow1x")
        return backimage
    }()
    
    let downButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("", for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()
    
    var keyboradCommentView = UIView()
    var keyboradCommentTextfield = UITextField()
    var keyboradsendImageView = UIImageView()
    var keyboradSendButton = UIButton()
    
    var cnt = 2
    var cnt1 = 1
    
    var postId = String()
    
    var commentDataArr = [commentModel]()
    var isReplay = Bool()
    var replayCommentID = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.makeAddcaptionView()
        
        self.view.backgroundColor = black13
        
        self.view.addSubview(self.TotalCommentCountView)
        self.TotalCommentCountView.anchor(top: self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 29)
        
        self.TotalCommentCountView.addSubview(totalCommentCountLable)
        self.totalCommentCountLable.anchor(top: self.TotalCommentCountView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 17)
        self.totalCommentCountLable.centerXAnchor.constraint(equalTo: self.TotalCommentCountView.centerXAnchor).isActive = true

        self.TotalCommentCountView.addSubview(downImage)
        self.downImage.anchor(top: self.TotalCommentCountView.topAnchor, left: nil, bottom: nil, right: self.TotalCommentCountView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 22, width: 17, height: 10)
        
        self.TotalCommentCountView.addSubview(self.downButton)
        self.downButton.anchor(top: self.TotalCommentCountView.topAnchor, left: nil, bottom: self.TotalCommentCountView.bottomAnchor, right: self.TotalCommentCountView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 0)
        self.downButton.addTarget(self, action: #selector(self.click_down), for: .touchUpInside)
        
        myTableView = UITableView(frame: CGRect(x: 0, y: 29, width: self.view.frame.size.width, height: self.view.frame.size.height - 120), style: UITableView.Style.plain)
        myTableView.register(totalCommentCelll.self, forCellReuseIdentifier: "totalCommentCelll")
        myTableView.register(sectionHeaderCell.self, forCellReuseIdentifier: "sectionHeaderCell")
        myTableView.register(subCommentCell.self, forCellReuseIdentifier: "subCommentCell")
        myTableView.register(loadMoreCommentCell.self, forCellReuseIdentifier: "loadMoreCommentCell")
        myTableView.tableFooterView = UIView()
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.backgroundColor = black13
        myTableView.separatorStyle = .none
        self.view.addSubview(myTableView)
        
        self.sheetViewController?.handleScrollView(self.myTableView)
        
        self.view.addSubview(self.addCommentView)
        self.addCommentView.anchor(top: nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 55)
        
        self.addCommentView.addSubview(self.sendCommentView)
        self.sendCommentView.anchor(top: self.addCommentView.topAnchor, left: nil, bottom: self.addCommentView.bottomAnchor, right: self.addCommentView.rightAnchor, paddingTop: 16, paddingLeft: 0, paddingBottom: 14, paddingRight: 19, width: 90, height: 0)
        
        self.sendCommentView.addSubview(self.sendCommentImageView)
        self.sendCommentImageView.anchor(top: self.sendCommentView.topAnchor, left: self.sendCommentView.leftAnchor, bottom: self.sendCommentView.bottomAnchor, right: self.sendCommentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        self.sendCommentView.addSubview(self.sendCommentButton)
        self.sendCommentButton.anchor(top: self.sendCommentView.topAnchor, left: self.sendCommentView.leftAnchor, bottom: self.sendCommentView.bottomAnchor, right: self.sendCommentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        self.sendCommentButton.isEnabled = false
        self.sendCommentButton.addTarget(self, action: #selector(self.click_send), for: .touchUpInside)
        
        self.addCommentView.addSubview(self.addCommentextField)
        self.addCommentextField.anchor(top: self.addCommentView.topAnchor, left: self.addCommentView.leftAnchor, bottom: self.addCommentView.bottomAnchor, right: self.sendCommentView.leftAnchor, paddingTop: 10, paddingLeft: 18, paddingBottom: 10, paddingRight: 10, width: 0, height: 0)
        self.addCommentextField.delegate = self
        self.addCommentextField.keyboardAppearance = .alert
        self.addCommentextField.addTarget(self, action: #selector(handleTextInputChangekeyboradTextfield), for: .editingChanged)
        
        
        // keyborad notifier
        
        NotificationCenter.default.addObserver(self,selector: #selector(keyboardWillShow),name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        IQKeyboardManager.shared.enable = false
        
        self.getCommentData()
    }
    
    // MARK:- keyBorad Hide/show Method
    
    @objc func keyboardWillShow(_ notification: Notification) {
    }
    
    @objc
    func keyboardWillHide(_ notification: NSNotification) {
        
    }
    
    // MARK:- Button Action
    
    @objc func click_send()
    {
        self.addCommentextField.resignFirstResponder()
        self.view.endEditing(true)
        
        if self.isReplay{
            self.isReplay = false
            let subCommentData = [
                subCommentModel.SubcommentKeys.subcommentText.rawValue : self.addCommentextField.text!,
                subCommentModel.SubcommentKeys.replayCommentID.rawValue : self.replayCommentID,
                subCommentModel.SubcommentKeys.subCommentUserFullName.rawValue : FirebaseClient.sharedInstance.firebaseCurrentUser!.FullName!,
                subCommentModel.SubcommentKeys.subCommentUserID.rawValue : FirebaseClient.sharedInstance.firebaseCurrentUser!.userID,
                subCommentModel.SubcommentKeys.subCommentUserProfile.rawValue: FirebaseClient.sharedInstance.firebaseCurrentUser!.ProfilePicture!,
                subCommentModel.SubcommentKeys.subCommentDataTime.rawValue: Date().timeIntervalSince1970,
                subCommentModel.SubcommentKeys.sublikeCount.rawValue : 0
                ] as [String : Any]

            FirebaseClient.sharedInstance.setSubComment(postID: self.postId, commentID: self.replayCommentID, commentData: subCommentData) { (isSent) in
                if isSent{
                    print("comment sent")
                    self.addCommentextField.text = ""
                    self.getCommentData()
                }else{
                    print("comment not sent")
                }
            }
            
        }else{
            let commentData = [
                commentModel.CommentKeys.commentText.rawValue : self.addCommentextField.text!,
                commentModel.CommentKeys.CommentUserFullName.rawValue : FirebaseClient.sharedInstance.firebaseCurrentUser!.FullName!,
                commentModel.CommentKeys.CommentUserID.rawValue : FirebaseClient.sharedInstance.firebaseCurrentUser!.userID,
                commentModel.CommentKeys.CommentUserProfile.rawValue: FirebaseClient.sharedInstance.firebaseCurrentUser!.ProfilePicture!,
                commentModel.CommentKeys.CommentDataTime.rawValue: Date().timeIntervalSince1970,
                commentModel.CommentKeys.likeCount.rawValue : 0
                ] as [String : Any]

            FirebaseClient.sharedInstance.setComment(postID: self.postId, commentData: commentData) { (isSent) in
                if isSent{
                    print("comment sent")
                    self.addCommentextField.text = ""
                    self.getCommentData()
                }else{
                    print("comment not sent")
                }
            }
        }
    }
    
    @objc func click_sectionlike(sender: UIButton){
        
        let dict = self.commentDataArr[sender.tag]
        
        var isLike = false
        
        if dict.commentLikeUsers.count != 0{
            if dict.commentLikeUsers.contains(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID){
                isLike = false
            }else{
                isLike = true
            }
        }else{
            isLike = true
        }
        
        FirebaseClient.sharedInstance.LikeComment(commentID: dict.commentId, postId: self.postId, isLike: isLike) { (_) in
            if isLike{
                self.commentDataArr[sender.tag].commentLikeUsers.append(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID)
            }else{
                self.commentDataArr[sender.tag].commentLikeUsers = self.commentDataArr[sender.tag].commentLikeUsers.filter{$0 != FirebaseClient.sharedInstance.firebaseCurrentUser!.userID}
            }
            self.myTableView.reloadData()
        }
    }
    
    @objc func likeSubComment(sender: DCustomButton){
        
        if let index = sender.indexPath{
            print(index)
            
            let dict = self.commentDataArr[index.section].subCommentArr[index.row]
            
            var isLike = false
            
            if dict.subcommentLikeUsers.count != 0{
                if dict.subcommentLikeUsers.contains(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID){
                    isLike = false
                }else{
                    isLike = true
                }
            }else{
                isLike = true
            }
            
            FirebaseClient.sharedInstance.LikeSubComment(commentID: dict.replayCommentID, postId: self.postId, subCommentID: dict.subCommentID, isLike: isLike) { (_) in
                if isLike{
                    self.commentDataArr[index.section].subCommentArr[index.row].subcommentLikeUsers.append(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID)
                }else{
                    self.commentDataArr[index.section].subCommentArr[index.row].subcommentLikeUsers = self.commentDataArr[index.section].subCommentArr[index.row].subcommentLikeUsers.filter{$0 != FirebaseClient.sharedInstance.firebaseCurrentUser!.userID}
                }
                self.myTableView.reloadData()
            }
        }
        
    }
    
    @objc func click_onSection(sender: UIButton){
        
        let dict = self.commentDataArr[sender.tag]
        print(dict)
        print(sender.tag)
        
        // create an actionSheet
        let actionSheetController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

        // create an action
        let replayAction: UIAlertAction = UIAlertAction(title: "Replay", style: .default) { action -> Void in
            print("replay Action pressed")
            self.isReplay = true
            self.replayCommentID = dict.commentId
            self.addCommentextField.becomeFirstResponder()
        }

        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in }

        // add actions
        actionSheetController.addAction(replayAction)
        actionSheetController.addAction(cancelAction)
        self.present(actionSheetController, animated: true, completion: nil)
    }
    
    @objc func click_down(){
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK:- instantiate
    
    static func instantiate() -> bottomViewVC {
        return bottomViewVC()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.isReplay = false
        self.addCommentextField.resignFirstResponder()
        self.view.endEditing(true)
    }
    
    // MARK:- Create KeyBorad view
    
    func makeAddcaptionView()
    {
        self.keyboradCommentView.frame = CGRect(x: 0, y: self.view.frame.size.height, width: self.view.frame.size.width, height: 55.0)
        self.keyboradCommentView.backgroundColor = black0B0B0B
        
        let v_next = UIView(frame: CGRect(x: self.keyboradCommentView.frame.size.width - 19 - 90, y: 16, width: 90, height: 25))
        v_next.backgroundColor = .clear
        
        keyboradsendImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: v_next.frame.size.width, height: v_next.frame.size.height))
        keyboradsendImageView.image = UIImage(named: "sendCommentDisable1x")
        keyboradsendImageView.contentMode = .scaleAspectFit
        v_next.addSubview(keyboradsendImageView)

        keyboradSendButton = UIButton(frame: CGRect(x: 0, y: 0, width: v_next.frame.size.width, height: v_next.frame.size.height))
        keyboradSendButton.addTarget(self, action: #selector(self.click_send), for: .touchUpInside)
        keyboradSendButton.isEnabled = false
        v_next.addSubview(keyboradSendButton)
        
        self.keyboradCommentView.addSubview(v_next)

        let v_text = UIView(frame: CGRect(x: 18, y: 10, width: v_next.frame.origin.x - 15, height: 35))

        self.keyboradCommentTextfield = UITextField(frame: CGRect(x: 0, y: 0, width: v_text.frame.size.width, height: v_text.frame.size.height))
        self.keyboradCommentTextfield.borderStyle = UITextField.BorderStyle.none
        self.keyboradCommentTextfield.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        self.keyboradCommentTextfield.attributedPlaceholder = NSAttributedString(string: "Comment…",attributes: [NSAttributedString.Key.foregroundColor: grayA5])
        self.keyboradCommentTextfield.keyboardAppearance = .alert
        self.keyboradCommentTextfield.delegate = self
        self.keyboradCommentTextfield.autocorrectionType = .yes
        self.keyboradCommentTextfield.textColor = grayA5
        self.keyboradCommentTextfield.addTarget(self, action: #selector(handleTextInputChangekeyboradTextfield), for: .editingChanged)
        v_text.addSubview(self.keyboradCommentTextfield)
        
        self.keyboradCommentView.addSubview(v_text)
        self.keyboradCommentView.clipsToBounds = true
        
    }
    
    
    
    // MARK:- TableView
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.commentDataArr.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.commentDataArr[section].subCommentArr.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionHeaderCell") as! sectionHeaderCell
        cell.selectionStyle = .none
        cell.contentView.isHidden = true
        
        let dict = self.commentDataArr[section]
        
        if let txt = dict.commentText, txt.count != 0{
            
            let dt = dict.commentDateTime
            
            let myString = "\(txt) \(ApiUtillity.sharedInstance.timeAgoSinceDate(date: dt, numericDates: false))"
            let myString1 = "\(ApiUtillity.sharedInstance.timeAgoSinceDate(date: dt, numericDates: false))"
            let targetString = myString
            let range = NSMakeRange(myString.count - myString1.count, myString1.count)
            
            cell.CommentLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: targetString, BoldRange: range, font1: UIFont(name: "HelveticaNeue", size: 14.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 15)!, font1Color:grayA5, font2Color: .white)
        }else{
            cell.CommentLable.text = ""
        }
        
        if let u_name = dict.commentedUserFullName, u_name.count != 0{
            cell.userNameLable.text = u_name
        }else{
            cell.userNameLable.text = ""
        }
        
        if let u_image = dict.commentedUserImage, u_image.count != 0{
            cell.userImage.kf.indicatorType = .activity
            cell.userImage.kf.setImage(with: URL(string: u_image))
        }else{
            cell.userImage.image = UIImage(named: "userLogo1x")
        }
        
        if dict.commentLikeUsers.count != 0{
            if dict.commentLikeUsers.contains(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID){
                cell.likeImage.image = UIImage(named: "postLikeGray1x")
            }else{
                cell.likeImage.image = UIImage(named: "likeComment1x")
            }
            cell.totallikeCountLable.text = "\(dict.commentLikeUsers.count)"
        }else{
            cell.likeImage.image = UIImage(named: "likeComment1x")
            cell.totallikeCountLable.text = "0"
        }
        
        cell.tapOnSectionButton.tag = section
        cell.tapOnSectionButton.addTarget(self, action: #selector(self.click_onSection), for: .touchUpInside)
        
        cell.LikeButton.tag = section
        cell.LikeButton.addTarget(self, action: #selector(self.click_sectionlike), for: .touchUpInside)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 79
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 79
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return  0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "subCommentCell", for: indexPath) as! subCommentCell
        cell.selectionStyle = .none
        cell.contentView.isHidden = true
        
        let dict = self.commentDataArr[indexPath.section].subCommentArr[indexPath.row]
        
        if let txt = dict.subcommentText, txt.count != 0{
            
            let dt = dict.subCommentDataTime
            
            let myString = "\(txt) \(ApiUtillity.sharedInstance.timeAgoSinceDate(date: dt, numericDates: false))"
            let myString1 = "\(ApiUtillity.sharedInstance.timeAgoSinceDate(date: dt, numericDates: false))"
            let targetString = myString
            let range = NSMakeRange(myString.count - myString1.count, myString1.count)
            
            cell.CommentLable.attributedText = ApiUtillity.sharedInstance.attributedBoldStringWithMultipleColor(from: targetString, BoldRange: range, font1: UIFont(name: "HelveticaNeue", size: 14.0)!, font2: UIFont(name: "HelveticaNeue-Light", size: 15)!, font1Color:grayA5, font2Color: .white)
        }else{
            cell.CommentLable.text = ""
        }
        
        if let u_name = dict.subCommentUserFullName, u_name.count != 0{
            cell.userNameLable.text = u_name
        }else{
            cell.userNameLable.text = ""
        }
        
        if let u_image = dict.subCommentUserProfile, u_image.count != 0{
            cell.userImage.kf.indicatorType = .activity
            cell.userImage.kf.setImage(with: URL(string: u_image))
        }else{
            cell.userImage.image = UIImage(named: "userLogo1x")
        }
        
        if dict.subcommentLikeUsers.count != 0{
            if dict.subcommentLikeUsers.contains(FirebaseClient.sharedInstance.firebaseCurrentUser!.userID){
                cell.likeImage.image = UIImage(named: "postLikeGray1x")
            }else{
                cell.likeImage.image = UIImage(named: "likeComment1x")
            }
            cell.totallikeCountLable.text = "\(dict.subcommentLikeUsers.count)"
        }else{
            cell.likeImage.image = UIImage(named: "likeComment1x")
            cell.totallikeCountLable.text = "0"
        }
        
        cell.likeButton.indexPath = indexPath
        cell.likeButton.addTarget(self, action: #selector(self.likeSubComment), for: .touchUpInside)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}

extension bottomViewVC: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        self.addCommentextField.text = self.keyboradCommentTextfield.text!
//        self.keyboradCommentTextfield.resignFirstResponder()
        self.isReplay = false
        self.addCommentextField.resignFirstResponder()
        
        return true
    }
    
    @objc func handleTextInputChangekeyboradTextfield() {
        let isFormValid = self.addCommentextField.text?.isEmpty == false
            
            if isFormValid {
                self.sendCommentButton.isEnabled = true
                self.sendCommentImageView.image = UIImage(named: "sendCommentEnable1x")
                
//                self.keyboradSendButton.isEnabled = true
//                self.keyboradsendImageView.image = UIImage(named: "sendCommentEnable1x")
                
            } else {
                self.sendCommentButton.isEnabled = false
                self.sendCommentImageView.image = UIImage(named: "sendCommentDisable1x")
                
//                self.keyboradSendButton.isEnabled = false
//                self.keyboradsendImageView.image = UIImage(named: "sendCommentDisable1x")
            }
        }
}


extension bottomViewVC{
    
    func getCommentData(){
        FirebaseClient.sharedInstance.getCommentAboutPostID(postID: self.postId) { (CommentData) in
            
            let data = CommentData as! [QueryDocumentSnapshot]
            
            if data.count != 0{
                
                var tempcommentDataArr = [commentModel]()
                data.forEach { (doc) in
                    let comment = commentModel(commentID: doc.documentID, dictionary: doc.data())
                    tempcommentDataArr.append(comment)
                }
                
                self.totalCommentCountLable.text = "\(tempcommentDataArr.count) Comments"
                
                self.commentDataArr.removeAll()
                self.getSubCommentDataArr(sender: tempcommentDataArr)
                
            }else{
                
                self.commentDataArr.removeAll()
                self.myTableView.reloadData()
                print("No data found")
            }
        }
    }
    
    func getSubCommentDataArr(sender: [commentModel]){
        
        var arr = sender
        
        if arr.count != 0{
        
            
            var item = arr.first
            FirebaseClient.sharedInstance.getsubCommentAboutCommentID(postID: self.postId, commentID: item!.commentId) { (CommentData) in
                
                let data = CommentData as! [QueryDocumentSnapshot]
                
                if data.count != 0{
                    
                    data.forEach { (doc) in
                        let comment = subCommentModel(subCommentID: doc.documentID, dictionary: doc.data())
                        item?.subCommentArr.append(comment)
                    }
                    arr.removeFirst()
                    self.commentDataArr.append(item!)
                    self.getSubCommentDataArr(sender: arr)
                }else{
                    arr.removeFirst()
                    self.commentDataArr.append(item!)
                    self.getSubCommentDataArr(sender: arr)
                }
            }
        }else{
            self.commentDataArr.sort(by: { (u1, u2) -> Bool in
                return u1.likeCountString.compare(u2.likeCountString) == .orderedDescending
            })
            
            self.myTableView.reloadData()
        }
    }
    
    
}
