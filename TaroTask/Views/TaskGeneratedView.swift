//
//  TaskGeneratedView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI


struct TaskGeneratedView: View {
    @State var deckChosen: Array<CardObject>
    @Environment(\.dismiss) private var dismiss

    @Environment(\.openWindow) private var randCard

    var body: some View {
        NavigationView{
            CardObjectView(card: deckChosen[Int.random(in: 0...$deckChosen.count - 1)])
        }.navigationBarBackButtonHidden()
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button {
                        dismiss()
                    } label: {
                        Image("rightarrow")
                    }
                }
            }
            
    }
}

#Preview {
    TaskGeneratedView(deckChosen: DeckObject().cards)
}
