//
//  DeckObject.swift
//  TaroTask
//
//  Created by Grace Shang (student LM) on 3/5/25.
//

import Foundation

struct DeckObject: Identifiable {
    let id = UUID()
    
    var deckCover: String
    var deckName: String
    var cards: Array<CardObject> 
    
    init(deckCover: String = "AppIcon", deckName: String = "Testing Deck", cards: Array<CardObject> = [CardObject(title: "drink water", task: "drink 40 gallons of water"), CardObject(title: "go outside", task: "go outside for 20 minutes"), CardObject(title: "walk dog", task: "walk dog around the neighborhood")]) {
        self.deckCover = deckCover
        self.deckName = deckName
        self.cards = cards
    }
}
