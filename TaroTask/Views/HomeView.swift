//
//  HomeView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct HomeView: View {
    @Binding var deck1: DeckObject

    var body: some View {
        Text("Hi World!")
    }
}

#Preview {
    HomeView(deck1: DeckObject(deckCover: "AppIcon", cards: [CardObject(title: "drink water", task: "drink 40 gallons of water"), CardObject(title: "go outside", task: "go outside for 20 minutes"), CardObject(title: "walk dog", task: "walk dog around the neighborhood")]))
}
