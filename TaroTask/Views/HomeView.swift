//
//  HomeView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//
import SwiftUI
@MainActor

struct HomeView: View {
    @State var decksArray: Array<DeckObject> = []
    @Environment(\.dismiss) private var dismiss
    var body: some View {

//        NavigationView{
//            TabView{
//                ForEach(decksArray) { list in
//                    DeckObjectView(deck1: list)
//                }
//            }
//            .tabViewStyle(.page)
//            .indexViewStyle(.page(backgroundDisplayMode: .always))
//        }
        
        NavigationView{
            TabView{
                ForEach(decksArray) { list in
                    NavigationLink(destination: DeskImageView(deck1: list)){DeckObjectView(deck1: list)}
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }

//            NavigationView {
//                NavigationLink(destination: PetView()) { Image("petCat")}
//            }.navigationBarBackButtonHidden()
//                .toolbar{
//                    ToolbarItem(placement: .topBarLeading){
//                        Button {
//                            dismiss()
//                        } label: {
//                            Image("rightarrow")
//                        }
//
//                    }
//                }
    }
}

#Preview {
    HomeView(decksArray: [DeckObject(), DeckObject(), DeckObject()])
}
