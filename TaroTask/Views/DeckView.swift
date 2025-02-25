//
//  DeckView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI
var cardList = [CardObject(title: "", task: ""), CardObject(title: "", task: ""), CardObject(title: "", task: "")]

struct DeckView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
//                ForEach(cardList) {
//                    
//                }
            }
        }
    }
}

#Preview {
    DeckView()
}
