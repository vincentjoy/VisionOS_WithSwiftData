//
//  HandTrackingApp.swift
//  VisionOS_WithSwiftData
//
//  Created by Vincent Joy on 15/04/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct HandTrackingApp: View {
    
    var box: ModelEntity {
        let mesh = MeshResource.generateBox(size: 0.2)
        let material = SimpleMaterial(color: .blue, isMetallic: false)
        let entity = ModelEntity(mesh: mesh, materials: [material])
        return entity
    }
    
    var body: some View {
        RealityView { content in
            // Anchor entity for hands
            let anchor = AnchorEntity(.hand(.left, location: .palm))
            
            // Add sphere as a child of the anchor
            anchor.addChild(box)
            
            content.add(anchor)
        }
        .upperLimbVisibility(.hidden) // This will hide my palm and only shows the square box
    }
}

#Preview {
    HandTrackingApp()
}
