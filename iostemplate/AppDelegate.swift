//
//  AppDelegate.swift
//  iostemplate
//
//  Created by Prashant Prajapati on 08/01/23.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var loginData : CSLoginResonse?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared.enable = true
        PPLocalization.sharedInstance.setLanguage(language: "en")
        loginData = getLoginData()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

// MARK: - User extension

extension AppDelegate {
    func saveLoginData(data : CSLoginResonse) {
        self.loginData = data
        UserDefaults.standard.setValue(data.toDictionary(), forKey: AppConstants.LOGIN_DATA)
    }
    
    fileprivate func getLoginData() -> CSLoginResonse? {
        if let data = UserDefaults.standard.value(forKey: AppConstants.LOGIN_DATA) as? [String:Any] {
            return CSLoginResonse.init(fromDictionary: data)
        }
        return nil
    }
}
