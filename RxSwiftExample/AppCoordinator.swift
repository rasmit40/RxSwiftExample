//
//  AppCoordinator.swift
//  RxSwiftExample
//
//  Created by R. Anderson Smith on 9/24/20.
//  Copyright © 2020 R. Anderson Smith. All rights reserved.
//

import UIKit

class AppCoordinator {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    func start() {
        let viewController = ViewController.instantiate(viewModel: RestaurantsListViewModel())
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
