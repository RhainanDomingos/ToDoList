//
//  TaskCell.swift
//  ToDoList
//
//  Created by Rhainan Domingos on 19/05/25.
//

import SwiftUI

struct TaskCell: View {
    
    @EnvironmentObject var dateHolder: DateHolder
    @ObservedObject var passedTaskItem: TaskItem
    
    var body: some View {
        CheckBoxView(passedTaskItem: passedTaskItem)
            .environmentObject(dateHolder)
        
        Text(passedTaskItem.name ?? "")
            .padding(.horizontal)
    }
}

#Preview {
    TaskCell(passedTaskItem: TaskItem())
}
