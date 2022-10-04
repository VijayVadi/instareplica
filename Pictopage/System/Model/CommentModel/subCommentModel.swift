//
//  subCommentModel.swift
//  Pictopage
//
//  Created by Ravi Padshala on 09/03/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import Foundation


struct subCommentModel {
    
    
//    let subCommentData = [
//    "subcommentText" : self.addCommentextField.text!,
//    "replayCommentID" : self.replayCommentID,
//    "subCommentUserFullName" : FirebaseClient.sharedInstance.firebaseCurrentUser!.FullName!,
//    "subCommentUserProfile": FirebaseClient.sharedInstance.firebaseCurrentUser!.ProfilePicture!,
//    "subCommentDataTime": Date().timeIntervalSince1970,
//    "sublikeCount" : 0
//    ] as [String : Any]
    
    enum SubcommentKeys: String {
        case subcommentText = "subcommentText"
        case subCommentUserFullName = "subCommentUserFullName"
        case subCommentUserProfile = "subCommentUserProfile"
        case subCommentUserID = "subCommentUserID"
        case replayCommentID = "replayCommentID"
        case subCommentDataTime = "subCommentDataTime"
        case sublikeCount = "sublikeCount"
        case subcommentLikeUsers = "subcommentLikeUsers"
    }
    
    var subcommentText: String?
    var replayCommentID = String()
    var subCommentUserFullName: String?
    var subCommentUserID = String()
    var subCommentUserProfile: String?
    var subCommentDataTime: Date
    var subCommentID = String()
    var sublikeCount = Int()
    var subcommentLikeUsers = [String]()
    
    
    
    init(subCommentID: String, dictionary: [String: Any]) {
        self.subcommentText = dictionary[SubcommentKeys.subcommentText.rawValue] as? String ?? ""
        self.subCommentUserFullName = dictionary[SubcommentKeys.subCommentUserFullName.rawValue] as? String ?? ""
        self.subCommentUserProfile = dictionary[SubcommentKeys.subCommentUserProfile.rawValue] as? String ?? ""
        self.subCommentUserID = dictionary[SubcommentKeys.subCommentUserID.rawValue] as? String ?? ""
        self.replayCommentID = dictionary[SubcommentKeys.replayCommentID.rawValue] as? String ?? ""
        self.subCommentID = subCommentID
        let secondsFrom1970 = dictionary[SubcommentKeys.subCommentDataTime.rawValue] as? Double ?? 0
        self.subCommentDataTime = Date(timeIntervalSince1970: secondsFrom1970)
        self.sublikeCount = dictionary[SubcommentKeys.sublikeCount.rawValue] as? Int ?? 0
        
        if let arr = dictionary[SubcommentKeys.subcommentLikeUsers.rawValue] as? [String], arr.count != 0{
            self.subcommentLikeUsers = arr
        }else{
            let arr = [String]()
            self.subcommentLikeUsers = arr
        }
        
        
    }
}
