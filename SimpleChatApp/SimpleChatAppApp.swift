//
//  SimpleChatAppApp.swift
//  SimpleChatApp
//
//  Created by Maliks.
//

import SwiftUI
import Firebase

@main
struct SimpleChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
