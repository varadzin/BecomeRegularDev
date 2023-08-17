//
//  SkillsViewModel.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI
import RealmSwift

class SkillsViewModel: ObservableObject {
    
     func priorityBackground(_ priority: Priority) -> Color {
        switch priority {
        case .low:
            return .gray
        case .medium:
            return .orange
        case .high:
            return .red
        }
    }
}
