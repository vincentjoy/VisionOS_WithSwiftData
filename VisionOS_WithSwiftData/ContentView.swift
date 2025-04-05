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
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Text("Workout App")
                .font(.extraLargeTitle)
            
            List {
                ForEach(workoutItems) { workoutItem in
                    ListRow(workoutItem: workoutItem)
                }
                .onDelete { indexSet in
                    for index in indexSet {
                        let itemToDelete = workoutItems[index]
                        modelContext.delete(itemToDelete)
                    }
                }
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

struct ListRow: View {
    
    @Bindable var workoutItem: WorkoutItem
    
    var body: some View {
        HStack {
            Text(workoutItem.name)
                .font(.title)
            
            Spacer()
            
            Toggle("", systemImage: "checkmark", isOn: $workoutItem.status)
                .toggleStyle(.button)
        }
    }
}

#Preview(windowStyle: .automatic) {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: WorkoutItem.self, configurations: config)
    ContentView()
        .modelContainer(container)
}
