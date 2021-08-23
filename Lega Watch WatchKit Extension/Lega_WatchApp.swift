//
//  Lega_WatchApp.swift
//  Lega Watch WatchKit Extension
//
//  Created by Yani . on 20/08/21.
//

import SwiftUI
import Firebase

@main


struct Lega_WatchApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
