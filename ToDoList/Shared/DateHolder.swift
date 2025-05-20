//
//  DateHolder.swift
//  ToDoList
//
//  Created by Rhainan Domingos on 19/05/25.
//

import SwiftUI
import CoreData

class DateHolder: ObservableObject {
    
    init(_ context: NSManagedObjectContext) {
        
    }
    
    func saveContext(_ context: NSManagedObjectContext) {
        do {
            try context.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}
