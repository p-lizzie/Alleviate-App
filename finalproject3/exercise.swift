//
//  exercise.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct exercise: View {
    var body: some View {
        ZStack {
            Color("babyPink")
                .ignoresSafeArea()
            VStack {
                Text("Exercise")
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 60))
                    .fontWeight(.black)
                    .foregroundColor(Color("morningBlue"))
                    .multilineTextAlignment(.center)
                    .padding(20)
                Text("Exercise is a natural, effective way to reduce anxiety. It relieves tension and stress and boosts physical as well as mental energy.")
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 30))
                    .foregroundColor(Color("morningBlue"))
                    .multilineTextAlignment(.center)
                    .background(Rectangle()
                        .foregroundColor(Color("papayaWhip")))
                    
                    .cornerRadius(10)
                
            }
        }
    }
}

struct exercise_Previews: PreviewProvider {
    static var previews: some View {
        exercise()
    }
}
