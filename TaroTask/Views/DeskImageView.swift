//
//  DeskImageView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct DeskImageView: View {
    @State var cardList: Array<CardObject>
    
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
                ForEach(cardList) { list in
                    CardObjectView(card: list)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .navigationTitle("Deck Title")
        }
    }
}

#Preview {
    DeskImageView(cardList: [CardObject(title: "drink water", task: "drink 40 gallons of water"), CardObject(title: "go outside", task: "go outside for 20 minutes"), CardObject(title: "walk dog", task: "walk dog around the neighborhood")])
}
