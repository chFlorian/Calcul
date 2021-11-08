//
//  Row1.swift
//  Calcul WidgetExtension
//
//  Created by florian schweizer on 05.11.21.
//

import SwiftUI

struct Row1: View {
    var body: some View {
        GeometryReader { proxy in
            let size = (proxy.size.width / 5) - 8
            
            HStack {
                Spacer()
                Link(destination: URL(string: "calcul.app/c")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Text("C"))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "calcul.app/plusminus")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Image(systemName: "plus.forwardslash.minus"))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "calcul.app/percent")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Text("%"))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "calcul.app/divide")!) {
                    Circle()
                        .fill(.orange)
                        .overlay(Image(systemName: "divide").foregroundColor(.white))
                }
                .frame(
                    width: size,
                    height: size
                )
                Spacer()
            }
        }
    }
}
