//
//  petProperties.swift
//  TaroTask
//
//  Created by Maroufath Bello (student LM) on 4/7/25.
//

import Foundation
var completedTask: Int = 5
class petProperties{
    var healthBar = 100
    var decrease = 10
    var name: String
    var image: String
    
    // below 5 task healthbar decreases 5 or above
    
    var drinkWater: Int {
        if (completedTask > 0){
            completedTask -= 1
        }
        return  completedTask
    }
 //------------------------------------------------------------------------------------------------------
    var eatFood: Int {
    
        if (completedTask > 0 ){
            completedTask -= 1
        }
        return completedTask
    }
    
    init(healthBar: Int = 80, name: String = "Tiki", image: String = "HappyCat"){
        self.healthBar = healthBar
        self.name = name
        self.image = image
        
       
        
        
        
    }
} 
