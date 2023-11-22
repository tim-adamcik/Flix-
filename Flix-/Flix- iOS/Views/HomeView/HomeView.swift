//
//  HomeView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject private var vm: HomeViewModel
    
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
                                            .frame(width: 200, height: 360)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
        }
        .foregroundStyle(.white)
        
    }
}

#Preview {
    HomeView()
}
