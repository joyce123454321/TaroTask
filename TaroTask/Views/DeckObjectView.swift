//
//  DeckObjectView.swift
//  TaroTask
//
//  Created by Grace Shang (student LM) on 3/6/25.
//

import SwiftUI

struct DeckObjectView: View {
    @State var deck: DeckObject
    var body: some View {
        ZStack{
            Image(deck.deckCover)
                .resizable()
                .foregroundColor(.color3)
                .opacity(0.5)
                .cornerRadius(60).padding()
            VStack{
                Text(deck.deckName).font(Constants.textFont).foregroundColor(.color1)
                    .padding(.vertical, 50).padding(.horizontal, 20)
                Spacer()
            }
        }
    }
}

#Preview {
    DeckObjectView(deck: DeckObject())
}
