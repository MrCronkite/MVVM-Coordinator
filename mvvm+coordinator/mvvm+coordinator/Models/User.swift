//
//  User.swift
//  mvvm+coordinator
//
//  Created by admin1 on 14.03.23.
//

import Foundation

struct User {
    let firstName: String?
    let lastName: String?
    let email: String?
    let password: String?
}

extension User {
    static var login = [
       User(firstName: "Vlad", lastName: "Shima", email: "1234@gmail.com", password: "123456")
    ]
}
