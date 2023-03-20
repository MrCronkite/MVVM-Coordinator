//
//  User+CoreDataProperties.swift
//  mvvm+coordinator
//
//  Created by admin1 on 19.03.23.
//
//

import Foundation
import CoreData


@objc(User)
public class User: NSManagedObject {

}

extension User {

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var email: String?
    @NSManaged public var password: String?

}

extension User : Identifiable {}
