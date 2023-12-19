//
//  MoviePreviewCell.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/18/23.
//

import SwiftUI
import KingfisherSwiftUI

struct MoviePreviewCell: View {
    
    var movie: Movie
    
    let colors: [Color] = [.yellow, .green, .red, .gray, .orange, .yellow]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            KFImage(movie.thumbnailURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(lineWidth: 3.0)
                        .foregroundStyle(colors.randomElement() ?? .yellow)
            }
            Image(movie.previewImageName)
                .resizable()
                .scaledToFit()
                .offset(y: -20)
                .frame(height: 65)
        }
        
    }
    
    
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        MoviePreviewCell(movie: exampleMovie5)
            .frame(width: 165, height: 50)
    }
}
