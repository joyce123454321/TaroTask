//
//  PetView.swift
//  TaroTask
//
//  Created by Joyce Chang (student LM) on 2/21/25.
//
import SwiftUI

struct PetView: View {
    @Environment(\.dismiss) private var dismiss
    @State var completedTask: Int = 5
    @State var pet: petProperties = petProperties()
    var body: some View {
        let name: String = "Missy"
        var food = 1
        var water = 1
        var playtime = 2
       
        var healthBar = 45
     
        
        
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
                            .frame(width: 200, height: 70)
                            .cornerRadius(9.0)
                        
                        Text(name)//name of Cat
                            .bold()
                            .font(.custom(name , size: 55))
                            .font(Constants.TitleFont)
                        
                       
                            
                            
                    }//end of inner ZStack
                   
                    
                }//end of first HStack Bracket
                Spacer()
                
                VStack{
                        
                  
                    if(healthBar == 100 || healthBar >= 91){
                        
                        Image("HappyCat")//Cat view
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 320, height: 400)
                        
                        Image("healBar: full")
                            .frame(width: 400, height: 70)
                    }//end of first if statement
                    if(healthBar <= 90 && healthBar >= 80){
                        
                        Image("CheekyCat")//Cat view
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 320, height: 400)
                        
                        
                        
                        Image("healBar: semiFull")
                            .frame(width: 400, height: 70)
                    }//end of second if statement
                   
                    if(healthBar <= 79 && healthBar >= 35){
                        
                        Image("WorriedCat")//Cat view
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 320, height: 400)
                        
                        Image("healBar: halfFull")
                            .frame(width: 400, height: 70)
                    }//end of third if statement
                    
                    
                    if(healthBar <= 34 && healthBar >= 20){
                        
                        Image("VomitCat")//Cat view
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 320, height: 400)
                        
                        
                        Image("healBar: dying")
                            .frame(width: 400, height: 70)
                    }//end of fourth if statement
                                    if(healthBar < 19 && healthBar >= 0){
                                        
                                        Image("DyingCat")//Cat view
                                            .resizable()
                                            .shadow(radius: 10)
                                            .frame(width: 320, height: 400)
                                        
                                        
                                        Image("healBar: getUp!")
                                            .frame(width: 400, height: 70)
                                    }//end of last if statement
                           
                      
                    
                }//end of first inner VStack
                    
                HStack {
                    //Water Button
                    Button {
                        //need to code <<<<----
                        if(water < completedTask){
                            _ = 15
                            print("\(name) is not dying of thristy anymore")
                            
                        }
                        
                      
                
                        
                        
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
                        if(food < completedTask){
                            _ = 30
                            print("\(name) is not dying of hunger anymore")
                            
                        }
                        
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
                        
                        if(water < completedTask){
                            _ = 15
                            print("\(name) is not dying of boredum anymore")
                            
                        }
                        
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
            
        }.navigationBarBackButtonHidden()
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                }
            }
    }
}

#Preview {
    PetView()
}


