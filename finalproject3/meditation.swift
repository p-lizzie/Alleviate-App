//
//  meditation.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct meditation: View {
    var body: some View {
        ZStack {
            Color("babyPink")
                .ignoresSafeArea()
            VStack {
                Text("Meditation")
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 60))
                    .fontWeight(.black)
                    .foregroundColor(Color("morningBlue"))
                    .multilineTextAlignment(.center)
                    .padding(20)
                Text("Meditation is a simple yet powerful technique that can help improve anxiety, stress, sleep, and emotional well-being. Meditation comes in many different forms but the goal is always to tune out all of the world’s noise and chaos and to focus on awareness to bring about emotional calm. Find more info about different forms of meditation here: https://www.nytimes.com/guides/well/how-to-meditate")
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

struct meditation_Previews: PreviewProvider {
    static var previews: some View {
        meditation()
    }
}
