//
//  ThirdViewController.swift
//  mvvm+coordinator
//
//  Created by admin1 on 9.03.23.
//

import UIKit

class ThirdViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third VC"
    }
    
    @IBAction func openFirstVC(_ sender: Any) {
        coordinator?.openFirsVC()
    }
    @IBAction func openSeccond(_ sender: Any) {
        coordinator?.openSecondVC()
    }
    
}
