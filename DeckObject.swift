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
    
    init(deckCover: String = "AppIcon", deckName: String = "Testing Deck", cards: Array<CardObject>) {
        self.deckCover = deckCover
        self.deckName = deckName
        self.cards = cards
        
    }
    
}
