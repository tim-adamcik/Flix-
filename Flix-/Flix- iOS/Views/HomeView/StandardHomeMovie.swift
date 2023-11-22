//
//  StandardHomeMovie.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    
    var movie: Movie
    
    var body: some View {
        VStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
            Text(movie.name)
                .font(.subheadline.bold())
        }
    }
}

#Preview {
    StandardHomeMovie(movie: exampleMovie1)
        .frame(width: 200, height: 300)
}
