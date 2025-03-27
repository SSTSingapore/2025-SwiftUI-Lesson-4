//
//  ContentView.swift
//  2025-SwiftUI-Lesson-4
//
//  Created by Stanley Sim on 27/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tab: Int = 0
    
    var body: some View {
        TabView (selection: $tab) {
            Tab("RGB", systemImage: "pencil", value: 0) {
                RGBView()
            }
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
