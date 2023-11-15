//
//  NewJokeButton.swift
//  Joke App
//
//  Created by Zach Broadbent on 11/15/23.
//

import SwiftUI

struct NewJokeButton: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 75)
                .fill(Color.gray)
                .frame(width: 160, height: 50)
            Text("🤩 New Joke")
                .foregroundColor(.primary)
                .font(.custom("Futura-Bold", size: 20))
        }
    }
//    init() {
//        for familyName in UIFont.familyNames {
//            print(familyName)
//
//            for fontName in UIFont.fontNames(forFamilyName: familyName) {
//                print("-- \(fontName)")
//            }
//        }
//    }
}

struct NewJokeButton_Previews: PreviewProvider {
    static var previews: some View {
        NewJokeButton()
    }
}
