//
//  Candy+CoreDataProperties.swift
//  CoreData One-to-Many Relationships
//
//  Created by Arthur Sh on 11.12.2022.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?
    
    public var wrappedName: String{
        name ?? "Unknown name"
    }
    
    

}

extension Candy : Identifiable {

}
