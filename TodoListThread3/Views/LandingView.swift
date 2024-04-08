//
//  Landingview.swift
//  TodoListThread3
//
//  Created by junxi Yim on 2024/4/8.
//

import SwiftUI

struct LandingView: View {
    
    // MARK:Stored properties
    
    // MARK: Computed properties
    var body: some View {
        NavigationView{
            
            VStack {
                List {
                    Text("Study for Chemistry Test")
                    Text("Finished Computer Science assignment")
                    Text("Go for a run around")
                }
            }
            .navigationTitle("To do")
        }
        
    }
}

#Preview {
    LandingView()
}
