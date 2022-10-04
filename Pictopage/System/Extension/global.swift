//
//  global.swift
//  Pictopage
//
//  Created by Ravi Padshala on 03/03/20.
//  Copyright © 2020 Grewon. All rights reserved.
//

import Foundation
import UIKit


typealias AddedStatus = (_ Status: Bool) -> Void
var usersDict = [Any]()


func checkUserExistOrNot(userID: String, userName: String, userFullName: String, userProfilePicture: String){
    
    if usersDict.count != 0{
        for item in usersDict{
            
            let data = item as! [String: Any]
            
            var keyArr = [String]()
            
            for (key, value) in data{
                
                keyArr.append(key)
                print(value)
            }
            
            if keyArr.contains("1"){
                print("contains")
            }else{
                addUserDataInDict(userID: userID, userName: userName, userFullName: userFullName, userProfilePicture: userProfilePicture) { (isAdded) in
                    checkUserExistOrNot(userID: userID, userName: userName, userFullName: userFullName, userProfilePicture: userProfilePicture)
                }
            }
        }
    }else{
        addUserDataInDict(userID: userID, userName: userName, userFullName: userFullName, userProfilePicture: userProfilePicture) { (isAdded) in
            checkUserExistOrNot(userID: userID, userName: userName, userFullName: userFullName, userProfilePicture: userProfilePicture)
        }
    }
    
    
    
}

func addUserDataInDict(userID: String, userName: String, userFullName: String, userProfilePicture: String, completionSuccess: @escaping AddedStatus){
    
    var dict = [String: Any]()
    var userDataDict = [String: Any]()
    
    userDataDict["userName"] = userName
    userDataDict["userProfilePicture"] = userProfilePicture
    userDataDict["fullName"] = userFullName
    
    
    dict[userID] = userDataDict
    
    usersDict.append(dict)

    completionSuccess(true)
}
