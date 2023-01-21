//
//  SceneDelegate.swift
//  WorldOfPAYBACK
//
//  Created by Amel Dizdarevic on 1/21/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var applicationCoordinator: MainCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let applicationCoordinator = MainCoordinator(window: window)
            applicationCoordinator.start()

            self.applicationCoordinator = applicationCoordinator
            window.makeKeyAndVisible()
        }
    }
}

