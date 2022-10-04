//
//  Constant.swift
//  CurrencySwap
//
//  Created by SocialInfotech 13 on 8/17/18.
//  Copyright © 2018 SocialInfotech 13. All rights reserved.
//

import Foundation
import UIKit


// Enum string

public enum Model : String {

//Simulator
case simulator     = "simulator/sandbox",

//iPod
iPod1              = "iPod 1",
iPod2              = "iPod 2",
iPod3              = "iPod 3",
iPod4              = "iPod 4",
iPod5              = "iPod 5",

//iPad
iPad2              = "iPad 2",
iPad3              = "iPad 3",
iPad4              = "iPad 4",
iPadAir            = "iPad Air ",
iPadAir2           = "iPad Air 2",
iPadAir3           = "iPad Air 3",
iPad5              = "iPad 5", //iPad 2017
iPad6              = "iPad 6", //iPad 2018

//iPad Mini
iPadMini           = "iPad Mini",
iPadMini2          = "iPad Mini 2",
iPadMini3          = "iPad Mini 3",
iPadMini4          = "iPad Mini 4",
iPadMini5          = "iPad Mini 5",

//iPad Pro
iPadPro9_7         = "iPad Pro 9.7\"",
iPadPro10_5        = "iPad Pro 10.5\"",
iPadPro11          = "iPad Pro 11\"",
iPadPro12_9        = "iPad Pro 12.9\"",
iPadPro2_12_9      = "iPad Pro 2 12.9\"",
iPadPro3_12_9      = "iPad Pro 3 12.9\"",

//iPhone
iPhone4            = "iPhone 4",
iPhone4S           = "iPhone 4S",
iPhone5            = "iPhone 5",
iPhone5S           = "iPhone 5S",
iPhone5C           = "iPhone 5C",
iPhone6            = "iPhone 6",
iPhone6Plus        = "iPhone 6 Plus",
iPhone6S           = "iPhone 6S",
iPhone6SPlus       = "iPhone 6S Plus",
iPhoneSE           = "iPhone SE",
iPhone7            = "iPhone 7",
iPhone7Plus        = "iPhone 7 Plus",
iPhone8            = "iPhone 8",
iPhone8Plus        = "iPhone 8 Plus",
iPhoneX            = "iPhone X",
iPhoneXS           = "iPhone XS",
iPhoneXSMax        = "iPhone XS Max",
iPhoneXR           = "iPhone XR",
iPhone11           = "iPhone 11",
iPhone11Pro        = "iPhone 11 Pro",
iPhone11ProMax     = "iPhone 11 Pro Max",

//Apple TV
AppleTV            = "Apple TV",
AppleTV_4K         = "Apple TV 4K",
unrecognized       = "?unrecognized?"
}

//Appdelegate Object
let appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate

// MARK:- UIColor

let dullBack = UIColor(red: 27.0/255.0, green: 29.0/255.0, blue: 31.0/255.0, alpha: 1.0)
let blue = UIColor(red: 43.0/255.0, green: 97.0/255.0, blue: 238.0/255.0, alpha: 1.0)
let GrayD8 = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
let GrayD8A21 = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 0.21)
let GrayD850 = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 0.5)
let Gray97 = UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0)
let black1C = UIColor(red: 28.0/255.0, green: 28.0/255.0, blue: 28.0/255.0, alpha: 1.0)
let black1a = UIColor(red: 26.0/255.0, green: 26.0/255.0, blue: 26.0/255.0, alpha: 1.0)
let black10 = UIColor(red: 16.0/255.0, green: 16.0/255.0, blue: 16.0/255.0, alpha: 1.0)
let black1F2225 = UIColor(red: 31.0/255.0, green: 34.0/255.0, blue: 37.0/255.0, alpha: 1.0)
let gray66 = UIColor(red: 102.0/255.0, green: 102.0/255.0, blue: 102.0/255.0, alpha: 1.0)
let grayA5 = UIColor(red: 165.0/255.0, green: 165.0/255.0, blue: 165.0/255.0, alpha: 1.0)
let black0B0B0B = UIColor(red: 11.0/255.0, green: 11.0/255.0, blue: 11.0/255.0, alpha: 1.0)
let black13 = UIColor(red: 19.0/255.0, green: 19.0/255.0, blue: 19.0/255.0, alpha: 1.0)
let whiteF7F7F9 = UIColor(red: 247.0/255.0, green: 247.0/255.0, blue: 249.0/255.0, alpha: 1.0)
let whiteF9FAF9 = UIColor(red: 249.0/255.0, green: 250.0/255.0, blue: 249.0/255.0, alpha: 1.0)
let darkGray515151 = UIColor(red: 81.0/255.0, green: 81.0/255.0, blue: 81.0/255.0, alpha: 1.0)
let GrayEEEEEE = UIColor(red: 238.0/255.0, green: 238.0/255.0, blue: 238.0/255.0, alpha: 1.0)

let Black101010 = UIColor(red: 16.0/255.0, green: 16.0/255.0, blue: 16.0/255.0, alpha: 1.0)


let deviceType = "iPhone"


// MARK:- Font

let H_medium = "HelveticaNeueMed"
let H_Reguler = "HelveticaNeueLt"
let H_bold = "HelveticaNeueBd"


//No Parameters in API
let noParams = ["" : "" as AnyObject]
let noDataMsg = "Check back later!"
var noDataMessage = noDataMsg
let noDataIcon = "no_data_ios"

let noTalksIcon = "no_data_ios"
let noFavouriteIcon = "favorites_unfilled"
let noCategoryIcon = "category_ios"
let noLeaderBoardIcon = "leaderBorad"
let noFollowerIcon = "followers"
let noAlertsIcon = "notification"
let noKarmaUserIcon = "name"
let noUsersIcon = "name"

var noInternetMessage = "Internet not available"
var noInternetIcon = "no_internet_ios"
let noDataSize = CGSize(width: 100, height: 89)
let noDataColor = UIColor.white


//Account Status
let AccountSuspended = "Account Suspended"
let AccountSuspendedmsg = "Your account has been suspended due to posting inappropriate content! Please contact administration for more details!"
let AccountFrozen = "Account Frozen"
let AccountFrozenmsg = "Your account has been Frozen due to posting inappropriate content! Please contact administration for more details!"
let AccountDisabled = "Reporting Function Disabled"
let AccountDisabledmsg = "Due to inaccurate reports, you can no longer report users. Contact admin for details."
let AccountDisableIcon = "danger"

let AccountTalkReport = "Talk Report"


