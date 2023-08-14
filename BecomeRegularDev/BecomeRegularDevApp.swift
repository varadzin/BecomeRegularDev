//
//  BecomeRegularDevApp.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI

@main
struct BecomeRegularDevApp: App {
    @StateObject private var realmManager = RealmManager.shared
    
    
    var body: some Scene {
        WindowGroup {
            VStack {
                if let configuration = realmManager.configuration, let realm = realmManager.realm {
                    SkillsView(viewModel: SkillsViewModel())
                        .environment(\.realmConfiguration, configuration)
                        .environment(\.realm, realm)
                }
            }.task {
                
                // call, initialise realmManager
                try? await realmManager.initialize()
            }
            
          
        }
    }
}
