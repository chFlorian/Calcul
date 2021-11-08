//
//  CalculWidgetView.swift
//  Calcul WidgetExtension
//
//  Created by florian schweizer on 05.11.21.
//

import WidgetKit
import SwiftUI

struct CalculWidgetView : View {
    var entry: SimpleEntry

    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack {
                Spacer()
                Text(entry.currentValue, format: .number)
                    .font(.title2)
                    .foregroundColor(.white)
            }
            
            Row1()
            Row2()
            Row3()
            Row4()
            Row5()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

struct Calcul_Widget_Previews: PreviewProvider {
    static var previews: some View {
        CalculWidgetView(entry: .preview)
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
