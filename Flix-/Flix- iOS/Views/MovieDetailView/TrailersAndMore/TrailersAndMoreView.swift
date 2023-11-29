//
//  TrailersAndMoreView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import SwiftUI

struct TrailersAndMoreView: View {
    
    var trailers: [Trailer]
    private var screen: CGRect {
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
                return UIScreen.main.bounds
            }
        return windowScene.screen.bounds
        }
    
    var body: some View {
            VStack {
                ForEach(trailers) { trailer in
                    
                    VStack(alignment: .leading) {
                        VideoPreviewImage(imageURL: trailer.thumbnailImageURL, videoURL: trailer.videoURL)
                            .frame(maxWidth: screen.width)
                        
                            Text(trailer.name)
                                .font(.headline)
                                .bold()
                    }
                }
                .padding(.bottom, 10)
            }
            .padding()
    }
}

#Preview {
    ZStack {
        Color.black
        TrailersAndMoreView(trailers: exampleTrailers)
    }
    .foregroundStyle(.white)
}
