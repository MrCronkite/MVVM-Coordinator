//
//  Coordinator.swift
//  mvvm+coordinator
//
//  Created by admin1 on 9.03.23.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start() 
}
