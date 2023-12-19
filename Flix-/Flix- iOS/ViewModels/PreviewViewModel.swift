//
//  PreviewViewModel.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/19/23.
//

import Foundation

class PreviewViewModel: ObservableObject {
    var movie: Movie

    init(movie: Movie) {
        self.movie = movie
    }
}
