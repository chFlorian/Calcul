//
//  Row5.swift
//  Calcul WidgetExtension
//
//  Created by florian schweizer on 05.11.21.
//

import SwiftUI

struct Row5: View {
    var body: some View {
        GeometryReader { proxy in
            let size = (proxy.size.width / 5) - 8
            
            HStack {
                Spacer()
                Link(destination: URL(string: "calcul.app/0")!) {
                    Capsule()
                        .fill(.gray)
                        .overlay(Text("0"))
                }
                .frame(
                    width: size * 2 + 8,
                    height: size
                )
                
                Link(destination: URL(string: "calcul.app/dot")!) {
                    Circle()
                        .fill(.gray)
                        .overlay(Text("."))
                }
                .frame(
                    width: size,
                    height: size
                )
                
                Link(destination: URL(string: "calcul.app/equal")!) {
                    Circle()
                        .fill(.orange)
                        .overlay(Image(systemName: "equal").foregroundColor(.white))
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

struct Row5_Previews: PreviewProvider {
    static var previews: some View {
        Row5()
    }
}
