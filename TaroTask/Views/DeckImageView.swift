//
//  DeckImageView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct DeckImageView: View {
    @State var deckChosen: DeckObject
    @State var decksArray: Array<DeckObject> = []
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.openWindow) private var randCard
    
    @State var selectedTabEDITRAND = 0


    var body: some View {

        NavigationView{
            TabView{
                ForEach(deckChosen.cards) { list in
                    CardObjectView(card: list)
                }
                
                Text("pick a random one... --->")
                
                NavigationLink(destination: TaskGeneratedView(deckChosen: deckChosen.cards)){
                    Image("checklistICON")}
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .navigationTitle(deckChosen.deckName)
            .font(Constants.TitleFont)
            
            
            
            
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
    DeckImageView(deckChosen: DeckObject(cards: [CardObject(title: "drink water", task: "drink 40 gallons of water"), CardObject(title: "go outside", task: "go outside for 20 minutes"), CardObject(title: "walk dog", task: "walk dog around the neighborhood")]), selectedTabEDITRAND: 0)
}
