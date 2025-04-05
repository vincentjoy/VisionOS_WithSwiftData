//
//  ContentView.swift
//  VisionOS_WithSwiftData
//
//  Created by Vincent Joy on 05/04/25.
//

import SwiftUI
import RealityKit
import RealityKitContent
import SwiftData

struct ContentView: View {
    
    @State var isAddNewWorkoutViewPresented: Bool = false
    @Query var workoutItems: [WorkoutItem]
    
    var body: some View {
        VStack {
            Text("Workout App")
                .font(.extraLargeTitle)
            
            List(workoutItems) { workoutItem in
                Text(workoutItem.name)
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
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: WorkoutItem.self, configurations: config)
    ContentView()
        .modelContainer(container)
}
