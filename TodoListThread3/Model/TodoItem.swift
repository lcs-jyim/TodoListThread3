//
//  TodoItem.swift
//  TodoListThread3
//
//  Created by junxi Yim on 2024/4/9.
//

import SwiftData

@Model
class TodoItem: Identifiable {
    var title :String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}



let firstItem = TodoItem(title: "study for Chemistry quiz", done: false)
let secondItem = TodoItem(title: "Finish CS assignment", done: true)
let thirdItem = TodoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem
]
