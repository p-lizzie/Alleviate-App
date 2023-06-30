//
//  benice.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct benice: View {
    var body: some View {
        ZStack {
            Color("babyPink")
                .ignoresSafeArea()
            VStack {
                Text("Be nice to yourself")
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 60))
                    .fontWeight(.black)
                    .foregroundColor(Color("morningBlue"))
                    .multilineTextAlignment(.center)
                    .padding(10)
                Text("When you are feeling down, it is very hard to be nice to yourself. Just try your best to stay positive.")
                    .padding(10)
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 30))
                    .foregroundColor(Color("morningBlue"))
                    .multilineTextAlignment(.center)
                    .background(Rectangle()
                        .foregroundColor(Color("papayaWhip")))
                    .cornerRadius(10)
                    .padding()
                    .padding(.horizontal, 10.0)
            }
        }
        
    }
}

struct benice_Previews: PreviewProvider {
    static var previews: some View {
        benice()
    }
}
