//
//  Row2.swift
//  Calcul WidgetExtension
//
//  Created by florian schweizer on 05.11.21.
//

import SwiftUI

struct Row2: View {
    var body: some View {
        GeometryReader { proxy in
            let size = (proxy.size.width / 5) - 8
            
            HStack {
                Spacer()
                Link(destination: URL(string: "asd")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Text("7"))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "asd")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Text("8"))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "asd")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Text("9"))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "asd")!) {
                    Circle()
                        .fill(.orange)
                        .overlay(Image(systemName: "multiply").foregroundColor(.white))
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
