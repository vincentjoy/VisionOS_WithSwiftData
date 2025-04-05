//
//  WorkoutItem.swift
//  VisionOS_WithSwiftData
//
//  Created by Vincent Joy on 05/04/25.
//

import Foundation
import SwiftData

@Model
class WorkoutItem {
    var name: String
    var status: Bool
    
    init(name: String, status: Bool) {
        self.name = name
        self.status = status
    }
}
