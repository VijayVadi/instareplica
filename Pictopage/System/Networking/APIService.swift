//
//  APIService.swift
//  DynamicBodyCard
//
//  Created by Avinas Udayakumar - EMedia on 6/19/18.
//  Copyright © 2018 Avinas Udayakumar. All rights reserved.
//

import Foundation

//enum for define developemnt enviornment
enum Environment {
    case development, distribution, client
}

//enum for API service urls
//enum APIService: String {
//    // fetch locations
//    case Login = "auth/login"
//    case Forgotpassword = "password/email"
//    case SignUp = "auth/register"
//    case Logout = "auth/logout"
//    case RefreshToken = "auth/refresh"
//    case ResetPassword = "password"
//    case Category = "categories"
//    case RandomCard = "cards/random"
//    case Settings = "settings"
//    case ClearHistory = "cards/clearHistory"
//    case contactUs = "contactUs"
//
//    // request String url
//    func urlString() -> String {
//        return "\(API.BaseURL + self.rawValue)"
//    }
//    //
//    func string() -> String {
//        return self.rawValue
//    }
//}

//struct for to defing the base url and development enviornment
struct API {
    // set application Environment
    private static let appEnvironment: Environment = .development
    
    static var plistFileName: String {
        get {
            switch appEnvironment {
            case .development:
                return "GoogleService-Info-Dev"
            case .distribution:
                return "GoogleService-Info"
            case .client:
                return "GoogleService-Info"
            }
        }
    }
    
}

