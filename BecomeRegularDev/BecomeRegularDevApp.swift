//
//  BecomeRegularDevApp.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI

@main
struct BecomeRegularDevApp: App {
    var body: some Scene {
        WindowGroup {
            SkillsView(viewModel: SkillsViewModel())
        }
    }
}
