//
//  SimpleEntry.swift
//  Calcul WidgetExtension
//
//  Created by florian schweizer on 05.11.21.
//

import WidgetKit

struct SimpleEntry: TimelineEntry {
    let date: Date
    let currentValue: Double
    
    static let preview = SimpleEntry(date: .now, currentValue: 13.6)
}
