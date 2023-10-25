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
            List(savedJokeViewModel.savedJokes, id: \.self) { joke in
                jokeRow(for: joke)
            }
            .navigationBarTitle("Saved Jokes")
        }
        .onAppear {
            savedJokeViewModel.fetchSavedJokes()
        }
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
