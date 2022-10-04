//
//  commentModel.swift
//  Pictopage
//
//  Created by Ravi Padshala on 03/03/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import Foundation


struct commentModel {
    
    enum CommentKeys: String {
        case commentText = "commentText"
        case CommentUserFullName = "CommentUserFullName"
        case CommentUserProfile = "CommentUserProfile"
        case CommentUserID = "CommentUserID"
        case CommentDataTime = "CommentDataTime"
        case likeCount = "likeCount"
        case commentLikeUser = "commentLikeUser"
    }
    
    var commentText: String?
    var commentedUserFullName: String?
    var commentedUserImage: String?
    var commentDateTime: Date
    var commentId = String()
    var likeCount = Int()
    var likeCountString = String()
    var commentLikeUsers = [String]()
    var subCommentArr = [subCommentModel]()
    var CommentUserID = String()
    
    
    
    init(commentID: String, dictionary: [String: Any]) {
        self.commentText = dictionary[CommentKeys.commentText.rawValue] as? String ?? ""
        self.commentedUserFullName = dictionary[CommentKeys.CommentUserFullName.rawValue] as? String ?? ""
        self.commentedUserImage = dictionary[CommentKeys.CommentUserProfile.rawValue] as? String ?? ""
        self.CommentUserID = dictionary[CommentKeys.CommentUserID.rawValue] as? String ?? ""
        self.commentId = commentID
        let secondsFrom1970 = dictionary[CommentKeys.CommentDataTime.rawValue] as? Double ?? 0
        self.commentDateTime = Date(timeIntervalSince1970: secondsFrom1970)
        self.likeCount = dictionary[CommentKeys.likeCount.rawValue] as? Int ?? 0
        self.likeCountString = String(self.likeCount)
        
        if let arr = dictionary[CommentKeys.commentLikeUser.rawValue] as? [String], arr.count != 0{
            self.commentLikeUsers = arr
        }else{
            let arr = [String]()
            self.commentLikeUsers = arr
        }
        
        
    }
}
