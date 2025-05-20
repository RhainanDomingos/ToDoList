//
//  CheckBoxView.swift
//  ToDoList
//
//  Created by Rhainan Domingos on 19/05/25.
//

import SwiftUI

struct CheckBoxView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @EnvironmentObject var dateHolder: DateHolder
    @ObservedObject var passedTaskItem: TaskItem
    
    var body: some View {
        Image(systemName: passedTaskItem.isCompleted() ? "checkmark.circle.fill" : "circle")
            .foregroundStyle(passedTaskItem.isCompleted() ? .green : .secondary)
            .onTapGesture {
                withAnimation {
                    if !passedTaskItem.isCompleted() {
                        passedTaskItem.completedDate = Date()
                        dateHolder.saveContext(viewContext)
                    }
                }
            }
    }
}

#Preview {
    CheckBoxView(passedTaskItem: TaskItem())
}
