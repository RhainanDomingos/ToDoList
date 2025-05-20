//
//  TaskItemExtension.swift
//  ToDoList
//
//  Created by Rhainan Domingos on 19/05/25.
//

import SwiftUI

extension TaskItem {
    func isCompleted() -> Bool {
        return completedDate != nil
    }
}
