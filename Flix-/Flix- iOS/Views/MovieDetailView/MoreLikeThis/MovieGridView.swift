//
//  MovieGridView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import SwiftUI

struct MovieGridView: View {
    
    var movies: [Movie]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(movies) { movie in
                StandardHomeMovie(movie: movie)
            }
        }
    }
}

#Preview {
    MovieGridView(movies: exampleMovies)
}
