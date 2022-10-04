//
//  AppDelegate.swift
//  Pictopage
//
//  Created by Grewon on 12/08/19.
//  Copyright © 2019 Grewon. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import FirebaseAuth
import Firebase
import UserNotifications
import FirebaseMessaging

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var kGCMMessageIDKey = "gcm.message_id"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.previousNextDisplayMode = .alwaysHide
        IQKeyboardManager.shared.shouldShowToolbarPlaceholder = false
        IQKeyboardManager.shared.enableAutoToolbar = false
        
//        FirebaseApp.configure()
        if let fileName = Bundle.main.path(forResource: API.plistFileName, ofType: "plist"), let firbaseOptions = FirebaseOptions(contentsOfFile: fileName)
        {
            FirebaseApp.configure(options: firbaseOptions)
        }
        else
        {
            exit(0)
        }
        
        Messaging.messaging().delegate = self
        
        self.initPushNotification()
        
        window?.rootViewController = ViewController()
        
        if let c_user = Auth.auth().currentUser{
            print(c_user)
            FirebaseClient.sharedInstance.getCurrentUserDataInAppDelegate(controller: ViewController())
            FirebaseClient.sharedInstance.updateUserActiveOnTime()
        }
        
        print(ApiUtillity.sharedInstance.getCurrentCountry())
        
        return true
    }
    
    // MARK:- init Push Notification
    
    func initPushNotification(){
        if #available(iOS 10.0, *) {
            // For iOS 10 display notification (sent via APNS)
            UNUserNotificationCenter.current().delegate = self
            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
            UNUserNotificationCenter.current().requestAuthorization(
                options: authOptions,
                completionHandler: {_, _ in })
        } else {
            let settings: UIUserNotificationSettings =
                UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
            UIApplication.shared.registerUserNotificationSettings(settings)
        }
        UIApplication.shared.registerForRemoteNotifications()
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


extension AppDelegate : MessagingDelegate {
    // [START refresh_token]
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String) {
        print("Firebase registration token: \(fcmToken)")
        
        if fcmToken.count == 0
        {
            Defaults[.FCMToken] = "fcmToken"
        }
        else
        {
            Defaults[.FCMToken] = fcmToken
        }
        
    }
    func messaging(_ messaging: Messaging, didReceive remoteMessage: MessagingRemoteMessage) {
        print("Received data message: \(remoteMessage.appData)")
    }
    // [END ios_10_data_message]
}

extension AppDelegate : UNUserNotificationCenterDelegate {

    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        var isNavigate = false
        
        if let messageID = userInfo[kGCMMessageIDKey] {
            print("Message ID: \(messageID)")
            UserDefaults.standard.set(messageID, forKey: "messageID-fetchCompletionHandler")
            UserDefaults.standard.synchronize()
        }
        
        if UIApplication.shared.applicationState == .inactive {
            UserDefaults.standard.set("INACTIVE", forKey: "messageID-fetchCompletionHandler(UIApplication.shared.applicationState)")
            UserDefaults.standard.synchronize()
            print("INACTIVE")
            isNavigate = true
        }
        else if UIApplication.shared.applicationState == .background {
            UserDefaults.standard.set("BACKGROUND", forKey: "messageID-fetchCompletionHandler(UIApplication.shared.applicationState)")
            UserDefaults.standard.synchronize()
            print("BACKGROUND")
            isNavigate = true
        }
        else {
            UserDefaults.standard.set("FOREGROUND", forKey: "messageID-fetchCompletionHandler(UIApplication.shared.applicationState)")
            UserDefaults.standard.synchronize()
            print("FOREGROUND")
            isNavigate = false
        }
        
