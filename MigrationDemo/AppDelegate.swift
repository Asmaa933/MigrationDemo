//
//  AppDelegate.swift
//  MigrationDemo
//
//  Created by Asmaa Tarek on 14/06/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
        window = UIWindow(frame: UIScreen.main.bounds)
        // or initialize from nib file
        window?.rootViewController = storyboard.instantiateInitialViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

