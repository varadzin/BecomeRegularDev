//
//  RealmManager.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 13.08.23.
//

import Foundation
import RealmSwift

class RealmManager: ObservableObject {
    
    // we are creating realm object and we will init it down
    @Published var realm: Realm?
    @Published var user: User?
    @Published var configuration: Realm.Configuration?
    
    let app: App
    
    // we create here only 1 instance of RealmManager - singelton Pattern
    static let shared = RealmManager()
    
    // to be sure, they can not be created another instances of RealmManager, we use private initialisier
    private init() {
        self.app = App(id: "devicesync-walvg")
    }
    
    // we want to be sure, that following function is on main thread
    @MainActor
    func initialize() async throws {
        // authentification
        // we allowed anonym authentification
        
        
       user = try await app.login(credentials: Credentials.anonymous)
        
        // we have to create Realm Object we want to use
        // we are using flexibel sync so we heve to setup subscription
        // we have to create models to save data on the cloud and read data from the cloud
        // so we make Skill model - Skill
        
        // I make initial subscription here to have data prepared as the app starts
        // flexConfigurTION gives us configartion and we save it to Published var
        self.configuration =  user?.flexibleSyncConfiguration(initialSubscriptions: { subs in
          
            // but if you create subscription as one allready exists, it wont work
            // so its good to check existing subscription
            
            if let _ = subs.first(named: "all-skills") {
                return
            } else {
                subs.append(QuerySubscription<Skill>(name: "all-skills"))
            }
        }, rerunOnOpen: true)
        
        // here I init realm object
        realm = try! await Realm(configuration: configuration!, downloadBeforeOpen: .always)
    }}

// so here is the setup for flexible sync, for which we need subscription 
