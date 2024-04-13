//
//  TodoListThread3App.swift
//  TodoListThread3
//
//  Created by junxi Yim on 2024/4/8.
//

import SwiftData
import SwiftUI

@main
struct TodoListThread3App: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
