//
//  CoreData_One_to_Many_RelationshipsApp.swift
//  CoreData One-to-Many Relationships
//
//  Created by Arthur Sh on 11.12.2022.
//

import SwiftUI
import CoreData

@main
struct CoreData_One_to_Many_RelationshipsApp: App {
    
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
