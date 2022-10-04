//
//  ApiUtility.swift
//  TestApp
//
//  Created by MAC on 10/31/17.
//  Copyright © 2017 MAC. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import Photos
//import Alamofire

private let _sharedInstance = ApiUtillity()

class ApiUtillity: NSObject {
    
    class var sharedInstance: ApiUtillity {
        return _sharedInstance
    }
    
    //For Check Internate Availability
//    func isReachable() -> Bool
//    {
//        let reachabilityManager = Alamofire.NetworkReachabilityManager(host: "www.google.com")
//        return (reachabilityManager?.isReachable)!
//    }
    
    func isGreterPhoneX() -> Bool{
        if UIDevice.current.type == .iPhoneSE || UIDevice.current.type == .iPhone6 || UIDevice.current.type == .iPhone6Plus || UIDevice.current.type == .iPhone6S || UIDevice.current.type == .iPhone6SPlus || UIDevice.current.type == .iPhone7 || UIDevice.current.type == .iPhone7Plus || UIDevice.current.type == .iPhone8 || UIDevice.current.type == .iPhone8Plus{
            return false
        }else{
            return true
        }
    }
    
    
    // MARK:- Get Current Date
    
    func GetCurrentDate() -> String
    {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd, yyyy"
        let result = formatter.string(from: date)
        return result
    }
    
    func GetCurrentDateAndTimeWithOutSpecialChar() -> String
    {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMddHHmmss"
        let result = formatter.string(from: date)
        return result
    }
    
    func GetCurrentDateAndTime() -> String
    {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yy-MM-dd HH:mm:ss"
        let result = formatter.string(from: date)
        return result
    }
    
    func convertDateToString(date: Date, newFormate: String) -> String{

        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter.string(from: date)
    }
    
    func getAppName() -> String {
        let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as! String
        return appName
    }
    
    func getOSInfo() -> String {
        let os = ProcessInfo().operatingSystemVersion
        return String(os.majorVersion) + "." + String(os.minorVersion) + "." + String(os.patchVersion)
    }
    
    func getAppInfo() -> String {
        let dictionary = Bundle.main.infoDictionary!
        let version = dictionary["CFBundleShortVersionString"] as! String
        let build = dictionary["CFBundleVersion"] as! String
        return version + "(" + build + ")"
    }
    
    func getCurrentCountry() -> String{
        let countryLocale = NSLocale.current as NSLocale
        let countryCode = countryLocale.object(forKey: .countryCode) as? String
        let country = countryLocale.displayName(forKey: .countryCode, value: countryCode ?? "")
        print("Country Code:\(countryCode ?? "") Name:\(country ?? "")")
        return country ?? ""
    }
    
    func timeAgoSinceDate(date:Date, numericDates:Bool) -> String {
        let calendar = NSCalendar.current
        let unitFlags: Set<Calendar.Component> = [.minute, .hour, .day, .weekOfYear, .month, .year, .second]
        let now = NSDate()
        let earliest = now.earlierDate(date as Date)
        let latest = (earliest == now as Date) ? date : now as Date
        let components = calendar.dateComponents(unitFlags, from: earliest as Date,  to: latest as Date)
        
        let month_ago = "Month Ago"
        let months_ago = "Months Ago"
        let day_ago = "Day Ago"
        let yesterday = "Yesterday"
        let week_ago = "Week Ago"
        let days_ago = "Days Ago"
        let last_week = "Last Week"
        let weeks_ago = "Weeks Ago"
        let last_month = "Last Month"
        let last_year = "Last Year"
        let years_ago = "Years Ago"
        let year_ago = "Year Ago"
        let hour_ago = "Hour Ago"
        let hours_ago = "Hours Ago"
        let just_now = "Just Now"
        let minutes_ago = "Minutes Ago"
        let minute_ago = "Minute Ago"
        let seconds_ago = "Seconds Ago"
        
        if (components.year! >= 2) {
            
            return "\(components.year!) "+"\(years_ago)"
        } else if (components.year! >= 1){
            if (numericDates){
                return "1 "+"\(year_ago)"
            } else {
                return "\(last_year)"
            }
        } else if (components.month! >= 2) {
            return "\(components.month!) "+"\(months_ago)"
        } else if (components.month! >= 1){
            if (numericDates){
                return "1 "+"\(month_ago)"
            } else {
                return "\(last_month)"
            }
        } else if (components.weekOfYear! >= 2) {
            return "\(components.weekOfYear!) "+"\(weeks_ago)"
        } else if (components.weekOfYear! >= 1){
            if (numericDates){
                return "1 "+"\(week_ago)"
            } else {
                return "\(last_week)"
            }
        } else if (components.day! >= 2) {
            return "\(components.day!) "+"\(days_ago)"
        } else if (components.day! >= 1){
            if (numericDates){
                return "1 "+"\(day_ago)"
            } else {
                return "\(yesterday)"
            }
        } else if (components.hour! >= 2) {
            return "\(components.hour!) "+"\(hours_ago)"
        } else if (components.hour! >= 1){
            if (numericDates){
                return "1 "+"\(hour_ago)"
            } else {
                return "An "+"\(hour_ago)"
            }
        } else if (components.minute! >= 2) {
            return "\(components.minute!) "+"\(minutes_ago)"
        } else if (components.minute! >= 1){
            if (numericDates){
                return "1 "+"\(minute_ago)"
            } else {
                return "A "+"\(minute_ago)"
            }
        } else if (components.second! >= 3) {
            return "\(components.second!) "+"\(seconds_ago)"
        } else {
            return "\(just_now)"
        }
    }
    
    func isValidEmail(emailStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailStr)
    }
    
    // MARK:- change font style
    
    func attributedString(from string: String, nonBoldRange: NSRange?, font1: UIFont, font2: UIFont) -> NSAttributedString {
        
        let attrs = [
            NSAttributedString.Key.font: font1,
        ]
        let nonBoldAttribute = [
            NSAttributedString.Key.font: font2,
        ]
        let attrStr = NSMutableAttributedString(string: string, attributes: attrs)
        if let range = nonBoldRange {
            attrStr.setAttributes(nonBoldAttribute, range: range)
        }
        return attrStr
    }
    
    func attributedBoldString(from string: String, BoldRange: NSRange?, font1: UIFont, font2: UIFont) -> NSAttributedString {
        
        let attrs = [
            NSAttributedString.Key.font: font1,
        ]
        let nonBoldAttribute = [
            NSAttributedString.Key.font: font2,
        ]
        let attrStr = NSMutableAttributedString(string: string, attributes: nonBoldAttribute)
        if let range = BoldRange {
            attrStr.setAttributes(attrs, range: range)
        }
        return attrStr
    }
    
    
    func attributedBoldStringWithMultipleColor(from string: String, BoldRange: NSRange?, font1: UIFont, font2: UIFont, font1Color: UIColor, font2Color: UIColor) -> NSAttributedString {
        
        let attrs = [
            NSAttributedString.Key.font: font1,
            NSAttributedString.Key.foregroundColor: font1Color,
        ]
        let nonBoldAttribute = [
            NSAttributedString.Key.font: font2,
            NSAttributedString.Key.foregroundColor: font2Color,
        ]
        let attrStr = NSMutableAttributedString(string: string, attributes: nonBoldAttribute)
        if let range = BoldRange {
            attrStr.setAttributes(attrs, range: range)
        }
        return attrStr
    }
}
