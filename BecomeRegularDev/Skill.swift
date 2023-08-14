//
//  Skills.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import Foundation
import RealmSwift


// I am saving this model to Realm Database
// and it will be also downloaded from Cloud to lokal Database
class Skill: Object, Identifiable {
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


//we have to tell realm that we have new schema, new model, new object
// realm, used this model to create schema for the database

 
