//
//  VideoView.swift
//  2025-SwiftUI-Lesson-4
//
//  Created by Stanley Sim on 23/4/25.
//

import SwiftUI
import AVKit

struct VideoView: View {
    @State var player: AVPlayer = AVPlayer(url: Bundle.main.url(forResource: "video", withExtension: "mp4")!)
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

#Preview {
    VideoView()
}
