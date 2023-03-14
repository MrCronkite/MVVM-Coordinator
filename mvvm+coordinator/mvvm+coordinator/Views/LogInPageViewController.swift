//
//  LogInViewController.swift
//  mvvm+coordinator
//
//  Created by admin1 on 12.03.23.
//

import UIKit

final class LogInPageViewController: UIViewController{
    
    weak var coordinator: AppCoordinator?
    
    let textLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        lable.textColor = Resouces.Colors.text
        lable.text = "Welcom back"
        return lable
    }()
    
    let textFieldFirstName: UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.layer.cornerRadius = 15
        textField.backgroundColor = Resouces.Colors.textFieldColorbg
        textField.attributedPlaceholder = NSAttributedString(string: "First name",
                                                             attributes: [.foregroundColor: Resouces.Colors.textFieldColorText])
        return textField
    }()
    
    let textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.layer.cornerRadius = 15
        textField.backgroundColor = Resouces.Colors.textFieldColorbg
        textField.attributedPlaceholder = NSAttributedString(string: "Password",
                                                             attributes: [.foregroundColor: Resouces.Colors.textFieldColorText])
        return textField
    }()
    
    let buttonLogIn: UIButton = {
        let button = UIButton()
        button.backgroundColor = Resouces.Colors.btnColor
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 15
        return button
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        view.backgroundColor = .white
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Configure
    private func configure() {
        [textLable,
        textFieldFirstName,
        textFieldPassword,
        buttonLogIn].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            textLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 156),
            textLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textFieldFirstName.widthAnchor.constraint(equalToConstant: 290),
            textFieldFirstName.heightAnchor.constraint(equalToConstant: 30),
            textFieldFirstName.topAnchor.constraint(equalTo: textLable.bottomAnchor, constant: 80),
            textFieldFirstName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textFieldPassword.widthAnchor.constraint(equalToConstant: 290),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 30),
            textFieldPassword.topAnchor.constraint(equalTo: textFieldFirstName.bottomAnchor, constant: 35),
            textFieldPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            buttonLogIn.widthAnchor.constraint(equalToConstant: 290),
            buttonLogIn.heightAnchor.constraint(equalToConstant: 46),
            buttonLogIn.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 100),
            buttonLogIn.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
}
