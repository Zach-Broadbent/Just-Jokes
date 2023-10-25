//
//  DadJoke.swift
//  Joke App
//
//  Created by Zach Broadbent on 10/23/23.
//

import Foundation


//struct DadJokeAPIResponse: Codable {
//    let success: Bool
//    let body: [DadJoke]
//}
//
//struct DadJoke: Codable, Identifiable, Hashable {
//    let _id: String
//    let joke: String
//    var id: String { return _id }
//}
struct DadJoke: Codable, Hashable {
    let joke: String
}

