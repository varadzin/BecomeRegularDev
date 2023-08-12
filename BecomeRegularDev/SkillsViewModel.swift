//
//  SkillsViewModel.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI

class SkillsViewModel: ObservableObject {
    
    let skill = [Skill(name: "Debugging - Instruments, View Hierarchy Debugger, Advanced Breakpoints, Debug Navigator", isCompleted: false, priority: .medium),
                 Skill(name: "Aufsetzen eines neuen Xcode Projektes mit Schemes, Build Configurations  und Fastlane Configurations", isCompleted: false, priority: .medium),
                 Skill(name: "UI per Storyboard, Code und/oder SwiftUI", isCompleted: false, priority: .medium),
                 Skill(name: "Dependency Injection", isCompleted: false, priority: .medium),
                 Skill(name: "Verständnis der Standard iOS Core-Frameworks (CoreData, AVFoundation, CoreLocation, UIKit, Foundation, CoreFoundation)", isCompleted: false, priority: .low),
                 Skill(name: "Networking (URLSession, Concurrency mit GCD und Operations)", isCompleted: false, priority: .medium),
                 Skill(name: "Datenbanken (SQLite, Realm, CoreData)", isCompleted: true, priority: .medium),
                 Skill(name: "Unit-Tests mit XCTest", isCompleted: false, priority: .high),
                 Skill(name: "SQLCipher, Encryption (CryptoKit), Keychain", isCompleted: false, priority: .low),
                 Skill(name: "Design Patterns (MVC, MVVM, MVI, VIPER, Delegate, Builder, Factory,  Singleton, Repository, DI)", isCompleted: false, priority: .medium),
                 Skill(name: "App-Architekturen (Clean Architecture, DDD)", isCompleted: false, priority: .low),
                 Skill(name: "Messaging, Analytics, Crashanalyse, Remotelogging…", isCompleted: false, priority: .low)]
    
    
}
