//
//  dailyjournal.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct dailyjournal: View {
    var body: some View {
        ZStack {
            (Color(red: 0.554, green: 0.631, blue: 0.562))
                .edgesIgnoringSafeArea(.all)
            
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/30.0/*@END_MENU_TOKEN@*/)
                .fill(Color(red: 0.924, green: 0.777, blue: 0.711))
                .frame(width: 300, height: 80)
                .position(x: 195, y:100)
            
            Text ("Daily Journal")
                .font(.title)
                .position(x: 195, y:100)
            
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/30.0/*@END_MENU_TOKEN@*/)
                .fill(Color(red: 0.988, green: 0.945, blue: 0.851))
                .frame(width: 300, height: 60)
                .position(x: 195, y:250)
            
            Text ("How are you feeling today?")
                .font(.title2)
                .position(x: 195, y:250)
            
            HStack {
                
                Button("Button") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                
            }
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/30.0/*@END_MENU_TOKEN@*/)
                .fill(Color(red: 0.988, green: 0.945, blue: 0.851))
                .frame(width: 300, height: 60)
                .position(x: 195, y:550)
            
            Text ("Why do you feel this way?")
                .font(.title2)
                .position(x: 195, y:550)
        }
    }
}

struct dailyjournal_Previews: PreviewProvider {
    static var previews: some View {
        dailyjournal()
    }
}
