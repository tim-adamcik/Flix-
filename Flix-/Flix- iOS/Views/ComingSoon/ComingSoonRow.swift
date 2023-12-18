//
//  ComingSoonRow.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/14/23.
//

import SwiftUI
import KingfisherSwiftUI
import AVKit

struct ComingSoonRow: View {
    
    var movie: Movie
    var player: AVPlayer {
        return AVPlayer(url: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!)
    }
    
    @Binding var movieDetailToShow: Movie?
    
    private var screen: CGRect {
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
                return UIScreen.main.bounds
            }
        return windowScene.screen.bounds
        }
    
    
    var body: some View {
        VStack {
//            VideoPlayer(player: player)
            Color.blue
            .frame(height: 200)
            VStack {
                HStack {
                    KFImage(movie.thumbnailURL)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: screen.size.width / 3, height: 75)
                        .clipped()
                    Spacer()
                    Button {
                        // remind me
                    } label: {
                        VStack(spacing: 6) {
                            Image(systemName: "bell")
                                .font(.title3)
                            Text("Remind Me")
                        }
                    }
                    .padding(.horizontal)
                  
                    Button {
                        // remind me
                        movieDetailToShow = movie
                    } label: {
                        VStack(spacing: 6) {
                            Image(systemName: "info.circle")
                                .font(.title3)
                            Text("info")
                        }
                    }
                    .padding(.trailing, 24)
                }
                .font(.caption)
                
                VStack(alignment: .leading) {
                    Text(movie.name)
                        .font(.title2)
                        .bold()
                    Text(movie.episodeDescriptionDisplay)
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                }
            }
            .foregroundStyle(.white)
            .padding(.horizontal)
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        ComingSoonRow(movie: exampleMovie5, movieDetailToShow: .constant(nil))
    }
    .foregroundStyle(.white)
}
