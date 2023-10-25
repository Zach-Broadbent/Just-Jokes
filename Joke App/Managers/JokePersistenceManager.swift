//
//  JokePersistenceManager.swift
//  Joke App
//
//  Created by Zach Broadbent on 10/24/23.
//

import Foundation
import CoreData

class JokePersistenceManager {
    private var container: NSPersistentContainer
    private var context: NSManagedObjectContext
    
    static let shared = JokePersistenceManager()
    
    init() {
        container = NSPersistentContainer(name: "SavedJokesCDModel")
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Error loading Joke Stores: \(error)")
            }
        }
        context = container.viewContext
    }

    func save() {
        do {
            try context.save()
        } catch {
            print("Error Saving: \(error)")
        }
    }
    
    func fetchJokes() throws -> [JokeEntity] {
        let request = JokeEntity.fetchRequest()
        return try context.fetch(request)
    }
    
    func delete(_ joke: JokeEntity) {
        context.delete(joke)
        save()
    }
    
    func addJoke(_ joke: DadJoke) {
        let entity = JokeEntity(context: context)
        entity.joke = joke.joke
        save()
    }
}
