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
    
    // MARK: Computed properties
    var body: some View {
        NavigationView{
            
            VStack {
                List {
                    ItemView(currentItem: firstItem)
                    ItemView(currentItem: secondItem)
                    ItemView(currentItem: thirdItem)
                    
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a To-do item", text: $newItemDescription)
                    Button("ADD") {
                        // Add the new todo item
                        
                    }
                    .font(.caption)
                }
                .padding(20)
            }
            .navigationTitle("To do")
        }
        
    }
}

#Preview {
    LandingView()
}

