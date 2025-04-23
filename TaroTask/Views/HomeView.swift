//
//  HomeView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25. 
//
import SwiftUI
@MainActor

struct HomeView: View {  
    
@State var deck1: DeckObject = DeckObject(deckCover: "AppIcon", deckName: "Morning Deck", cards: [CardObject(title: "Wake up", task: "Get out of bed" ), CardObject(title: "Brush teeth", task: "Brush my teeth")])
    
@State var deck2: DeckObject = DeckObject(deckCover: "AppIcon", deckName: "Afternoon Deck", cards: [CardObject(title: "Make Lunch up", task: "Get out of bed" ), CardObject(title: "Brush teeth", task: "Brush my teeth")])

@State var decksArray: Array<DeckObject> = []

    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationView{
            TabView{
                ForEach(decksArray) { list in 
                    NavigationLink(destination: DeckImageView(deckChosen: list)){DeckObjectView(deck1: list)}
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

#Preview {
    HomeView(decksArray: [DeckObject(deckCover: "backgroundImage", deckName: "Morning Deck", cards: [CardObject(title: "Wake up", task: "Get out of bed" ), CardObject(title: "Brush teeth", task: "Brush my teeth")]), DeckObject(deckCover: "backgroundImage", deckName: "Afternoon Deck", cards: [CardObject(title: "Make Lunch up", task: "Clean house" ), CardObject(title: "Brush teeth", task: "Clean all rooms & bathroom")])])
}
