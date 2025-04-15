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
    
    @State var immersionStyle: ImmersionStyle = .mixed
    
    var body: some Scene {
        ImmersiveSpace {
            HandTrackingApp()
        }
        .immersionStyle(selection: $immersionStyle, in: .mixed, .full, .progressive)
    }
    
    /*
    var body: some Scene {
        WindowGroup {
            HandTrackingApp()
        }
    }
    */
}
