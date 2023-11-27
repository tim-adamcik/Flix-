//
//  TopMoviePreview.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/27/23.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isCategoryLast(category: category) {
                                Image(systemName: "circle.fill")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                HStack {
                    Text("My List")
                    Text("Play Button")
                    Text("Info")
                }
            }
        }
        .foregroundStyle(.white)
    }
    
    private func isCategoryLast(category: String) -> Bool {
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 == catCount {
                return true
            }
        }
        return false
    }
}

#Preview {
    TopMoviePreview(movie: exampleMovie1)
}
