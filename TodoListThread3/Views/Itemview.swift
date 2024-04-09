//
//  SwiftUIView.swift
//  TodoListThread3
//
//  Created by junxi Yim on 2024/4/9.
//

import SwiftUI

struct ItemView: View {
    let currentItem: TodoItem
    var body: some View {
        Label(
            title: {  Text(currentItem.title)
            },
            icon: { Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")}
        )
    }
}
#Preview {
    ItemView(currentItem: firstItem)
}
