//
//  CastInfoView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import SwiftUI

struct CastInfoView: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundStyle(.gray)
        .padding(.vertical, 10)
    }
}

#Preview {
    CastInfoView(movie: exampleMovie6)
}
