//
//  DadJokeViewModel.swift
//  Joke App
//
//  Created by Zach Broadbent on 10/23/23.
//
//

import Foundation

class DadJokeViewModel: ObservableObject {
    @Published var joke: DadJoke?

    func fetchRandomJoke() {
        let url = URL(string: "https://api.api-ninjas.com/v1/dadjokes?limit=1")!
        var request = URLRequest(url: url)
        request.setValue("BrXt3PzOlDocUqZkbTTG0A==wnDZiPkUahbuc0kl", forHTTPHeaderField: "X-Api-Key")

        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            do {
                let response = try JSONDecoder().decode([DadJoke].self, from: data)
                if let firstJoke = response.first {
                    DispatchQueue.main.async {
                        self.joke = firstJoke
                    }
                }
            } catch {
                print("Error decoding Dad Joke API response: \(error)")
            }
        }.resume()
    }
}







