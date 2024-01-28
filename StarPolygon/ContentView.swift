//
//  ContentView.swift
//  StarPolygon
//
//  Created by Don Jose on 1/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Star()
            .stroke(Color.blue, lineWidth: 3)
            .frame(width: 150)
    }
}

#Preview {
    ContentView()
}

struct Star: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            for index in 0 ..< 5 {
                let angle = (270 + Double(index) * 144) * (.pi/180)
                let point = CGPoint(x: rect.midX + cos(angle) * rect.width,
                                    y: rect.midY + sin(angle) * rect.width)
                
                index == 0 ? path.move(to: point) : path.addLine(to: point)
            }
            path.closeSubpath()
        }
    }
}
