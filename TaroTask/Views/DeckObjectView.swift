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
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.color3)
                .opacity(0.5)
                .cornerRadius(30).padding()
            VStack{
                Text(deck1.deckName).font(.title).foregroundColor(.color1)
                    
                    
                    .padding(.vertical, 50).padding(.horizontal, 20)
                Spacer()
            }
        }
    }
}

#Preview {
    DeckObjectView(deck1: DeckObject())
}
