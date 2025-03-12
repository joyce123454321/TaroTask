//
//  DeskImageView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct DeskImageView: View {
    @State var deck1: DeckObject
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("rightarrow").resizable().frame(width: 30, height: 30)
            })
            Spacer()
        }
        NavigationView{
            TabView{
                ForEach(deck1.cards) { list in
                    CardObjectView(card: list)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .navigationTitle(deck1.deckName)
        }
    }
}

#Preview {
    DeskImageView(deck1: DeckObject())
}
