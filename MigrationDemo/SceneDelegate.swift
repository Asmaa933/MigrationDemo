//
//  SceneDelegate.swift
//  MigrationDemo
//
//  Created by Asmaa Tarek on 15/06/2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        window?.rootViewController = getRoot()
        window?.makeKeyAndVisible()
    }
    
    private func getRoot() -> UIViewController? {
        if UserDefaults.standard.bool(forKey: "isLogged") {
            let storyboard = UIStoryboard(name: "Main", bundle: .main)
            return storyboard.instantiateInitialViewController()
        } else {
           return SignInViewController()
        }
    }
}
