//
//  HomeStack.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/5/23.
//

import Foundation
import SwiftUI

struct HomeStack: View {
    
    var vm: HomeViewModel
    @Binding var movieDetailToShow: Movie?
    var homeGenre: HomeGenre
    var topRowSelection: HomeTopRow
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3.bold())
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(vm.getMoviesForCategory(forCategory: category, andHomeRow: topRowSelection)) { movie in
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

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        ScrollView {
            HomeStack(vm: HomeViewModel(), movieDetailToShow: .constant(exampleMovie5), homeGenre: .AllGenres, topRowSelection: .home)
        }
        .foregroundStyle(.white)
    }
}
