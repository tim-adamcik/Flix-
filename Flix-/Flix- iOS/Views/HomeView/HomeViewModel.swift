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
        movies["Trending Now"] = exampleMovies
        movies["Stand Up Comedy"] = exampleMovies.shuffled()
        movies["Romance"] = exampleMovies.shuffled()
        movies["Funny"] = exampleMovies.shuffled()
        movies["Too Late"] = exampleMovies.shuffled()
        movies["My List"] = exampleMovies.shuffled()
    }
    
    func getMoviesForCategory(forCategory category: String, andHomeRow homeRow: HomeTopRow) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[category] ?? []
        case .movies:
            let moviesForCategory = movies[category] ?? []
            return moviesForCategory.filter { $0.mediaType == .movie }
        case .tvShows:
            let tvShowsForCategory = movies[category] ?? []
            return tvShowsForCategory.filter { $0.mediaType == .tvShow }
        case .myList:
            return movies[category] ?? []
        }
        
    }
    
}
