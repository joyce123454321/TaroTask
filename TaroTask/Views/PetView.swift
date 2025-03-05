//
//  PetView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//
import SwiftUI
struct PetView: View {
    var body: some View {
        let name: String = "Missy"
        var food = 1
        var water = 1
        var playtime = 2
        var completeTask = 5
        var healthBar = 100
        ZStack{
           
            //background color for the phone screen
            Color.color4
                .edgesIgnoringSafeArea(.all)
            
            
            VStack{
                
                HStack{
                    Image("rightarrow")
                        .padding()
                    ZStack{
                        
                        Color.color2 //name tag
                            .frame(width: 250, height: 80)
                            .cornerRadius(9.0)
                        
                        Text(name)//name
                            .bold()
                            .font(.custom(name , size: 55))
                            .font(Constants.TitleFont)
                            
                    }//end of inner ZStack
                    
                    
                }//end of first HStack Bracket
                Spacer()
                
                Image("petCat")
                    .resizable()
                    .shadow(radius: 10)
                
                HStack {
                    //Water Button
                    Button {
                        //need to code <<<<----
                    } label: {
                        Text("WATER (costs 1 task)")
                            .padding(20)
                            .font(Constants.textFont)
                            .background(Color.color3)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                            
                        
                    }//button:label bracket
                    
                    //Food Button
                    Button {
                        //need to code <<<<----
                    } label: {
                        Text("FOOD (costs 1 task)")
                            .padding(20)
                            .font(Constants.textFont)
                            .background(Color.color3)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                        
                    }//button:label bracket
                    
                    //PLay Button
                    Button {
                        //need to code  <<<<----
                    } label: {
                        Text("PLAY (costs 2 task)")
                            .padding(20)
                            .font(Constants.textFont)
                            .background(Color.color3)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                           
                       
                    }//button:label bracket
                    
                    
                    
                }// Second Hstack Bracket
                .padding(.bottom)
                
                
                
                
            }//Vstack Bracket
            
        }
        
        
        
        
    }
}
#Preview {
    PetView()
}


