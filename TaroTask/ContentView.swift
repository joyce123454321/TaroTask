//
//  ContentView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct ContentView: View {
    @State var deck1: DeckObject = DeckObject(deckCover: "backgroundImage", deckName: "Morning Deck", cards: [CardObject(title: "Wake up", task: "Get out of bed" ), CardObject(title: "Brush teeth", task: "Brush my teeth")])
        
    @State var deck2: DeckObject = DeckObject(deckCover: "backgroundImage", deckName: "Afternoon Deck", cards: [CardObject(title: "Make Lunch up", task: "Get out of bed" ), CardObject(title: "Brush teeth", task: "Brush my teeth")])
    
    @State var decksArray: Array<DeckObject> = []

    
    @State private var selectedTab = 0
    var body: some View {
        
        var decksArray = [deck1, deck2]

        TabView(selection: $selectedTab){
            PetView().tabItem{
                Image("CheekyCat").resizable().frame(width: 512, height: 512).aspectRatio(contentMode: .fill).scaledToFill()

            }.tag(0)
            
            HomeView(decksArray: [decksArray[0], decksArray[1]]).tabItem{
                Image("houseICON")
            }.tag(1)
            
            ClipboardView().tabItem{
                Image("checklistICON")
            }.tag(2)
        }        
    }
}

#Preview {
    ContentView()
}
