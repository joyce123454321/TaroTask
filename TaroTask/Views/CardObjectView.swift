//
//  CardObject.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/25/25.
//

import SwiftUI

struct CardObjectView: View {
    @State var card: CardObject
    
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.gray)
                .opacity(0.5)
                .cornerRadius(30).padding()
            VStack{
                Text(card.title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(.vertical, 50)
                    .padding(.horizontal, 20)
                Text(card.task)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 20)
                Spacer()
            }
        }
    }
}

#Preview {
    CardObjectView(card: CardObject())
}
