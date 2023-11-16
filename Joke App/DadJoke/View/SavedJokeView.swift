////
////  SavedJokeView.swift
////  Joke App
////
////  Created by Zach Broadbent on 10/24/23.
////
//
import SwiftUI

struct SavedJokeView: View {
    
    @StateObject var savedJokeViewModel = SavedJokeViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Secondary")
                savedJokeList
            }
            .onAppear {
                savedJokeViewModel.fetchSavedJokes()
            }
        }
    }
    
    // MARK: SavedJokeList
    var savedJokeList: some View {
        List(savedJokeViewModel.savedJokes, id: \.self) { joke in
            jokeRow(for: joke)
        }
        .navigationBarTitle("Saved Jokes")
    }
    
    func jokeRow(for joke: JokeEntity) -> some View {
        JokeRow(joke: joke.joke ?? "Unknown")
            .swipeActions {
                Button {
                    savedJokeViewModel.delete(joke)
                } label: {
                    Label("Remove Joke", systemImage: "heart.slash.fill")
                        .labelStyle(.iconOnly)
                }
                .tint(.red)
            }
    }
}


struct SavedJokeView_Previews: PreviewProvider {
    static var previews: some View {
        SavedJokeView()
    }
}
