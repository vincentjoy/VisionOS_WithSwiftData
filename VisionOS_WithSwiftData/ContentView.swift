//
//  ContentView.swift
//  VisionOS_WithSwiftData
//
//  Created by Vincent Joy on 05/04/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State var isAddNewWorkoutViewPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("Workout App")
                .font(.extraLargeTitle)
            
            List {
                Text("Workout 1")
                Text("Workout 2")
                Text("Workout 3")
                Text("Workout 4")
            }
            
            Button("Add") {
                isAddNewWorkoutViewPresented = true
            }
        }
        .sheet(isPresented: $isAddNewWorkoutViewPresented, content: {
            AddWorkoutView()
        })
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
