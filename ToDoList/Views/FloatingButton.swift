//
//  FloatingButton.swift
//  ToDoList
//
//  Created by Rhainan Domingos on 19/05/25.
//

import SwiftUI

struct FloatingButton: View {
    var body: some View {
        Spacer()
        HStack {
            NavigationLink(destination: TaskEditView(passedTaskItem: TaskItem(), initialDate: Date())) {
                Text("+ New Task")
                    .font(.headline)
            }
            .padding(15)
            .foregroundStyle(.white)
            .background(Color.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .padding(30)
            .shadow(color: .black.opacity(0.3), radius: 3, x: 3, y: 3)
        }
    }
}

#Preview {
    FloatingButton()
}
