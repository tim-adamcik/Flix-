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
                    TopRowButtons() {
                        //
                    }

                    TopMoviePreview(movie: exampleMovie3)
                        .frame(width: screen.width)
                        .padding(.top, -100)
                        .zIndex(-1)
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3.bold())
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMoviesForCategory(category: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 200, height: 340)
                                            .padding(.horizontal, 5)
                                            .onTapGesture {
                                                movieDetailToShow = movie
                                            }
                                    }
                                }
                            }
                        }
                        
                    }
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
