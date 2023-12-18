//
//  SearchView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/8/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var text: String = ""
    @ObservedObject var viewModel: SearchViewModel = SearchViewModel()
    
    @State private var movieDetailToShow: Movie? = nil
    
    
    var body: some View {
        let searchTextBinding = Binding {
            return text
        } set: {
            text = $0
            viewModel.updateSearchText(with: $0)
        }
        
        return ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    SearchBarView(text: searchTextBinding, isLoading: $viewModel.isLoading)
                }
                
                ScrollView() {
                    
                    if viewModel.isShowingPopularMovies {
                        HStack {
                            Text("Popular movies")
                                .font(.title)
                                .bold()
                                .padding(.leading, 12)
                            Spacer()
                        }
                        LazyVStack {
                            ForEach(viewModel.popularMovies, id: \.id) { movie in
                                SearchPopularMoviesView(movie: movie, movieDetailToShow: $movieDetailToShow)
                                    .frame(height: 75)
                            }
                        }
                    } else {
                        switch viewModel.viewState {
                        case .empty:
                            Text("Your search did not have any results")
                                .bold()
                                .padding(.top, 150)
                        case .loading:
                            Text("Loading")
                        case .loaded:
                            VStack {
                                HStack {
                                    Text("Movies & TV")
                                        .bold()
                                        .font(.title3)
                                        .padding(.leading, 12)
                                    Spacer()
                                }
                                SearchResultsView(movies: viewModel.searchResultMovies, movieDetailToShow: $movieDetailToShow)
                            }
                        case .error:
                            Text("error")
                        }
                    }
                    
                }
            }
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    SearchView()
}
