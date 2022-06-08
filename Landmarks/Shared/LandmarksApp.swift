//
//  LandmarksApp.swift
//  Shared
//
//  Created by Renato  Rocha on 06/06/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
    }
}
