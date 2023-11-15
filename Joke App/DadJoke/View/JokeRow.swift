//
//  JokeRow.swift
//  Joke App
//
//  Created by Zach Broadbent on 10/24/23.
//

import SwiftUI

struct JokeRow: View {
    let joke: String
    @State private var isExpanded: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(joke)
                .font(.headline)
                .foregroundColor(.primary)
                .lineLimit(isExpanded ? nil : 2)
                .onTapGesture {
                isExpanded.toggle()
                            }
        }
        .padding(.vertical, 8)
    }
}

struct JokeRow_Previews: PreviewProvider {
    static var previews: some View {
        JokeRow(joke: "When putting cheese in a mousetrap, always leave room for the mouse.")
    }
}
