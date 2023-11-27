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
            LinearGradient(stops: [Gradient.Stop(color: .clear, location: 0.65), Gradient.Stop(color: .black, location: 0.95)], startPoint: .top, endPoint: .bottom)
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
                HStack(spacing: 60) {
                    SmallVerticalButton(text: "My List", onImage: "checkmark", offImage: "plus", isOn: false) {
                        // my list action
                    }
                    SmallHorizontalButton(text: "Play", image: "play.fill", backgroundColor: .white, foregroundColor: .black) {
                        // play action
                    }
                    .frame(width: 160, height: 40)

                    SmallVerticalButton(text: "Info", onImage: "info.circle", offImage: "info.circle", isOn: true) {
                        // info action
                    }
                    
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
