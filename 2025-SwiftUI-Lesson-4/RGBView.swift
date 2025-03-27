//
//  RGBView.swift
//  2025-SwiftUI-Lesson-4
//
//  Created by Stanley Sim on 27/3/25.
//

import SwiftUI

struct RGBView: View {
    @State private var redValue: Double = 157
    @State private var greenValue: Double = 157
    @State private var blueValue: Double = 157
    @State private var isEditing: Bool = false
    
    var body: some View {
        Circle()
            .foregroundColor(Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255))
            .padding()
        
        HStack {
            Text("Red \(Int(redValue), specifier: "%3d")")
                .frame(width: 100, alignment: .leading)
            Slider(value: $redValue,
                   in: 0...255,
                   step: 1,
                   onEditingChanged: {
                editing in isEditing = editing
            }
            )
        }
        .padding()
        
        HStack {
            Text("Green \(Int(greenValue), specifier: "%3d")")
                .frame(width: 100, alignment: .leading)
            Slider(value: $greenValue,
                   in: 0...255,
                   step: 1,
                   onEditingChanged: {
                editing in isEditing = editing
            }
            )
        }
        .padding()
        
        HStack {
            Text("Blue \(Int(blueValue), specifier: "%3d")")
                .frame(width: 100, alignment: .leading)
            Slider(value: $blueValue,
                   in: 0...255,
                   step: 1,
                   onEditingChanged: {
                editing in isEditing = editing
            }
            )
        }
        .padding()
    }
}
#Preview {
    RGBView()
}
