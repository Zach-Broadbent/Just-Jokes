//
//  HomeView.swift
//  Joke App
//
//  Created by Zach Broadbent on 10/23/23.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationView {
            ZStack {
                Color("Secondary")
                buttonsSection
                    .navigationBarBackButtonHidden(true)
            }
            .ignoresSafeArea()
        }
    }

    // MARK: Buttons section
    var buttonsSection: some View {
        VStack {
            NavigationLink(destination: DadJokeView(dadJokeViewModel: DadJokeViewModel(), savedJokeViewModel: SavedJokeViewModel())) {
                HomeScreenButton(text: "Dad Jokes")
            }
           //.navigationBarTitleDisplayMode(.inline)
            .foregroundColor(.primary)
            .padding(.bottom, 20)

            NavigationLink(destination: SavedJokeView()) {
                HomeScreenButton(text: "Saved Jokes")
            }
            .foregroundColor(.primary)
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

