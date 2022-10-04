//
//  userData.swift
//  Pictopage
//
//  Created by Grewon on 09/09/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import Foundation

struct userData {
    
    enum UserKeys: String {
        case Bio = "Bio"
        case DOB = "DOB"
        case Email = "Email"
        case Password = "Password"
        case FullName = "FullName"
        case ProfilePicture = "ProfilePicture"
        case Status = "Status"
        case Token = "Token"
        case UserName = "UserName"
        case PictoID = "PictoID"
        case myPages = "myPages"
        case myPostsID = "myPostsID"
        case createdDT = "createdDT"
        case timestamp = "timestamp"
        case updatedDT = "updatedDT"
        case lastActiveOn = "lastActiveOn"
        case deviceInfo = "deviceInfo"
        case deviceType = "deviceType"
        case country = "country"
    }
    
    var Bio: String?
    var DOB: String?
    var Email: String?
    var Password: String?
    var FullName: String?
    var ProfilePicture: String?
    var Status: String?
    var Token: String?
    var UserName: String?
    var mypages: [String]?
    var myposts: NSArray?
    var userID: String
    var ALLpages = [String]()
    var userStatus: String?
    var pictoID: String?
    
    
    init(uID: String, dictionary: [String: Any]) {
        
        self.userID = uID
        self.Bio = dictionary[UserKeys.Bio.rawValue] as? String ?? ""
        self.DOB = dictionary[UserKeys.DOB.rawValue] as? String ?? ""
        self.Email = dictionary[UserKeys.Email.rawValue] as? String ?? ""
        self.Password = dictionary[UserKeys.Password.rawValue] as? String ?? ""
        self.FullName = dictionary[UserKeys.FullName.rawValue] as? String ?? ""
        self.ProfilePicture = dictionary[UserKeys.ProfilePicture.rawValue] as? String ?? ""
        self.Status = dictionary[UserKeys.Status.rawValue] as? String ?? ""
        self.Token = dictionary[UserKeys.Token.rawValue] as? String ?? ""
        self.UserName = dictionary[UserKeys.UserName.rawValue] as? String ?? ""
        self.pictoID = dictionary[UserKeys.PictoID.rawValue] as? String ?? ""
        self.mypages = dictionary[UserKeys.myPages.rawValue] as? [String]
        self.myposts = dictionary[UserKeys.myPostsID.rawValue] as? NSArray
        
        if let arr = dictionary["AllPages"] as? [String], arr.count != 0{
            self.ALLpages = arr
        }else{
            let arr = [String]()
            self.ALLpages = arr
        }
        
        
        
    }
    
}
