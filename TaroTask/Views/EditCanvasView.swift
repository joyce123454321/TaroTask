//
//  ClipboardView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct EditCanvasView: View {
    
    @State var deck1: DeckObject = DeckObject(deckCover: "backgroundImage", deckName: "Morning Deck", cards: [CardObject(title: "Wake up", task: "Get out of bed" ), CardObject(title: "Brush teeth", task: "Brush my teeth")])
        
    @State var deck2: DeckObject = DeckObject(deckCover: "backgroundImage", deckName: "Afternoon Deck", cards: [CardObject(title: "Make Lunch up", task: "Get out of bed" ), CardObject(title: "Brush teeth", task: "Brush my teeth")])

@State var decksArray: Array<DeckObject> = []

    
@Environment(\.dismiss) private var dismiss

    var body: some View {

        var decksArray = [deck1, deck2]
        
        
        NavigationView{
            TabView{
                ForEach(decksArray) { list in
                    NavigationLink(destination: DeckEditView(deckChosen: list.cards, cardChosen: CardObject())){DeckObjectView(deck: list)}
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }.frame(maxWidth: .infinity, maxHeight: .infinity)

    }
}

#Preview {
    EditCanvasView(decksArray: [DeckObject(deckCover: "backgroundImage", deckName: "Morning Deck", cards: [CardObject(title: "Wake up", task: "Get out of bed" ), CardObject(title: "Brush teeth", task: "Brush my teeth")]), DeckObject(deckCover: "backgroundImage", deckName: "Afternoon Deck", cards: [CardObject(title: "Make Lunch up", task: "Clean house" ), CardObject(title: "Brush teeth", task: "Clean all rooms & bathroom")])])
}
