//
//  reframestress.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct reframestress: View {
    var body: some View {
        
        ZStack {
            Color("babyPink")
                .ignoresSafeArea()
            VStack {
                Text("Reframing Stress")
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 60))
                    .fontWeight(.black)
                    .foregroundColor(Color("morningBlue"))
                    .multilineTextAlignment(.center)
                    .padding(10)
                Text("Instead of percieving stress as a negative thing that limits your potential, reframe it into a positive thing which helps instead of harms your potential. Your mindset is everything. If you think this way, your stress will turn into something positive.")
                    .padding(10)
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 28))
                    .foregroundColor(Color("morningBlue"))
                    .background(Rectangle()
                        .foregroundColor(Color("papayaWhip")))
                    .multilineTextAlignment(.center)
                    .cornerRadius(10)
                    .padding()
                    .padding(.horizontal, 10.0)
            }
            
        }
    }
}

struct reframestress_Previews: PreviewProvider {
    static var previews: some View {
        reframestress()
    }
}
