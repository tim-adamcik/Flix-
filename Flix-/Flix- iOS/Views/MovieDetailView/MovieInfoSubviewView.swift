//
//  MovieInfoSubviewView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/28/23.
//

import SwiftUI

struct MovieInfoSubviewView: View {
    
    var movie: Movie
    @State var seasonSelection: Int = 1
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundStyle(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
            HDView()
        }
        .foregroundStyle(.gray)
    }
}

#Preview {
    ZStack {
        Color.black
        MovieInfoSubviewView(movie: exampleMovie7)
    }
}

