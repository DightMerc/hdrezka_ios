//
//  Item.swift
//  HDRezka
//
//  Created by Dezir Ibragimov on 10/10/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
