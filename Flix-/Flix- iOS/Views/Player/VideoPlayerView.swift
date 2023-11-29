//
//  VideoView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var url: URL
    
    var player: AVPlayer {
        AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

#Preview {
    VideoPlayerView(url: exampleVideoURL)
}
