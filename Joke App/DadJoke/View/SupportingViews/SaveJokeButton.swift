//
//  SaveJokeButton.swift
//  Joke App
//
//  Created by Zach Broadbent on 11/15/23.
//

import SwiftUI

struct SaveJokeButton: View {
    
    let size: CGFloat = 65.0
    let fontSize: CGFloat = 15.0
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: size, height: size, alignment: .center)
                .foregroundColor(Color("SaveButtonColor"))
                .cornerRadius(5)
            
            Circle()
                .frame(width: size, height: size, alignment: .center)
                .foregroundColor(Color("SaveButtonColor"))
                .padding(.top, -size)
            
            Circle()
                .frame(width: size, height: size, alignment: .center)
                .foregroundColor(Color("SaveButtonColor"))
                .padding(.trailing, -size)
                
            Text("Save Joke")
                .foregroundColor(Color.white)
                .rotationEffect(Angle(degrees: 45))
                .font(.custom("Futura-Bold", size: fontSize))
                .offset(x: 10, y: -10)
        }.rotationEffect(Angle(degrees: -45))
    }
}

struct SaveJokeButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveJokeButton()
    }
}
