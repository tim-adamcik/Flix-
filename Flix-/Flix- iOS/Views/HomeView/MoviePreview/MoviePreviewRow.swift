//
//  MoviePreviewCellRow.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/18/23.
//

import SwiftUI

struct MoviePreviewRow: View {
    
    var movies: [Movie]
    
    var body: some View {
        VStack {
            HStack {
                Text("Previews")
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.leading, 6)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(0..<movies.count, id: \.self) { movieIndex in
                        MoviePreviewCell(movie: movies[movieIndex])
                            .frame(width: 120, height: 120)
                            .padding(.trailing, 14)
                            .padding(.leading, 6)
                    }
                    
                }
            }
        }
        .frame(height: 185)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        MoviePreviewRow(movies: exampleMovies)
    }
}
