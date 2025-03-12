//
//  HomeView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct HomeView: View {
    @State var decksArray: Array<DeckObject> = []
    
    var body: some View {

        NavigationView{
            TabView{
                ForEach(decksArray) { list in
                    DeckObjectView(deck1: list)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        
        HStack {
            Button(action: {
                
            }, label: {
                Image("petCat")
            })
            Button(action: {
                
            }, label: {
                Image("houseICON")
        })
            Button(action: {
                
            }, label: {
                Image("checklistICON")
        })
        }.padding()
    }
}

#Preview {
    HomeView(decksArray: [DeckObject(), DeckObject(), DeckObject()])
}
