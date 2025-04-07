//
//  DeckView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct DeckEditView: View {
    @State var deck: DeckObject
    var body: some View {
        DeckImageView(deck1: deck)
    }
}

#Preview {
    DeckEditView(deck: DeckObject())
}
