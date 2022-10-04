//
//  Page.swift
//  Pages
//
//  Created by Vijay Vadi on 8/20/18.
//  Copyright © 2018 Pages Inc. All rights reserved.
//

import Foundation

struct PageList {
    
    var pageCreatedUserID: String?
    var pageCreatedUserName: String?
    var pageCreatedUserFullName: String?
    var pageCreatedUserImage: String?
    var PageNameID: String?
    var PageName: String?
    var PageDescription: String?
    var PagethumbnilURLOne: String?
    var pagethumbnilURLTwo: String?
    var pageId: String?
    var pageCreationDate: Date
    var isVerified: Int?
    var isOfficialPage: Int?
    var pictoID: String?
    
    var pagePosts = [ModelPost]()
    var pagePostsArr = [String]()
    var BookMarkUsers = [String]()
    var OwnerUsersArr = [String]()
    var AdminUsersArr = [String]()
    var MemberUsersArr = [String]()
    var ViewerUsersArr = [String]()
    
    
    init(pageMainID: String, dictionary: [String: Any]) {
        self.pageCreatedUserID = dictionary["pagecreatedUserID"] as? String ?? ""
        self.pageCreatedUserFullName = dictionary["pageCreatedUserFullName"] as? String ?? ""
        self.pageCreatedUserName = dictionary["pageCreatedUserName"] as? String ?? ""
        self.pageCreatedUserImage = dictionary["pageCreatedUserProfilePicture"] as? String ?? ""
        self.pageId = pageMainID
        self.PageNameID = dictionary["page_id"] as? String ?? ""
        self.PageName = dictionary["page_name"] as? String ?? ""
        self.PageDescription = dictionary["PageDescription"] as? String ?? ""
        self.PagethumbnilURLOne = dictionary["thumbnailImageUrlOne"] as? String ?? ""
        self.pagethumbnilURLTwo = dictionary["thumbnailImageUrlTwo"] as? String ?? ""
        let secondsFrom1970 = dictionary["pageCreationDate"] as? Double ?? 0
        self.pageCreationDate = Date(timeIntervalSince1970: secondsFrom1970)
        self.isVerified = dictionary["isVerified"] as? Int ?? 0
        self.isOfficialPage = dictionary["isOfficialPage"] as? Int ?? 0
        self.pictoID = dictionary["pictoID"] as? String ?? ""
        
        if let arr = dictionary["PostsID"] as? [String], arr.count != 0{
            self.pagePostsArr = arr
        }else{
            let arr = [String]()
            self.pagePostsArr = arr
        }
        
        if let arr = dictionary["BookmarkUsers"] as? [String], arr.count != 0{
            self.BookMarkUsers = arr
        }else{
            let arr = [String]()
            self.BookMarkUsers = arr
        }
        
        if let arr = dictionary["OwnerArr"] as? [String], arr.count != 0{
            self.OwnerUsersArr = arr
        }else{
            let arr = [String]()
            self.OwnerUsersArr = arr
        }
        
        if let arr = dictionary["AdminArr"] as? [String], arr.count != 0{
            self.AdminUsersArr = arr
        }else{
            let arr = [String]()
            self.AdminUsersArr = arr
        }
        
        if let arr = dictionary["MemberArr"] as? [String], arr.count != 0{
            self.MemberUsersArr = arr
        }else{
            let arr = [String]()
            self.MemberUsersArr = arr
        }
        
        if let arr = dictionary["ViewerArr"] as? [String], arr.count != 0{
            self.ViewerUsersArr = arr
        }else{
            let arr = [String]()
            self.ViewerUsersArr = arr
        }
    }
}
