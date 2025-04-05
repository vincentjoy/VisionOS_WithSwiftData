//
//  VisionOS_WithSwiftDataApp.swift
//  VisionOS_WithSwiftData
//
//  Created by Vincent Joy on 05/04/25.
//

import SwiftUI
import SwiftData

@main
struct VisionOS_WithSwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [WorkoutItem.self])
        }
    }
}
