//
//  HomeScreenButtons.swift
//  Joke App
//
//  Created by Zach Broadbent on 11/15/23.
//

import SwiftUI

struct HomeScreenButton: View {
    var text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 75)
                .fill(Color("ButtonColor"))
                .frame(width: 250, height: 50)
            Text(text)
                .font(.custom("Futura-Bold", size: 20))
        }
    }
}

struct HomeScreenButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenButton(text: "WOOW")
    }
}
