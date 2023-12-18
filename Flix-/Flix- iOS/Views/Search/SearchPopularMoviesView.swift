//
//  SearchPopularMoviesView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/11/23.
//

import SwiftUI
import KingfisherSwiftUI

struct SearchPopularMoviesView: View {
    
    var movie: Movie
    @Binding var movieDetailToShow: Movie?
        
    var body: some View {
        GeometryReader { proxy in
            HStack {
                KFImage(movie.thumbnailURL)
                    .resizable()
                    .frame(width: proxy.size.width / 3)
                    .padding(.leading, 3)
                Text(movie.name)
                Spacer()
                
                Button {
                    // play movie
                    print("asdfasdfasd")
                } label: {
                    Image(systemName: "arrowtriangle.right.fill")
                }
                .padding(.trailing, 20)
            }
            .foregroundStyle(.white)
            .onTapGesture {
                // show movie detail
                movieDetailToShow = movie
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        SearchPopularMoviesView(movie: exampleMovie5, movieDetailToShow: .constant(nil))
            .frame(height: 75)
    }
    .foregroundStyle(.white)
}
