//
//  AppCoordinator.swift
//  mvvm+coordinator
//
//  Created by admin1 on 9.03.23.
//

import UIKit

final class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    weak var coordinator: AppCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = SignInPageViewController()
        navigationController.pushViewController(vc, animated: false)
    }
    
    func openLoginPage() {
        let vc = LogInPageViewController()
        
    }
    
    
    
    
    
}
