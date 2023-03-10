//
//  singInPageViewController.swift
//  mvvm+coordinator
//
//  Created by admin1 on 10.03.23.
//

import UIKit

final class SingInPageViewController: UIViewController {
    
    var textLable: UILabel = {
        let text = UILabel()
        text.font = UIFont.systemFont(ofSize: 14)
        text.textColor = .red
        text.text = "hello world"
        return text
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupView()
    }
    
    //MARK: - Constraints
    private func setupView() {
        [textLable].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            textLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            textLable.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
