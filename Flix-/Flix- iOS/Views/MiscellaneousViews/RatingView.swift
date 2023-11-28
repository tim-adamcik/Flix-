//
//  RatingView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/28/23.
//

import SwiftUI

struct RatingView: View {
    
    var rating: String
    
    var body: some View {
        ZStack {
           Rectangle()
                .foregroundStyle(.gray)
            Text(rating)
                .foregroundStyle(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}


#Preview {
    RatingView(rating: "TV-MA")
}
