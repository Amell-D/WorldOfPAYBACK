//
//  TransactionsCoordinator.swift
//  WorldOfPAYBACK
//
//  Created by Amel Dizdarevic on 1/21/23.
//

import Foundation
import UIKit
import SwiftUI
import TransactionsWBM

final class TransactionsCoordinator: NSObject, NavigationCoordinator {
    var rootViewController: UINavigationController

    @StateObject var viewModel = TransactionsViewModel()

    override init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        rootViewController.title = "Transactions"
        super.init()
        rootViewController.delegate = self
    }

    lazy var contentViewController: UIViewController = {
        let rootView = TransactionsWBListView(viewModel: viewModel)
        rootView.viewModel.showDetailRequested = { [weak self] in
            guard let self = self else { return }
            self.goToDetails()
        }
        return UIHostingController(rootView: rootView)
    }()

    func start() {
        rootViewController.setViewControllers([contentViewController], animated: false)
    }

    private func goToDetails() {
        let detailsViewController = UIHostingController(rootView: TransactionsWBDetailsViews())
        rootViewController.pushViewController(detailsViewController, animated: true)
    }
}

extension TransactionsCoordinator: UINavigationControllerDelegate {
    public func navigationController(_ navigationController: UINavigationController,
                                     willShow viewController: UIViewController,
                                     animated: Bool) {
        if viewController as? UIHostingController<TransactionsWBM.TransactionsWBListView> != nil {
            print("first will be shown")
        }
        // TODO: Add this part when details screen is created
        //        if viewController as? UIHostingController<FirstDetailView> != nil {
        //            print("detail will be shown")
        //        } else
    }
}


