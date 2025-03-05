//
//  TaskGeneratedView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI


struct TaskGeneratedView: View {
    @State var deck: Array<CardObject>
    var body: some View {
        CardObjectView(card: deck[Int.random(in: 0...($deck.count - 1))])
            
    }
}

#Preview {
    TaskGeneratedView(deck: [CardObject(title: "drink water", task: "drink 40 gallons of water"), CardObject(title: "go outside", task: "go outside for 20 minutes"), CardObject(title: "walk dog", task: "walk dog around the neighborhood")])
}
