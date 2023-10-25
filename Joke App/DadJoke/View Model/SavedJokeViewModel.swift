//
//  SavedJokeViewModel.swift
//  Joke App
//
//  Created by Zach Broadbent on 10/24/23.
//

import Foundation

class SavedJokeViewModel: ObservableObject {
    private let manager = JokePersistenceManager.shared
    
    @Published var savedJokes = [JokeEntity]()
    
    func fetchSavedJokes() {
        do {
            self.savedJokes = try manager.fetchJokes()
        } catch {
            print("Error fetching Jokes: \(error)")
        }
    }
    
    func delete(_ joke: JokeEntity) {
        manager.delete(joke)
        fetchSavedJokes()
    }
    
    func addJoke(joke: DadJoke) {
        manager.addJoke(joke)
        print("saved joke to core data")
    }
}
