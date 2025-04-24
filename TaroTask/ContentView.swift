//
//  ContentView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    var body: some View {

        TabView(selection: $selectedTab){
            PetView().tabItem{
                Image("petCat")
            }.tag(0)
            
      //      HomeView(decksArray: [DeckObject(), DeckObject(), DeckObject()]).tabItem{
                Image("houseICON")
            }.tag(1)
            
//            ClipboardView().tabItem{
//                Image("checklistICON")
//            }.tag(2)
        }        
    }
//}

#Preview {
    ContentView()
}
