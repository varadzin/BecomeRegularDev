//
//  Skills.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import Foundation
import RealmSwift

struct Skill: Identifiable {
     var id: UUID = UUID()
     var name: String = ""
     var isCompleted: Bool = false
     var priority: Priority = Priority.medium
 }


enum Priority: String, CaseIterable, PersistableEnum {
    case low = "Low"
    case medium = "Medium"
    case high = "High"
}
