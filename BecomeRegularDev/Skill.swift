//
//  Skills.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import Foundation

struct Skill {
    
    var name: String
    var isCompleted: Bool
    var priority: Priority
 }


enum Priority: String, CaseIterable {
    case low = "Low"
    case medium = "Medium"
    case high = "High"
}
