//
//  ModelPost.swift
//  Pictopage
//
//  Created by Grewon on 11/09/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import Foundation

struct ModelPost {
    
    var captiontext: String?
    var creationDate: Date
    var postCreatedUserID: String?
    var postCreatedUserName: String?
    var PictoID: String?
    var postCreatedUserFullName: String?
    var postCreatedUserProfilePicture: String?
    var postedImageURl: String?
    var postedPageId: String?
    var postedPageName: String?
    var postedPageNameID: String?
    var postedPageImage: String?
    var postedPage: PageList?
    var postID: String?
    var postLikeUsers = [String]()
    var postUniqueID: String?
    var postIndex = Int()
    var postTotalDuplicate = Int()
    var offset = Int()
    var isExpanded = Bool()
    var isShowExtraView = Bool()
    var isShowAnimation = Bool()
    var totalCommentCount = Int()
    
    
    
    
    init(post_id: String, dictionary: [String: Any]) {
        
        self.postID = post_id
        self.captiontext = dictionary["caption"] as? String ?? ""
        let secondsFrom1970 = dictionary["creationDate"] as? Double ?? 0
        self.creationDate = Date(timeIntervalSince1970: secondsFrom1970)
        self.postCreatedUserID = dictionary["postCreatedUserID"] as? String ?? ""
        self.postCreatedUserName = dictionary["postCreatedUserName"] as? String ?? ""
        self.postCreatedUserFullName = dictionary["postCreatedUserFullName"] as? String ?? ""
        self.PictoID = dictionary["PictoID"] as? String ?? ""
        self.postCreatedUserProfilePicture = dictionary["postCreatedUserProfilePicture"] as? String ?? ""
        self.postedImageURl = dictionary["postedImageURl"] as? String ?? ""
        self.postedPageId = dictionary["postedPagesId"] as? String ?? ""
        
        self.postedPageName = dictionary["postedPagesName"] as? String ?? ""
        self.postedPageNameID = dictionary["postedPageNameID"] as? String ?? ""
        self.postedPageImage = dictionary["postedPagesImageURL"] as? String ?? ""
        self.postUniqueID = dictionary["PostUniqueID"] as? String ?? ""
        self.offset = 0
        self.postIndex = 0
        self.postTotalDuplicate = 0
        self.isExpanded = false
        self.isShowExtraView = false
        self.isShowAnimation = false
        
        if let arr = dictionary["postLikeUsers"] as? [String], arr.count != 0{
            self.postLikeUsers = arr
        }
        
    }
    
}
