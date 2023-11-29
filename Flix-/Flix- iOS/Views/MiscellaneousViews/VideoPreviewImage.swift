//
//  VideoPreviewImage.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImage: View {
    
    var imageURL: URL
    var videoURL: URL
    
    @State private var showingVideoPlayer: Bool = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Button {
                showingVideoPlayer = true
            } label: {
                Image(systemName: "play.circle")
                    .foregroundStyle(.white)
                    .font(.system(size: 40))
            }
            
        }
        .sheet(isPresented: $showingVideoPlayer, content: {
            VideoPlayerView(url: videoURL)
        })
    }
}

#Preview {
    VideoPreviewImage(imageURL: exampleImageURL, videoURL: exampleVideoURL)
}
