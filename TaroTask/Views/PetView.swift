//
//  PetView.swift
//  TaroTask
//
//  Created by Maroufath Bello (student LM) on 2/21/25.
//
import SwiftUI

struct PetView: View {
    @Environment(\.dismiss) private var dismiss
    @State var completedTask: Int = 5
    @State var pet: petProperties = petProperties()
    @State private var currentImage: String? = nil
    @State private var showFeedback = false
    @State private var feedbackText = ""
    @State private var feedbackColor = Color.green
    
    
    var body: some View {
        let name: String = "TIKKI"
        var food = 1
        var water = 1
        var playtime = 2
       
        ZStack{
           
            //background color for the phone screen
            LinearGradient(gradient: Gradient(colors: [Color.color4, .color2]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            //Show image with animation
            if let imageName = currentImage {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .transition(.scale.combined(with: .opacity))
                    .animation(.easeInOut(duration: 0.5), value: currentImage)
            }
            
            if showFeedback {
                Text(feedbackText)
                    .font(.title2)
                    .bold()
                    .foregroundColor(feedbackColor)
                    .offset(x: -100, y: -150)
                    .transition(.move(edge: .top).combined(with: .opacity))
                    .animation(.easeOut(duration: 0.6), value: showFeedback)
            }
            
            VStack{
                
                HStack{                        
                    ZStack{
                        
                        Color.color2 //name tag
                            .frame(width: 200, height: 70)
                            .cornerRadius(9.0)
                            
                        Text(name)//name of Cat
                            .bold()
                            .font(.custom(name , size: 55))
                            .font(Constants.TitleFont)
                            
                            
                  
                            
                            
                    }//end of inner ZStack
                    
                    Text("Completed Tasks: \(completedTask)")
                        .font(.title)
                    
                }//end of first HStack Bracket
                
              
                VStack{
                        
                  
                    if(pet.healthBar == 100 || pet.healthBar >= 91){
                        
                        Image("HappyCat")//Cat view
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 320, height: 400)
                        
                        Image("healBar: full")
                            .frame(width: 400, height: 70)
                    }//end of first if statement
                   
                    }
                    if(pet.healthBar <= 90 && pet.healthBar >= 80){
                        
                        Image("CheekyCat")//Cat view
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 320, height: 400)
                        
                        
                        
                        Image("healBar: semiFull")
                            .frame(width: 400, height: 70)
                    }//end of second if statement
                   
                    if(pet.healthBar <= 79 && pet.healthBar >= 50){
                        
                        Image("WorriedCat")//Cat view
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 320, height: 400)
                        
                        Image("healBar: halfFull")
                            .frame(width: 400, height: 70)
                    }//end of third if statement
                    
                    
                    if(pet.healthBar <= 49 && pet.healthBar >= 20){
                        
                        Image("VomitCat")//Cat view
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 320, height: 400)
                        
                        
                        Image("healBar: dying")
                            .frame(width: 400, height: 70)
                    }//end of fourth if statement
                    if(pet.healthBar < 19 && pet.healthBar >= 0){
                                        
                                        Image("DyingCat")//Cat view
                                            .resizable()
                                            .shadow(radius: 10)
                                            .frame(width: 320, height: 400)
                                        
                                        
                                        Image("healBar: getUp!")
                                            .frame(width: 400, height: 70)
                                    }//end of last if statement
                           
                      
                    
                }//end of first inner VStack
                   
            //Show image with animation
            if let imageName = currentImage {
                Image(imageName)
                    .resizable()
                    .frame(width: 400, height: 400)
                    .transition(.scale.combined(with: .opacity))
                    .animation(.easeInOut(duration: 0.5), value: currentImage)
            }
           
            
            VStack {
                Spacer()
                
                HStack {
                        
                        
                        
                        //Water Button
                        Button {
                            //need to code <<<<----
                            if completedTask > 0 {
                                    completedTask -= 1
                                    pet.healthBar += 5
                                feedbackText = "+5 Health!"
                                        feedbackColor = .green
                                } else {
                                    // Not enough tasks = lose health!
                                    pet.healthBar -= 10
                                            feedbackText = "-10 Health!"
                                            feedbackColor = .red
                                }
                                
                            showImageTemporarily(named: "drink")
                            if completedTask == 0 {
                                Text("You're out of tasks! Do more to earn care time 💡")
                                    .font(.caption)
                                    .foregroundColor(.red)
                                    .transition(.opacity)
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
                          
                            if completedTask > 0 {
                                    completedTask -= 1
                                    pet.healthBar += 5
                                feedbackText = "+5 Health!"
                                        feedbackColor = .green
                                } else {
                                    // Not enough tasks = lose health!
                                    pet.healthBar -= 10
                                    
                                            feedbackText = "-10 Health!"
                                            feedbackColor = .red
                                }
                            
                            showImageTemporarily(named: "food")
                            if completedTask == 0 {
                                Text("You're out of tasks! Do more to earn care time 💡")
                                    .font(.caption)
                                    .foregroundColor(.red)
                                    .transition(.opacity)
                            }
                           
                            
                            
                        } label: {
                            Text("FOOD (costs 1 task)")
                                .padding(20)
                                .font(Constants.textFont)
                                .background(Color.color3)
                                .cornerRadius(20)
                                .shadow(radius: 5)
                            
                        }//button:label bracket
                        
                        //Play Button
                        Button {
                            //need to code  <<<<----
                            if completedTask >= 2 {
                                completedTask -= 2
                                pet.healthBar += 10
                                feedbackText = "+10 Health!"
                                        feedbackColor = .green
                            } else {
                                pet.healthBar -= 15
                                        feedbackText = "-15 Health!"
                                        feedbackColor = .red
                            }
                            showImageTemporarily(named: "play")

                            if completedTask == 0 {
                                Text("You're out of tasks! Do more to earn care time 💡")
                                    .font(.caption)
                                    .foregroundColor(.red)
                                    .transition(.opacity)
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
                .padding(.bottom, -35)
            }
                //GET A GRIP--HURRY UP
           
                
                
            }//Vstack Bracket
            
        }
    func showImageTemporarily(named name: String){
        print("trying to show image: \(name)")
        withAnimation {
            currentImage = name
            showFeedback = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
               withAnimation {
                   showFeedback = false
               }
           }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            withAnimation {
                currentImage = nil
            }
        }
    }
}


#Preview {
    PetView()
}


