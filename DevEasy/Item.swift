//
//  Item.swift
//  DevEasy
//
//  Created by hev1n on 2024/1/3.
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
