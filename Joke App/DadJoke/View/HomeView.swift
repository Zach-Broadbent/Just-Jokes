//
//  HomeView.swift
//  Joke App
//
//  Created by Zach Broadbent on 10/23/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            DadJokeView(dadJokeViewModel: DadJokeViewModel(), savedJokeViewModel: SavedJokeViewModel())
                .tabItem {
                    Label("Joke", systemImage: "magnifyingglass")
                }
            SavedJokeView()
                .tabItem {
                    Label("saved", systemImage: "heart")
                }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
