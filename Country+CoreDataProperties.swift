//
//  Country+CoreDataProperties.swift
//  CoreData One-to-Many Relationships
//
//  Created by Arthur Sh on 11.12.2022.
//
//

import Foundation
import CoreData


extension Country {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Country> {
        return NSFetchRequest<Country>(entityName: "Country")
    }

    @NSManaged public var shortName: String?
    @NSManaged public var name: String?
    @NSManaged public var candy: NSSet?
    
    
    public var wrappeName: String {
        name ?? "Unknown name"
    }
    
    public var wrappedShortName: String{
        shortName ?? "Unknown short name"
    }
    
    public var candyArray: [Candy] {
        //Try convert NSSet to Set of <Candy>
        let set = candy as? Set<Candy> ?? []
        
        return set.sorted{
            $0.wrappedName < $1.wrappedName
        }
    }

}

// MARK: Generated accessors for candy
extension Country {

    @objc(addCandyObject:)
    @NSManaged public func addToCandy(_ value: Candy)

    @objc(removeCandyObject:)
    @NSManaged public func removeFromCandy(_ value: Candy)

    @objc(addCandy:)
    @NSManaged public func addToCandy(_ values: NSSet)

    @objc(removeCandy:)
    @NSManaged public func removeFromCandy(_ values: NSSet)

}

extension Country : Identifiable {

}
