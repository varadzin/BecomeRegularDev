//
//  Skills.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import Foundation
import RealmSwift

class Skill: Object,Identifiable {
    @Persisted (primaryKey: true) var _id: ObjectId
     @Persisted var name: String = ""
     @Persisted var isCompleted: Bool = false
     @Persisted var priority: Priority = Priority.medium
 }


enum Priority: String, CaseIterable, PersistableEnum {
    case low = "Low"
    case medium = "Medium"
    case high = "High"
}
