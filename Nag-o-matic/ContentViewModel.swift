//
//  ContentViewModel.swift
//  Nag-o-matic
//
//  Created by Kate Roberts on 03/02/2022.
//

import Foundation
import SwiftUI

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        
        var alexTasks = [
            Task(task: "Wake Up", icon: Image("wakeUp")),
            Task(task: "Breakfast", icon: Image("wakeUp")),
            Task(task: "Toothbrush", icon: Image("wakeUp")),
            Task(task: "Chores", icon: Image("wakeUp")),
            Task(task: "Leave", icon: Image("wakeUp")),
        ]

        
    }
}

