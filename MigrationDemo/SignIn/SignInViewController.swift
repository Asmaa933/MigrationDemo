//
//  SignInViewController.swift
//  MigrationDemo
//
//  Created by Asmaa Tarek on 15/06/2023.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func loginAction(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "isLogged")
        setRootToHome()
    }
    
    private func setRootToHome() {
       guard let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else { return }
       let storyboard = UIStoryboard(name: "Main", bundle: .main)
       let homeVC = storyboard.instantiateInitialViewController()
       window.rootViewController = homeVC
    }
}
