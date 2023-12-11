//
//  SearchResultsView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/11/23.
//

import SwiftUI

struct SearchResultsView: View {
    
    var movies: [Movie]
    @Binding var movieDetailToShow: Movie?
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(movies, id: \.id) { movie in
                StandardHomeMovie(movie: movie)
                    .frame(width: 106, height: 160)
                    .onTapGesture {
                        movieDetailToShow = movie
                    }
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
        SearchResultsView(movies: exampleMovies, movieDetailToShow: .constant(nil))
    }
}
