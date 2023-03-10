//
//  ViewController.swift
//  mvvm+coordinator
//
//  Created by admin1 on 9.03.23.
//

import UIKit

class FirstViewController: UIViewController, Storyboardable {

    weak var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First VC"
    }

    @IBAction func openSeccondVC(_ sender: Any) {
        coordinator?.openSecondVC()
    }
    
    @IBAction func openThirdVC(_ sender: Any) {
        coordinator?.openThirddVC()
    }
    
    
}

