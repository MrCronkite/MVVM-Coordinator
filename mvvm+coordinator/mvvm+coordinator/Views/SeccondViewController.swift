//
//  SeccondViewController.swift
//  mvvm+coordinator
//
//  Created by admin1 on 9.03.23.
//

import UIKit

class SeccondViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second VC"
    }

    @IBAction func openThird(_ sender: Any) {
        coordinator?.openThirddVC()
    }
    
    
    @IBAction func openFirst(_ sender: Any) {
        coordinator?.openFirsVC()
    }
}
