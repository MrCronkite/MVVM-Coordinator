//
//  StorageManager.swift
//  mvvm+coordinator
//
//  Created by admin1 on 10.03.23.
//

import UIKit
import CoreData

//MARK: - CRUD
public final class CoreDataManager: NSObject {
    public static var shared = CoreDataManager()
    private override init() {}
    
    private var appDelegate: AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }
    
    private var context: NSManagedObjectContext {
        appDelegate.persistentContainer.viewContext
    }
    
    public func createUser(_ firstName: String, lastName: String, email: String, password: String) {
        guard let userEntityDescription = NSEntityDescription.entity(forEntityName: "User", in: context) else { return }
        let user = User(entity: userEntityDescription, insertInto: context)
        user.firstName = firstName
        user.lastName = lastName
        user.email = email
        user.password = password
        
        appDelegate.saveContext()
    }
    
    public func fetchUsers() -> [User] {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        do { return (try? context.fetch(fetchRequest) as? [User]) ?? [] }
    }
    
    public func fetchUser(_ email: String) -> User? {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Photo")
        do {
            let users = try? context.fetch(fetchRequest) as? [User]
            return users?.first(where: { $0.email == email })
        }
    }
    
    public func updataUser(with firstName: String, lastName: String, email: String, password: String ) {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        do {
            guard let users = try? context.fetch(fetchRequest) as? [User],
                  let user = users.first(where: {$0.email == email }) else { return }
            user.email = email
            user.lastName = lastName
            user.firstName = firstName
            user.password = password
        }
        
        appDelegate.saveContext()
    }
    
    
    
}
