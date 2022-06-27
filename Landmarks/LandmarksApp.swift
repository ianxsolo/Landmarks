//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Julian Kamil on 5/25/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
        #if !os(watchOS)
        .commands { LandmarkCommands() }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
