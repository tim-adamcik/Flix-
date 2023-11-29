//
//  EpisodesView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import SwiftUI

struct EpisodesView: View {
    
    var episodes: [Episode]
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        VStack(spacing: 14) {
            // Season Picker
            HStack {
                Button {
                    showSeasonPicker = true
                } label: {
                    Group {
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                    .foregroundStyle(.gray)
                }
                Spacer()
            }
            
            
            
            // Episodes List
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    HStack(spacing: 20) {
                        VideoPreviewImage(imageURL: episode.thumbnailUrl!, videoURL: episode.videoURL)
                            .frame(width: 120, height: 70)
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text("\(String(episode.episodeNumber)). \(episode.name)")
                                .foregroundStyle(.white)
                            Text(episode.formattedEpisodeDuration)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        Image(systemName: "arrow.down.to.line.alt")
                            .foregroundStyle(.white)
                    }
                    .padding(10)
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 20)
                
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
        EpisodesView(episodes: exampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(2))
    }
}
