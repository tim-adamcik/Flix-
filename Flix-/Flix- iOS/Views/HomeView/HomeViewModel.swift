//
//  HomeViewModel.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var movies: [String:[Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map( {String($0)} )
    }
    
    init() {
        setUpMovies()
    }
    
    func allMovies() {
        
    }
    private func setUpMovies() {
        movies["Trending Now"] = [exampleMovie1]
    }
    
    func getMoviesForCategory(category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
}
