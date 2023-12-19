//
//  TrailerPlayerView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/19/23.
//

import SwiftUI
import VideoPlayer

struct TrailerPlayerView: View {
    
    var videoURL: URL?
    @Binding var playVideo: Bool
    
    var body: some View {
        if videoURL != nil {
            VideoPlayer(url: videoURL!, play: $playVideo)
        } else {
            Text("Could not load video")
        }
    }
}

#Preview {
    TrailerPlayerView(videoURL: exampleVideoURL, playVideo: .constant(false))
}
