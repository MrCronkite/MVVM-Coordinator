//
//  Coordinator.swift
//  mvvm+coordinator
//
//  Created by admin1 on 9.03.23.
//

import UIKit

protocol Coordinatable {
    func start() 
}

protocol Presentable {
    var toPresent: UIViewController? {get}
}
