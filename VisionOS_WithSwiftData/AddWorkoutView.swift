//
//  AddWorkoutView.swift
//  VisionOS_WithSwiftData
//
//  Created by Vincent Joy on 05/04/25.
//

import SwiftUI

struct AddWorkoutView: View {
    
    @State var inputText: String = ""
    @Environment(\.dismiss) var dismissCurrentView
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Add New Workout")
                .font(.largeTitle)
            
            TextField("", text: $inputText)
                .textFieldStyle(.roundedBorder)
            
            Button("", systemImage: "checkmark") {
                dismissCurrentView()
            }
            .labelStyle(.iconOnly)
        }
        .padding(16)
    }
}

#Preview(windowStyle: .automatic) {
    AddWorkoutView()
}
