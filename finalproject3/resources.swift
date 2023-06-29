//
//  resources.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct resources: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("babyPink")
                                .ignoresSafeArea()
                VStack(alignment: .center) {
                    Text("Resources")
                        .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 60))
                        .fontWeight(.black)
                        .foregroundColor(Color("morningBlue"))
                    Text("Hotlines and Links")
                        .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 30))
                        .foregroundColor(Color("morningBlue"))
                    Group{Text("988 Mental Health Emergency Hotline (1-800-273-8255): Open to anyone in emotional distress or suicidal crisis")
                            .font(.custom(
                                "AmericanTypewriter",
                                fixedSize: 20))
                            .foregroundColor(Color("morningBlue"))
                            .background(Rectangle()
                                .foregroundColor(Color("papayaWhip")))
                            .cornerRadius(10)

                        Text("National Domestic Violence Hotline: 1-800-799-7233")
                            .font(.custom(
                                "AmericanTypewriter",
                                fixedSize: 20))
                            .foregroundColor(Color("morningBlue"))
                            .background(Rectangle()
                                .foregroundColor(Color("papayaWhip")))
                            .cornerRadius(10)

                        Text("National Suicide Prevention Lifeline: 1-800-273-TALK (8255)")
                            .font(.custom(
                                "AmericanTypewriter",
                                fixedSize: 20))
                            .foregroundColor(Color("morningBlue"))
                            .background(Rectangle()
                                .foregroundColor(Color("papayaWhip")))
                            .cornerRadius(10)

                        Text("LGBTQ Hotline: 1-888-843-4564")}
                    .font(.custom(
                        "AmericanTypewriter",
                        fixedSize: 20))
                    .foregroundColor(Color("morningBlue"))
                    .background(Rectangle()
                        .foregroundColor(Color("papayaWhip")))
                    .cornerRadius(10)
                    .padding(1)

                    
                    Text("Tips")
                        .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 30))
                        .foregroundColor(Color("morningBlue"))
                    Text("Click on the buttons to learn more")
                        .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 20))
                        .foregroundColor(Color("morningBlue"))
                    
                    Group{NavigationLink(destination: benice()) {
                        Text("Be nice to yourself")
                          .font(.custom(
                              "AmericanTypewriter",
                              fixedSize: 30))
                          .foregroundColor(Color("morningBlue"))
                          .background(Rectangle()
                              .foregroundColor(Color("papayaWhip")))
                          .cornerRadius(10)
                          .padding(1)
                    }
                          
                        NavigationLink(destination: exercise()) {
                            Text("Exercise")
                                .font(.custom(
                                    "AmericanTypewriter",
                                    fixedSize: 30))
                                .foregroundColor(Color("morningBlue"))
                                .background(Rectangle()
                                    .foregroundColor(Color("papayaWhip")))
                                .cornerRadius(10)
                                .padding(1)
                        }
                        NavigationLink(destination: meditation()) {
                            Text("Meditation ")
                                .font(.custom(
                                    "AmericanTypewriter",
                                    fixedSize: 30))
                                .foregroundColor(Color("morningBlue"))
                                .background(Rectangle()
                                    .foregroundColor(Color("papayaWhip")))
                                .cornerRadius(10)
                                .padding(1)
                        }
                        NavigationLink(destination: music()) {
                            Text("Music ")
                                .font(.custom(
                                    "AmericanTypewriter",
                                    fixedSize: 30))
                                .foregroundColor(Color("morningBlue"))
                                .background(Rectangle()
                                    .foregroundColor(Color("papayaWhip")))
                                .cornerRadius(10)
                                .padding(1)
                        }
                        NavigationLink(destination: reframestress()) {
                            Text("Reframe stress")}
                        .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 30))
                        .foregroundColor(Color("morningBlue"))
                        .background(Rectangle()
                            .foregroundColor(Color("papayaWhip")))
                        .cornerRadius(10)
                        .padding(1)
                        }
                   
                    
                    
                 
                    
                    
                       
                        
            
                        
                    
                }

            }
        }
        
    }
}

struct resources_Previews: PreviewProvider {
    static var previews: some View {
        resources()
    }
}
