//
//  MainCoordinator.swift
//  WorldOfPAYBACK
//
//  Created by Amel Dizdarevic on 1/21/23.
//

import UIKit
import TransactionsWBM

final class MainCoordinator: NavigationCoordinator {

    let window: UIWindow

    var childCoordinators: [NavigationCoordinator] = []

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let transactionsCoordinator = TransactionsCoordinator()
        transactionsCoordinator.start()
        self.childCoordinators = [transactionsCoordinator]
        self.window.rootViewController = transactionsCoordinator.rootViewController
    }
}
