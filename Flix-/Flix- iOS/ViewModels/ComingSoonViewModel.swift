//
//  ComingSoonViewModel.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/14/23.
//

import Foundation


class ComingSoonViewModel: ObservableObject {
    
    @Published var movies: [Movie] = []
    
    
    init() {
        self.movies = generateMovies(20)
    }
    
    
    
}
