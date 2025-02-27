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
        CardObjectView(card: deck[Int.random(in: 0..<($deck.count - 1))])
            
    }
}

#Preview {
    TaskGeneratedView(deck: [CardObject(title: "", task: ""), CardObject(title: "", task: "")])
}
