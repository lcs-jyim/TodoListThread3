//
//  TodoItem.swift
//  TodoListThread3
//
//  Created by junxi Yim on 2024/4/9.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title :String
    var done: Bool
}

let firstItem = TodoItem(title: "study for Chemistry quiz", done: false)
let secondItem = TodoItem(title: "Finish CS assignment", done: true)
let thirdItem = TodoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem
]
