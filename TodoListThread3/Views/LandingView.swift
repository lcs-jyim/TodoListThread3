//
//  Landingview.swift
//  TodoListThread3
//
//  Created by junxi Yim on 2024/4/8.
//

import SwiftUI

struct LandingView: View {
    
    // MARK:Stored properties
    
    //The item currently being added
    @State var newItemDescription = ""
    //The search text
    @State var searchText = ""
    
    
    @State var todos:[TodoItem] = exampleItems
    
    // MARK: Computed properties
    var body: some View {
        NavigationView{
            
            VStack {
                List($todos) { $todo in
                    
                    ItemView(currentItem: $todo)
                        .swipeActions {
                            Button("delete", role:.destructive, action: {delete(todo)
                            }
                        )
                    }
                       
                    
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a To-do item", text: $newItemDescription)
                    Button("ADD") {
                        // Add the new todo item
                        creatToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
            }
            .navigationTitle("To do")
        }
        
    }
    
    //MARK: Fuctions
    func creatToDo(withTitle title:String) {
        let todo = TodoItem(title: title, done: false)
        todos.append(todo)
    }
    func delete(_ todo: TodoItem){
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
    }
}

//#Preview {
//    LandingView()
//}

