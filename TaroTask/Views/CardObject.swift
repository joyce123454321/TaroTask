//
//  CardObject.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/25/25.
//

import SwiftUI

struct CardObject: View {
    @State var title: String
    @State var task: String
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.gray)
                .opacity(0.5)
            VStack{
                Text(title)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 20)
                Text(task)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                Spacer()
            }
        }
    }
}

#Preview {
    CardObject(title: "Placeholder Title abcedfghijklmnopqrstuvwxyzabcedfghijklmnopqrstuvwxyzabcedfghijklmnopqrstuvwxyzdjdjsjaakajsjsjsjsjsjsjsjsj", task: "Placeholder Task abcedfghijklmnopqrstuvwxyzabcedfghijklmnopqrstuvwxyzabcedfghijklmnopqrstuvwxyzdjdjsjaakajsjsjsjsjsjsjsjsj")
}
