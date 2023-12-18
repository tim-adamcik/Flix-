//
//  SearchViewModel.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/8/23.
//

import Foundation
import SwiftUI

class SearchViewModel: ObservableObject {
    
    @Published var isLoading: Bool = false
    @Published var viewState: ViewState = .loaded
    
    @Published var popularMovies: [Movie] = []
    @Published var searchResultMovies: [Movie] = []
    
    @Published var isShowingPopularMovies = true
    
        
    init() {
        getPopularMovies()
    }
    
    public func updateSearchText(with text: String) {
        setViewState(to: .loading)
        
        if text.count > 0 {
            isShowingPopularMovies = false
            getSearchResults(for: text)
        } else {
            isShowingPopularMovies = true
        }
    }
    
    private func setViewState(to state: ViewState) {
        DispatchQueue.main.async {
            self.viewState = state
            self.isLoading = state == .loading
        }
    }
    
    private func getPopularMovies() {
        self.popularMovies = generateMovies(40)
    }
    
    private func getSearchResults(for text: String) {
        
        let haveResult = Int.random(in: 0...3)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if haveResult == 0 {
                self.searchResultMovies = []
                self.setViewState(to: .empty)
            } else {
                let movies = generateMovies(21)
                self.searchResultMovies = movies
                self.setViewState(to: .loaded)
            }
        }
    }
    
}

enum ViewState {
    case empty
    case loading
    case loaded
    case error
}
