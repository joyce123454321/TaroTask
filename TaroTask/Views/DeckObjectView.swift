//
//  DeckObjectView.swift
//  TaroTask
//
//  Created by Grace Shang (student LM) on 3/6/25.
//

import SwiftUI

struct DeckObjectView: View {
    @State var deck1: DeckObject
    var body: some View {
        ZStack{
            Image(deck1.deckCover)
                .resizable()
                .foregroundColor(.color3)
                .opacity(0.5)
                .cornerRadius(60).padding()
            VStack{
                Text(deck1.deckName).font(Constants.textFont).foregroundColor(.color1)
                    .padding(.vertical, 50).padding(.horizontal, 20)
                Spacer()
            }
        }
    }
}

#Preview {
    DeckObjectView(deck1: DeckObject())
}
