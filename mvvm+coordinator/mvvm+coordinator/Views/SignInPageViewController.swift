//
//  singInPageViewController.swift
//  mvvm+coordinator
//
//  Created by admin1 on 10.03.23.
//

import UIKit

final class SignInPageViewController: UIViewController{
    
    weak var coordinator: AppCoordinator?
    
    let textLable: UILabel = {
        let lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        lable.textColor = Resouces.Colors.text
        lable.text = "Sign in"
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
    
    let textFieldLastName: UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.layer.cornerRadius = 15
        textField.backgroundColor = Resouces.Colors.textFieldColorbg
        textField.attributedPlaceholder = NSAttributedString(string: "Last name",
                                                             attributes: [.foregroundColor: Resouces.Colors.textFieldColorText])
        return textField
    }()
    
    let textFieldEmail: UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.layer.cornerRadius = 15
        textField.backgroundColor = Resouces.Colors.textFieldColorbg
        textField.attributedPlaceholder = NSAttributedString(string: "Email",
                                                             attributes: [.foregroundColor: Resouces.Colors.textFieldColorText])
        return textField
    }()
    
    let buttonSignIn: UIButton = {
        let button = UIButton()
        button.backgroundColor = Resouces.Colors.btnColor
        button.setTitle("Sign in", for: .normal)
        button.layer.cornerRadius = 15
        return button
    }()
    
    let lableSubText: UILabel = {
        let lable = UILabel()
        lable.text = "Alredy have an account?"
        lable.font = UIFont.systemFont(ofSize: 12)
        lable.textColor = Resouces.Colors.subText
        return lable
    }()
    
    let buttonLogIn: UIButton = {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(Resouces.Colors.btnColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return button
    }()
    
    let buttonSignInWithGoogle: UIButton = {
        let button = UIButton()
        button.setImage(Resouces.Images.google, for: .normal)
        button.setTitle("  Sign in with Google", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        return button
    }()
    
    let buttonSignInWithApple: UIButton = {
        let button = UIButton()
        button.setImage(Resouces.Images.apple, for: .normal)
        button.setTitle("  Sign in with Apple", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        return button
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        view.backgroundColor = .white
        
        buttonLogIn.addTarget(self, action: #selector(openLogInVC), for: .touchUpInside)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Action
   @objc private func openLogInVC(){
       coordinator?.openLoginPage()
    }
    
    //MARK: - Configure
    private func configure() {
        [textLable,
         textFieldFirstName,
         textFieldLastName,
         textFieldEmail,
         buttonSignIn,
         lableSubText,
         buttonLogIn,
         buttonSignInWithGoogle,
         buttonSignInWithApple].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            textLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 156),
            textLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textFieldFirstName.widthAnchor.constraint(equalToConstant: 290),
            textFieldFirstName.heightAnchor.constraint(equalToConstant: 30),
            textFieldFirstName.topAnchor.constraint(equalTo: textLable.bottomAnchor, constant: 77),
            textFieldFirstName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textFieldLastName.widthAnchor.constraint(equalToConstant: 290),
            textFieldLastName.heightAnchor.constraint(equalToConstant: 30),
            textFieldLastName.topAnchor.constraint(equalTo: textFieldFirstName.bottomAnchor, constant: 35),
            textFieldLastName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textFieldEmail.widthAnchor.constraint(equalToConstant: 290),
            textFieldEmail.heightAnchor.constraint(equalToConstant: 30),
            textFieldEmail.topAnchor.constraint(equalTo: textFieldLastName.bottomAnchor, constant: 35),
            textFieldEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            buttonSignIn.widthAnchor.constraint(equalToConstant: 290),
            buttonSignIn.heightAnchor.constraint(equalToConstant: 46),
            buttonSignIn.topAnchor.constraint(equalTo: textFieldEmail.bottomAnchor, constant: 35),
            buttonSignIn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            lableSubText.topAnchor.constraint(equalTo: buttonSignIn.bottomAnchor, constant: 17),
            lableSubText.leadingAnchor.constraint(equalTo: buttonSignIn.leadingAnchor),
            
            buttonLogIn.widthAnchor.constraint(equalToConstant: 35),
            buttonLogIn.heightAnchor.constraint(equalToConstant: 10),
            buttonLogIn.leadingAnchor.constraint(equalTo: lableSubText.trailingAnchor, constant: 5),
            buttonLogIn.topAnchor.constraint(equalTo: buttonSignIn.bottomAnchor, constant: 17),
            
            buttonSignInWithGoogle.widthAnchor.constraint(equalToConstant: 170),
            buttonSignInWithGoogle.heightAnchor.constraint(equalToConstant: 30),
            buttonSignInWithGoogle.topAnchor.constraint(equalTo: lableSubText.bottomAnchor, constant: 70),
            buttonSignInWithGoogle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            buttonSignInWithApple.widthAnchor.constraint(equalToConstant: 170),
            buttonSignInWithApple.heightAnchor.constraint(equalToConstant: 30),
            buttonSignInWithApple.topAnchor.constraint(equalTo: buttonSignInWithGoogle.bottomAnchor, constant: 35),
            buttonSignInWithApple.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
}

