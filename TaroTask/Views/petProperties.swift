//
//  petProperties.swift
//  TaroTask
//
//  Created by Maroufath Bello (student LM) on 4/7/25.
//

import Foundation

class petProperties{
    var healthBar: Int
    var name: String
    var image: String
    
   
    
    init(healthBar: Int = 100, name: String = "Missy", image: String = "HappyCat"){
        self.healthBar = healthBar
        self.name = name
        self.image = image
    }
}

