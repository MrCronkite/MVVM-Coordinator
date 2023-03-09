//
//  Storyboardable.swift
//  mvvm+coordinator
//
//  Created by admin1 on 9.03.23.
//

import UIKit

protocol Storyboardable {
    static func createObj() -> Self
}


extension Storyboardable where Self: UIViewController {
    static func createObj() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}
