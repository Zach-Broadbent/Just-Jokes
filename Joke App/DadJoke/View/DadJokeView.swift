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
        ZStack {
            Rectangle()
                .frame(width: 380, height: 490)
                .foregroundColor(Color("Primary"))
            VStack {
                
                Spacer()
                
                if let joke = dadJokeViewModel.joke {
                    HStack {
                        Spacer()
                        Text(joke.joke)
                            .font(.custom("Futura-Medium", size: 25))
                        Spacer()
                    }
                        
                } else {
                    Text("Press button for joke")
                        .font(.custom("Futura-Medium", size: 25))
                }
                
                Spacer()
                
                Button(action: {
                    dadJokeViewModel.fetchRandomJoke()
                }) {
                    NewJokeButton()
                    
                }
                .padding(.top, 20)
                
                Button(action: {
                    if let joke = dadJokeViewModel.joke {
                        savedJokeViewModel.addJoke(joke: joke)
                    }
                }, label: {
                    SaveJokeButton()
                })
                .padding(.top, 30)
            }
        }
        .background(Color("Secondary"))
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

