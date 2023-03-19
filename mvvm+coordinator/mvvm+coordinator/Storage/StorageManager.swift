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
    
    
}
