//
//  Landingview.swift
//  TodoListThread3
//
//  Created by junxi Yim on 2024/4/8.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    //The item currently being added
    @State var newItemDescription = ""
    //The search text
    @State var searchText = ""
    //access the model context( required to do additions,deletions,updates, etc.)
    @Environment(\.modelContext) var modelContext
    
    
    @Query var todos: [TodoItem]
    
    // MARK: Computed properties
    var body: some View {
        NavigationView{
            
            VStack {
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                    }
                    .onDelete(perform: removeRows)
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
        modelContext.insert(todo)
    }
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}

//#Preview {
//    LandingView()
//}

