//
//  CurrentEpisodeInformationView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import SwiftUI

struct CurrentEpisodeInformationView: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .bold()
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}

#Preview {
    CurrentEpisodeInformationView(movie: exampleMovie6)
}
