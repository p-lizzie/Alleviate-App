//
//  tree.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct tree: View {
    var mood: Mood
    var body: some View {
        ZStack {
        
        Rectangle().fill(Color(UIColor.systemBackground)).cornerRadius(10).shadow(color: .gray, radius: 5, x: 1, y: 1)
              HStack {
                  VStack {
                  Text(mood.monthString)
                  Text("\(mood.dayAsInt)")
                  
                  }
                  Text(mood.comment ?? "No comment made.").font(.title).bold()
                  
                  Spacer()
                  
                  moodImage()
                 
                  }.foregroundColor(mood.emotion.moodColor).padding()
              }
          }
          
          func moodImage() -> some View {
              var imageName = "none"
              
              switch mood.emotion.state {
              case .happy:
                  imageName = "happy"
              case .meh:
                  imageName = "meh"
              case .sad:
                  imageName = "sad"
              case .angry:
                  imageName = "angry"
              }
              return Image(imageName).resizable().frame(width: 20, height: 20)
          }
    }


struct tree_Previews: PreviewProvider {
    static var previews: some View {
        tree(mood: Mood(emotion: Emotion(state: .happy, color: .happyColor), comment: "Test", date: Date()))
    }
}
