//
//  RealmManager.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 13.08.23.
//

import Foundation
import RealmSwift

class RealmManager: ObservableObject {
    @Published var user: User?
    let app: App
    static let shared = RealmManager()
    
    private init() {
        self.app = App(id: "application-1-aznmo")
    }
    
    @MainActor
    func initialize() async throws {
        // authentification
        
        user = try await app.login(credentials: Credentials.anonymous)
        user?.flexibleSyncConfiguration(initialSubscriptions: { subs in
            
        }, rerunOnOpen: true)
    }
}
