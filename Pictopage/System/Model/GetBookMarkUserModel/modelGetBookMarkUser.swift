//
//  modelGetBookMarkUser.swift
//  Pictopage
//
//  Created by Grewon on 18/12/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import Foundation

struct modelGetBookMarkUser {
    
    var userID: String?
    var userStatus: String?
    var bookMarkUserData: userData?
    var userPostCountOnPage: Int?
    
    init(userID: String, dictionary: [String: Any]) {
        
        self.userID = userID
        self.userStatus = dictionary["userStatus"] as? String ?? ""
        
    }
    
}

