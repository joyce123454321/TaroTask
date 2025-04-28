//
//  CardObject.swift
//  TaroTask
//
//  Created by Grace Shang (student LM) on 2/27/25.
//

import Foundation

struct CardObject: Identifiable {
    let id = UUID()
    
    var title: String
    var task: String
    
    init(title: String = "New Task Name", task: String = "New Task Description") {
        self.title = title
        self.task = task
    }
    
}
