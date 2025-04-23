//
//  DeckView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

struct DeckEditView: View {
    @State var deckChosen: DeckObject
    var body: some View {
        DeckImageView(deckChosen: deckChosen)
    }
}

#Preview {
    DeckEditView(deckChosen: DeckObject())
}
