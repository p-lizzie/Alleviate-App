//
//  music.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct music: View {
    var body: some View {
        ZStack {
            Color("babyPink")
                .ignoresSafeArea()
            VStack {
                Text("Music")
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 60))
                    .fontWeight(.black)
                    .foregroundColor(Color("morningBlue"))
                    .multilineTextAlignment(.center)
                    .padding(20)
                Text("Listening to music can be a very powerful antidote to loneliness, depression, and anxiety. Music is shown to have positive effects on brain chemicals such as dopamine, which is linked to feelings of happiness.")
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 28))
                    .foregroundColor(Color("morningBlue"))
                    .background(Rectangle()
                        .foregroundColor(Color("papayaWhip")))
                    .multilineTextAlignment(.center)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}

struct music_Previews: PreviewProvider {
    static var previews: some View {
        music()
    }
}
