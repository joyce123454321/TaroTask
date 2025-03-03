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
    
    init(title: String = "task name hahahaha", task: String = "mi mi mi mi mo mo mo mo ma ma ma ma ma") {
        self.title = title
        self.task = task
    }
    
}
