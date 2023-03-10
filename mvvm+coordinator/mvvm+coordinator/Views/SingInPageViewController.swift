//
//  singInPageViewController.swift
//  mvvm+coordinator
//
//  Created by admin1 on 10.03.23.
//

import UIKit

final class SingInPageViewController: UIViewController {
    
    let textLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 40, weight: .medium)
        lable.textColor = Resouces.Colors.text
        lable.text = "Sign in"
        return lable
    }()
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.layer.cornerRadius = 15
        textField.backgroundColor = Resouces.Colors.textFieldColorbg
        textField.attributedPlaceholder = NSAttributedString(string: "First name",
                                                             attributes: [.foregroundColor: UIColor.white])
        return textField
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        view.backgroundColor = .white
        textLable.textColor = Resouces.Colors.textFieldColorbg
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func configure() {
        
        [textLable, textField].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            textLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 156),
            textLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textField.widthAnchor.constraint(equalToConstant: 230),
            textField.heightAnchor.constraint(equalToConstant: 30),
            textField.topAnchor.constraint(equalTo: textLable.topAnchor, constant: 104),
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

