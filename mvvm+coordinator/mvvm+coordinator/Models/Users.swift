//
//  User.swift
//  mvvm+coordinator
//
//  Created by admin1 on 14.03.23.
//

import Foundation

struct Users {
    let firstName: String?
    let lastName: String?
    let email: String?
    let password: String?
}

extension Users {
    static var login = [
       Users(firstName: "Vlad", lastName: "Shima", email: "1234@gmail.com", password: "123456")
    ]
}
