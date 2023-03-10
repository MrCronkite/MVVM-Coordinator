//
//  AppCoordinator.swift
//  mvvm+coordinator
//
//  Created by admin1 on 9.03.23.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = FirstViewController.createObj()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func openFirsVC() {
        let vc = FirstViewController.createObj()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openSecondVC() {
        let vc = SeccondViewController.createObj()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openThirddVC() {
        let vc = ThirdViewController.createObj()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
