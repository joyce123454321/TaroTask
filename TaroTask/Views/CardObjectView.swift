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
                .cornerRadius(30)
                .padding()
            VStack{
                Text(card.title)
                    .font(.title)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)
                Text(card.task)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                Spacer()
            }
        }
    }
}

#Preview {
    CardObjectView(card: CardObject())
}
