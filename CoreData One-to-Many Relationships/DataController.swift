//
//  DataController.swift
//  CoreData One-to-Many Relationships
//
//  Created by Arthur Sh on 11.12.2022.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    var container = NSPersistentContainer(name: "CandyBar")
    
    
    init() {
        container.loadPersistentStores{ description, error in
            if let error = error {
                print("Error appeared \(error.localizedDescription)")
                return
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
    
    
}