        if isNavigate{
//            // Print full message.
//            print(userInfo)
//            if let jsonText = userInfo[AnyHashable("eventObj")]{
//                var dictonary:NSDictionary?
//                        if let type =  userInfo[AnyHashable("type")] as? String, type == "winner" {
//                            if let data = (jsonText as AnyObject).data(using: String.Encoding.utf8.rawValue) {
//
//                                do {
//                                    dictonary = try JSONSerialization.jsonObject(with: data, options: [])  as? NSDictionary
//
//                                    if let myDictionary = dictonary
//                                    {
//
//                                        if let e_id =  userInfo[AnyHashable("eventid")] as? String, e_id.count != 0{
//                                            notificationEventID = e_id
//                                            notificationEventType = 3
//                                        }
//
//                                        if let e_image =  myDictionary["eventImage"] as? String, e_image.count != 0{
//                                            notificationEventImage = e_image
//                                        }
//
//                                        if let e_title =  myDictionary["eventName"] as? String, e_title.count != 0{
//                                            notificationEventTitle = e_title
//                                        }
//
//                                        if let w_id =  myDictionary["isWinnerUserID"] as? String, w_id.count != 0{
//                                            notificationWinnerUserID = w_id
//                                        }
//
//                                        if let e_startDate =  myDictionary["eventStartDT"] as? Int{
//                                            notificationEventStartDate = e_startDate
//                                        }
//
//                                        if let winnerDeclare = myDictionary["isWinnerDeclared"] as? Int{
//                                            if winnerDeclare == 0{
//                                                notificationWinnerDeclare = false
//                                            }else{
//                                                notificationWinnerDeclare = true
//                                            }
//                                        }
//
//                                        if let winnerNotDeclare = myDictionary["isWinnerNotDeclared"] as? Int{
//                                            if winnerNotDeclare == 0{
//                                                notificationWinnerNotDeclare = false
//                                            }else{
//                                                notificationWinnerNotDeclare = true
//                                            }
//                                        }
//
//                                        isCommingToNotification = true
//                                        notificationType = "winner"
//
//                                        if Defaults[.isLogin] == true
//                                        {
//                                            let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//                                            let myVC = mainStoryboard.instantiateViewController(withIdentifier: "navigationOfferCard")
//                                            window!.rootViewController = myVC
//                                        }
//                                        else
//                                        {
//                                            let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//                                            let myVC = mainStoryboard.instantiateViewController(withIdentifier: "navigationStart")
//                                            window!.rootViewController = myVC
//                                        }
//                                    }
//                                } catch let error as NSError {
//                                    print(error)
//                                }
//                            }
//                        }
//            }else if let jsonText = userInfo[AnyHashable("message")] as? String, jsonText.count != 0{
//
//                if jsonText == "ReferralNotification"{
//                    isCommingToNotification = true
//                    notificationType = "ReferralNotification"
//
//                    if Defaults[.isLogin] == true
//                    {
//                        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//                        let myVC = mainStoryboard.instantiateViewController(withIdentifier: "navigationOfferCard")
//                        window!.rootViewController = myVC
//                    }
//                    else
//                    {
//                        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//                        let myVC = mainStoryboard.instantiateViewController(withIdentifier: "navigationStart")
//                        window!.rootViewController = myVC
//                    }
//                }
//
//            }else{
//
//            }
        }
        
        
        
        
        completionHandler(UIBackgroundFetchResult.newData)
    }
    
  // Receive displayed notifications for iOS 10 devices.
  func userNotificationCenter(_ center: UNUserNotificationCenter,
                              willPresent notification: UNNotification,
    withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
    let userInfo = notification.request.content.userInfo

    // With swizzling disabled you must let Messaging know about the message, for Analytics
    // Messaging.messaging().appDidReceiveMessage(userInfo)
    // Print message ID.
    if let messageID = userInfo[kGCMMessageIDKey] {
      print("Message ID: \(messageID)")
    }

    // Print full message.
    print(userInfo)

    // Change this to your preferred presentation option
    completionHandler([])
  }

  func userNotificationCenter(_ center: UNUserNotificationCenter,
                              didReceive response: UNNotificationResponse,
                              withCompletionHandler completionHandler: @escaping () -> Void) {
    let userInfo = response.notification.request.content.userInfo
    // Print message ID.
    if let messageID = userInfo[kGCMMessageIDKey] {
      print("Message ID: \(messageID)")
    }

    // Print full message.
    print(userInfo)
    print(userInfo[AnyHashable("eventid")]!)
    completionHandler()
  }
}
