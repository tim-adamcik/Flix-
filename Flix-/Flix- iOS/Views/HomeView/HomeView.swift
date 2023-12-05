//
//  HomeView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject private var vm: HomeViewModel
    @State private var movieDetailToShow: Movie? = nil
    
    @State private var topRowSelection: HomeTopRow = .home
    @State private var homeGenre: HomeGenre = .AllGenres
    
    @State private var showTopRowSelection = false
    @State private var showGenreSelection: Bool = false
    
    
    private var screen: CGRect {
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
                return UIScreen.main.bounds
            }
        return windowScene.screen.bounds
        }
    
    init(vm: HomeViewModel = HomeViewModel()) {
        self.vm = vm
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            // main vstack
            ScrollView {
                LazyVStack {
                    TopRowButtons(topRowSelection: $topRowSelection, homeGenre: $homeGenre, showGenreSelection: $showGenreSelection, showTopRowSelection: $showTopRowSelection) {
                        //
                        
                    }

                    TopMoviePreview(movie: exampleMovie3)
                        .frame(width: screen.width)
                        .padding(.top, -100)
                        .zIndex(-1)
                    HomeStack(vm: vm, movieDetailToShow: $movieDetailToShow, homeGenre: homeGenre, topRowSelection: topRowSelection)
                }
            }
            
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: 1.0)
                    .transition(.opacity)
            }
        }
        .foregroundStyle(.white)
        
    }
}

#Preview {
    HomeView()
}

enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case myList = "My List"
}

enum HomeGenre: String {
    case AllGenres = "All Genres"
    case Action
    case Comedy
    case Horror
    case Thriller
}
