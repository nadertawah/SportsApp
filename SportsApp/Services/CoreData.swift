//
//  CoreData.swift
//  lab2
//
//  Created by Nader Said on 31/05/2022.
//

import Foundation
import CoreData

class CoreData
{
    static let shared = CoreData()
    private init(){}
    
    var context: NSManagedObjectContext =
    {
        
        let container = NSPersistentContainer(name: "SportsApp")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError?
            {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container.viewContext
    }()
    
    // MARK: - Core Data Saving support
    
    func getItems<T:NSManagedObject>(type : T.Type ,completion : ([T]) -> ())
    {
        var items = [T]()
        do
        {
            let fetchReq = T.fetchRequest() as! NSFetchRequest<T>
            items = try context.fetch(fetchReq)
            completion(items)
        }
        catch
        {
            completion(items)
            print("Error retrieving data\n")
        }
    }
    
    func saveContext ()
    {
        if context.hasChanges
        {
            do
            {
                try context.save()
            }
            catch
            {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func insertLeagueIntoCoreData(idLeague: String?,strBadge: String?,strLeague: String?,strYoutube: String?)
    {
        guard let entity = NSEntityDescription.entity(forEntityName: "League", in: context)
        else{return}
        let league = NSManagedObject(entity: entity, insertInto: context)

        league.setValuesForKeys(
            ["idLeague" : idLeague ?? "" ,
             "strBadge" : strBadge ?? "" ,
             "strLeague" : strLeague ?? "" ,
             "strYoutube": strYoutube ?? ""
            ])

         saveContext()
    }
    
    func deleteObj<T:NSManagedObject>(type : T.Type,predicate:NSPredicate)
    {
        let fetchRequest = T.fetchRequest() as! NSFetchRequest<T>
        fetchRequest.predicate = predicate
        let objects = try? context.fetch(fetchRequest)
        
        
        if let objects = objects , !objects.isEmpty
        {
            context.delete(objects[0])
        }
        
        saveContext()
    }
}
