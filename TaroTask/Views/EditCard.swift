//
//  EditCard.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 3/24/25.
//

import SwiftUI
    struct EditCard: View {
        @State var cardtitle: String
        @State var cardtask: String
        @State var indexCard: Int
        @State var deck: Array<CardObject>
        @State var showingAlert = false

        var body: some View {
            ZStack {
                Rectangle()
                    .foregroundColor(.gray)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("New Title:")
                        .foregroundColor(.white)
                    TextEditor(text: $cardtitle)
                        .background(Color.primary.colorInvert())
                        .cornerRadius(10)
                        .frame(height: 150)
                        .padding(15)
                    Text("New Task:")
                        .foregroundColor(.white)
                    TextEditor(text: $cardtask)
                        .background(Color.primary.colorInvert())
                        .cornerRadius(10)
                        .frame(height: 400)
                        .padding(15)
                    Button(action: {
                        showingAlert = true
                    }, label: {
                        ZStack{
                            Rectangle()
                                .cornerRadius(15)
                                .frame(width: 200)
                                .foregroundColor(.white)
                                .opacity(0.5)
                            Text("Done Editing!")
                                .padding(.vertical, 15)
                                .font(Constants.TitleFont)
                        }
                    })
                    .alert(isPresented:$showingAlert) {
                        Alert(
                            title: Text("Are you sure you want to change this?"),
                            message: Text("There is no undo"),
                            primaryButton: .destructive(Text("Change")) {
                                deck.remove(at: indexCard)
                                deck.insert(CardObject(title: cardtitle, task: cardtask), at: indexCard)
                            },
                            secondaryButton: .cancel()
                        )
                    }
                }
            }
        }
    }

#Preview {
    EditCard(cardtitle: CardObject().title, cardtask: CardObject().task, indexCard: 0, deck: DeckObject().cards)
}
