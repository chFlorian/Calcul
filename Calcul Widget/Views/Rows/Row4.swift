//
//  Row4.swift
//  Calcul WidgetExtension
//
//  Created by florian schweizer on 05.11.21.
//

import SwiftUI

struct Row4: View {
    var body: some View {
        GeometryReader { proxy in
            let size = (proxy.size.width / 5) - 8
            
            HStack {
                Spacer()
                Link(destination: URL(string: "calcul.app/1")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Text("1"))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "calcul.app/2")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Text("2"))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "calcul.app/3")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Text("3"))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "calcul.app/plus")!) {
                    Circle()
                        .fill(.orange)
                        .overlay(Image(systemName: "plus").foregroundColor(.white))
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
