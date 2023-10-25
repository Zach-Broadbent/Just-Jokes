//
//  DadJokeView.swift
//  Joke App
//
//  Created by Zach Broadbent on 10/23/23.
//

import SwiftUI

struct DadJokeView: View {
    @ObservedObject var dadJokeViewModel: DadJokeViewModel
    @ObservedObject var savedJokeViewModel: SavedJokeViewModel
    
    var body: some View {
        VStack {
            if let joke = dadJokeViewModel.joke {
                Text(joke.joke)
                    .font(.headline)
            } else {
                Text("Press button for joke")
            }
            
            Button(action: {
                dadJokeViewModel.fetchRandomJoke()
            }) {
                Text("Generate A New Dad Joke")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

            }
            .padding(.top, 20)
            
           
            
            Button(action: {
                if let joke = dadJokeViewModel.joke {
                    savedJokeViewModel.addJoke(joke: joke)
                }
            }, label: {
                Text("Save Joke")
                    .font(.headline)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            
        }
        .onAppear {
            dadJokeViewModel.fetchRandomJoke()
        }
    }
}

struct DadJokeView_Previews: PreviewProvider {
    static var previews: some View {
        DadJokeView(dadJokeViewModel: DadJokeViewModel(), savedJokeViewModel: SavedJokeViewModel())
    }
}

