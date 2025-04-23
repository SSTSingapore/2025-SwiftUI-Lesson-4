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
            Tab("Web", systemImage: "safari", value: 1) {
                WebView(url: URL(string: "https://en.wikipedia.org/wiki/Color_wheel#:~:text=A%20color%20wheel%20or%20color,secondary%20colors%2C%20tertiary%20colors%20etc.")!)
            }
            Tab("Video", systemImage: "video", value: 2){
                VideoView()
            }
        }
    }
}
#Preview {
    ContentView()
}
