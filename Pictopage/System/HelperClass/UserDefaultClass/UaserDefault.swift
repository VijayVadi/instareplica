//
//  API.swift
//  SmartSchoolAdmin
//
//  Created by Dataready 16 on 24/11/17.
//  Copyright © 2017 Dataready. All rights reserved.
//

import Foundation
import UIKit


//Default Declared Keys
extension DefaultsKeys {
    
    //Login Params
    static let UserPassword = DefaultsKey<String>("UserPassword")
    static let UserEmail = DefaultsKey<String>("UserEmail")
    static let FCMToken = DefaultsKey<String>("FCMToken")
    static let RecentPostedPagesID = DefaultsKey<[String]>("RecentPostedPagesID")
    static let isAgreeTermsAndCondition = DefaultsKey<Bool>("isAgreeTermsAndCondition")

    static func defaultFCMKeyMaker(key:String) -> DefaultsKey<Int>{
        return DefaultsKey<Int>(key)
    }
}
