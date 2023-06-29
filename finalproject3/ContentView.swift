//
//  ContentView.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
                  ZStack {
                      Image("homepage")
                      VStack(spacing: 30) {
                          
                          VStack() {
                              Text("Alleviate")
                                  .fontWeight(.black)
                                  .foregroundColor(Color("morningBlue"))
                                  .font(.custom(
                                      "AmericanTypewriter",
                                      fixedSize: 70))
                                  .padding(2)
                              Text("Daily Mood Tracker")
                                      .font(.custom(
                                          "AmericanTypewriter",
                                          fixedSize: 25))
                                      .fontWeight(.medium)
                                      .foregroundColor(Color("morningBlue"))
                                  Text(" and Journal")
                                      .font(.custom(
                                          "AmericanTypewriter",
                                          fixedSize: 25))
                                      .fontWeight(.medium)
                                  .foregroundColor(Color("morningBlue"))
                              
                              
                          }
                          .padding(5)
                          
                          VStack(spacing: 30) {
                              VStack{ NavigationLink(destination: dailyjournal()) {
                                  Image("dailyjournalicon")
                                      .resizable(resizingMode: .stretch)
                                      .frame(width: 100.0, height: 100.0)
                                      .aspectRatio(contentMode: .fit)
                                      .aspectRatio(contentMode: .fit)
                                      .background(Circle()
                                          .frame(width: 120.0, height: 120.0)
                                          .foregroundColor(Color("x11Gray")))
                                  
                              }
                                  Text("Daily Journal")
                                      .font(.custom(
                                          "AmericanTypewriter",
                                          fixedSize: 25))
                                  .foregroundColor(Color("morningBlue"))}
                              HStack(alignment: .bottom, spacing: 70) {
                                  VStack(spacing: 30) {
                                      NavigationLink(destination: tree()) {
                                          Image("calendaricon")
                                              .resizable(resizingMode: .stretch)
                                              .frame(width: 80.0, height: 80.0)
                                              .aspectRatio(contentMode: .fit)
                                              .aspectRatio(contentMode: .fit)
                                              .background(Circle()
                                                  .frame(width: 120.0, height: 120.0)
                                                  .foregroundColor(Color("x11Gray")))
                                      }
                                          
                                      
                                      

                                         
                                        
                                      Text("Past Entries")
                                          .font(.custom(
                                              "AmericanTypewriter",
                                              fixedSize: 25))
                                          .foregroundColor(Color("morningBlue"))
                                          .multilineTextAlignment(.center)
                                      }
                                          
                                  VStack(spacing: 30) {
                                      NavigationLink(destination: resources()) {
                                          Image("tipsicon")
                                              .resizable(resizingMode: .stretch)
                                              .frame(width: 85.0, height: 85.0)
                                              .aspectRatio(contentMode: .fit)
                                          .aspectRatio(contentMode: .fit)}
                                      .background(Circle()
                                          .frame(width: 120.0, height: 120.0)
                                          .foregroundColor(Color("x11Gray")))
                                      Text("Resources")
                                          .font(.custom(
                                              "AmericanTypewriter",
                                              fixedSize: 25))
                                          .foregroundColor(Color("morningBlue"))
                                                                      }

                                     
                                  }
                                                              
                              }
                              
                              
                          }
                          
                          
                          
                          
                          
                          
                      }
                      
                      
                  }
                  
              }
          }
          

    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
