//
//  League+CoreDataProperties.swift
//  
//
//  Created by Nader Said on 05/06/2022.
//
//

import Foundation
import CoreData


extension LeagueManagedObject {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LeagueManagedObject>
    {
        return NSFetchRequest<LeagueManagedObject>(entityName: "League")
    }

    @NSManaged public var idLeague: String?
    @NSManaged public var strLeague: String?
    @NSManaged public var strYoutube: String?
    @NSManaged public var strBadge: String?

}
