//
//  SwiftUIView.swift
//  TodoListThread3
//
//  Created by junxi Yim on 2024/4/9.
//
import SwiftData
import SwiftUI

struct ItemView: View {
    @Bindable var currentItem: TodoItem
    var body: some View {
        Label(
            title: {  
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            },
            icon: { Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
            )
    }
}
#Preview {
    
    let container = TodoItem.preview
    
    return List {
        ItemView(currentItem: TodoItem.someItem)
        ItemView(currentItem: TodoItem.anotherItem)
    }
    .modelContainer(container)
    
}
