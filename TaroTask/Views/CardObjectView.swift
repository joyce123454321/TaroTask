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
            VStack{
                Text(card.title)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 20)
                Text(card.task)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                Spacer()
            }
        }
    }
}

#Preview {
    CardObjectView(card: CardObject())
}
