//
//  tree2.swift
//  finalproject3
//
//  Created by Paige Leung on 6/29/23.
//

import SwiftUI

struct tree2: View {
    @ObservedObject var moodModelController = MoodModelController()
    @State var show = false
    @State var txt = ""
    @State var docID = ""
    @State var remove = false
    var body: some View {
        NavigationView {
             ZStack(alignment: .bottomTrailing) {
                    VStack(spacing: 0){
                        
        //                HStack(alignment: .center) {
        //
        //
        //                    Text("My Mood").font(.title).foregroundColor(Color("morningBlue"))
        //
        //                    Spacer()
        //                    NavigationLink(destination: CalendarView(start: Date(), monthsToShow: 1, daysSelectable: true, moodController: moodModelController)) {
        //                        Text("Calendar").foregroundColor(Color("babyPink")
        //                    }
        //
        //
        //                }.padding()
        //                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
        //                    .background(Color("papayaWhip"))
                        List {
                            ForEach(self.moodModelController.moods, id: \.id) { mood in
                                
                                tree(mood: mood)
                             
                            }.onDelete { (index) in
                                
                                self.moodModelController.deleteMood(at: index)
                            }
                        }.onAppear {
                            //Removes extra cells that are not being used.
                            UITableView.appearance().tableFooterView = UIView()
                            //MARK: Disable selection.
                        
                           
                            
                            
                        }
                        Spacer()
                        
                    }//
                    Spacer()
                    
                    
                }
       
        .sheet(isPresented: self.$show) {
        
            dailyjournal(moodModelController: self.moodModelController)
            
            
        }
            
        }
            
    }
    }
    


class Host : UIHostingController<ContentView>{
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        
        return .lightContent
    }
}


struct tree2_Previews: PreviewProvider {
    static var previews: some View {
        tree2()
    }
}
