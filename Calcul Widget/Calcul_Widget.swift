//
//  Calcul_Widget.swift
//  Calcul Widget
//
//  Created by florian schweizer on 05.11.21.
//

import WidgetKit
import SwiftUI

@main
struct Calcul_Widget: Widget {
    let kind: String = "Calcul_Widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            CalculWidgetView(entry: entry)
        }
        .supportedFamilies([.systemLarge])
        .configurationDisplayName("Calcul")
        .description("A calculator on your homescreen.")
    }
}
