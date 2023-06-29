//
//  dailyjournal.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct dailyjournal: View {
    @State private var entry = ""
    @State private var text = ""
    var body: some View {
        ZStack {
            (Color("x11Gray"))
                .edgesIgnoringSafeArea(.all)
            
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/30.0/*@END_MENU_TOKEN@*/)
                .fill(Color(red: 0.924, green: 0.777, blue: 0.711))
                .frame(width: 300, height: 80)
                .position(x: 195, y:100)
            
            Text ("Daily Journal")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 30))
                .position(x: 195, y:100)
            
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/30.0/*@END_MENU_TOKEN@*/)
                .fill(Color(red: 0.988, green: 0.945, blue: 0.851))
                .frame(width: 300, height: 60)
                .position(x: 195, y:250)
            
            Text ("How are you feeling today?")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 20))
                .position(x: 195, y:250)
            
            HStack {
                Button(action: {}) {
                    Image ("angry")
                        .resizable(resizingMode:.stretch)
                        .frame (width:65,
                                height:65)
                        .background (Circle()
                            .frame(
                                width:60,
                                height:60)).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.992, green: 0.875, blue: 0.589)/*@END_MENU_TOKEN@*/)
                        .position(x:70, y:350)
                }
                
                Button(action: {}) {
                    Image ("sad")
                        .resizable(resizingMode:.stretch)
                        .frame (width:85,
                                height:85)
                        .background (Circle()
                            .frame(
                                width:60,
                                height:60)).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.992, green: 0.875, blue: 0.589)/*@END_MENU_TOKEN@*/)
                        .position(x:50, y:350)
                    
                }
                
                Button(action: {}) {
                    Image ("meh")
                        .resizable(resizingMode:.stretch)
                        .frame (width:75,
                                height:73)
                        .background (Circle()
                            .frame(
                                width:60,
                                height:60)).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.992, green: 0.875, blue: 0.589)/*@END_MENU_TOKEN@*/)
                        .position(x:30, y:350)
                }
                
                Button(action: {}) {
                    Image ("happy")
                        .resizable(resizingMode:.stretch)
                        .frame (width:61,
                                height:65)
                        .background (Circle()
                            .frame(
                                width:60,
                                height:60)).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.992, green: 0.875, blue: 0.589)/*@END_MENU_TOKEN@*/)
                        .position(x:10, y:350)
                }
            }
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/30.0/*@END_MENU_TOKEN@*/)
                .fill(Color(red: 0.988, green: 0.945, blue: 0.851))
                .frame(width: 300, height: 60)
                .position(x: 195, y:450)
            
            Text ("Why do you feel this way?")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 20))
                .position(x: 195, y:450)
            
                TextEditor(text: $text)
                    .frame(width: 330,height:190)
                    .scrollContentBackground(.hidden)
                    .background(Color(red: 0.924, green: 0.777, blue: 0.711))
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .border(Color(red: 0.924, green: 0.777, blue: 0.711), width: 1)
                    .padding(.horizontal)
                
                    .position(x: 195, y:610)
                
            }
        }
        
    }

struct dailyjournal_Previews: PreviewProvider {
    static var previews: some View {
        dailyjournal()
    }
}
