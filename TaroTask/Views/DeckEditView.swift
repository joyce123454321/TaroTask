//
//  DeckView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct DeckEditView: View {
    
    @State var deck: Array<CardObject>
    @State var numAt: Int = 1
    @State var showingAlert = false
    
    var body: some View {
        ZStack {
            HStack {
                Button(action: {
                    if numAt > 1 {
                        numAt -= 1
                    }
                }, label: {
                    Image("minus")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.horizontal, 5)
                })
                NavigationView{
                    TabView{
                        ForEach(deck) { list in
                            CardObjectView(card: list)
                            .foregroundColor(.black)
                        }
                    }
                    .tabViewStyle(.page)
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    .navigationTitle("Deck Title")
                }.padding(.vertical, 25)
                Button(action: {
                    if numAt < deck.count {
                        numAt += 1
                    }
                }, label: {
                    Image("plus")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.horizontal, 5)
                })
            }
            VStack {
                Text("Use + or - to adjust the # of the card placement you're editing!")
                    .padding(.vertical, 1)
                    .padding(.horizontal, 15)
                    .font(Constants.TitleFont)
                Spacer()
                Button(action: {
                    showingAlert = true
                }, label: {
                    Text("Current card placement: \(numAt)")
                        .padding(.vertical, 1)
                        .font(Constants.TitleFont)
                })
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("Are you sure you want to delete this?"),
                        message: Text("There is no undo"),
                        primaryButton: .destructive(Text("Delete")) {
                            if numAt >= 1 && numAt <= deck.count {
                                deck.remove(at: numAt - 1)
                            }
                        },
                        secondaryButton: .cancel()
                    )
                }
            }
        }
    }
}

#Preview {
    DeckEditView(deck: DeckObject().cards)
}
