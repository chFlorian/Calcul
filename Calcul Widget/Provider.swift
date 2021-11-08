//
//  Provider.swift
//  Calcul WidgetExtension
//
//  Created by florian schweizer on 05.11.21.
//

import WidgetKit

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        .preview
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        guard let value = UserDefaults(suiteName: "group.calcul")?.double(forKey: "leftValue") else {
            completion(.preview)
            return
        }
        
        let entry = SimpleEntry(date: .now, currentValue: value)
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleEntry>) -> ()) {
        let entry: SimpleEntry
        guard let value = UserDefaults(suiteName: "group.calcul")?.double(forKey: "leftValue") else {
            entry = .preview
            return
        }
        
        entry = SimpleEntry(date: .now, currentValue: value)
        
        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)
    }
}
