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

    
    @State private var selectedTabMAIN = 0
    
    var body: some View {
        
        var decksArray = [deck1, deck2]

        TabView(selection: $selectedTabMAIN){
            PetView().tabItem{
                Image(systemName: "cat")

            }.tag(0)
//            
            HomeView(decksArray: [decksArray[0], decksArray[1]]).tabItem{
                Image(systemName: "rectangle")
            }.tag(1)
            
            EditCanvasView().tabItem{
                Image(systemName: "pencil")
            }.tag(2)
            }
        }
    }


#Preview {
    ContentView()
}
