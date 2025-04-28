//
//  EditCard.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 3/24/25.
//

import SwiftUI
    struct EditCard: View {
        
        @State var cardChosen: CardObject
        
        @State var indexCard: Int
        @State var deckChosen: Array<CardObject>
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
                    TextEditor(text: $cardChosen.title)
                        .background(Color.primary.colorInvert())
                        .cornerRadius(10)
                        .frame(height: 150)
                        .padding(15)
                    Text("New Task:")
                        .foregroundColor(.white)
                    TextEditor(text: $cardChosen.task)
                        .background(Color.primary.colorInvert())
                        .cornerRadius(10)
                        .frame(height: 200)
                        .padding(15)
                    Button(action: {
                        showingAlert = true
                    }, label: {
                        ZStack{
                            Rectangle()
                                .cornerRadius(15)
                                .frame(width: 200, height: 50)
                                .foregroundColor(.white)
                                .opacity(0.5)
                            Text("Done Editing!")
                                .font(Constants.TitleFont)
                        }
                    })
                    .alert(isPresented: $showingAlert) {
                        Alert(
                            title: Text("Are you sure you want to change this?"),
                            message: Text("There is no undo"),
                            primaryButton: .destructive(Text("Change")) {
                                deckChosen.remove(at: indexCard)
                                deckChosen.insert(CardObject(title: cardChosen.title, task: cardChosen.task), at: indexCard)
                            },
                            secondaryButton: .cancel()
                        )
                    }
                    NavigationLink(destination: DeckImageView(deckChosen: DeckObject(cards: deckChosen))){
                                            Label(
                                                title: { Text("Go Back!").foregroundColor(.white) },
                                                icon: { Image("rightarrow") }
                                            )
                                        }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                        .padding()
                        .padding()
                    
                }
            }
        }
    }

#Preview {
    EditCard(cardChosen: CardObject(), indexCard: 0, deckChosen: DeckObject().cards)
}
