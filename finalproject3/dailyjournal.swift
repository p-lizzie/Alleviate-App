//
//  dailyjournal.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI



struct dailyjournal: View {
    @ObservedObject var moodModelController: MoodModelController
    @Environment(\.presentationMode) var presentationMode
    
    @State var text: String? = nil
    @State private var emotionState: EmotionState = .happy
    @State private var moodColor: MoodColor = .happyColor
    @State private var happyIsSelected = false
    @State private var mehIsSelected = false
    @State private var sadIsSelected = false
    @State private var angryisSelected = false
    @State private var counterLabel = "101/101"
   
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
                Button(action: {
                    self.emotionState = .angry
                    self.moodColor = .angryColor
                    self.angryisSelected = true
                    self.happyIsSelected = false
                    self.sadIsSelected = false
                    self.mehIsSelected = false
                }) {
                    Image ("angry")
                        .resizable().frame(width: 65, height: 65).foregroundColor(.gray).background(angryisSelected ? Color.yellow : Color.clear).clipShape(Circle())
                        .position(x:70, y:350)
                }
                
                Button(action: {
                    self.emotionState = .sad
                    self.moodColor = .sadColor
                    self.sadIsSelected = true
                    self.happyIsSelected = false
                    self.mehIsSelected = false
                    self.angryisSelected = false
                }) {
                    Image ("sad")
                        .resizable().frame(width: 85, height: 85).foregroundColor(.red).background(sadIsSelected ? Color.yellow : Color.clear).clipShape(Circle())
                        .position(x:50, y:350)

                }
                
                Button(action: {
                    self.emotionState = .meh
                    self.moodColor = .mehColor
                    self.mehIsSelected = true
                    self.happyIsSelected = false
                    self.sadIsSelected = false
                    self.angryisSelected = false
                }) {
                    Image ("meh")
                        .resizable().frame(width: 75, height: 73).foregroundColor(.gray).background(mehIsSelected ? Color.yellow : Color.clear).clipShape(Circle())
                        .position(x:30, y:350)
                    
                }
                
                Button(action: {self.emotionState = .happy
                    self.moodColor = .happyColor
                    self.happyIsSelected = true
                    self.mehIsSelected = false
                    self.sadIsSelected = false
                    self.angryisSelected = false
                }) {
                        Image ("happy")
                        .resizable().frame(width: 61, height: 65).foregroundColor(.green).background(happyIsSelected ? Color.yellow : Color.clear).clipShape(Circle())
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
            
            VStack {
                MultiLineTextField(txt: $text, counterLabel: $counterLabel)
                    .frame(width: 330,height:190)
                    .scrollContentBackground(.hidden)
                    .background(Color(red: 0.924, green: 0.777, blue: 0.711))
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .border(Color(red: 0.924, green: 0.777, blue: 0.711), width: 1)
                    .padding(.horizontal)
                
                    .position(x: 195, y:610)
                
                        Button(action: {
                self.moodModelController.createMood(emotion: Emotion(state: self.emotionState, color: self.moodColor), comment: self.text, date: Date())
                
                self.presentationMode.wrappedValue.dismiss()
                        }) {ZStack {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/30.0/*@END_MENU_TOKEN@*/)
                                .fill(Color(red: 0.988, green: 0.945, blue: 0.851))
                                .frame(width: 280.0, height: 45.0)
                            Text("Add Mood Entry").font(.custom(
                                "AmericanTypewriter",
                                fixedSize: 23)).foregroundColor(Color("morningBlue"))
                            
                        }
                
                    
                
                
                
            }
            }

               
        }
        
    }
    
    struct dailyjournal_Previews: PreviewProvider {
        static var previews: some View {
            dailyjournal(moodModelController: MoodModelController(), text: "text")
           
        }
    }
}
