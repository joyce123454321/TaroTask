//
//  DeskImageView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct DeskImageView: View {
    @State var deck1: DeckObject
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationView{
            TabView{
                ForEach(deck1.cards) { list in
                    CardObjectView(card: list)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .navigationTitle(deck1.deckName).font(Constants.TitleFont)
        }
        .navigationBarBackButtonHidden()
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
    DeskImageView(deck1: DeckObject())
}
