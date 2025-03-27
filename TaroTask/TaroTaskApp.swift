//
//  TaroTaskApp.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//

import SwiftUI

@main

struct TaroTaskApp: App {
    @State var decksArray: Array<DeckObject> = []

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
