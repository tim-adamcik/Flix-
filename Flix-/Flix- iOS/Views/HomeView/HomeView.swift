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
            ForEach(vm.allCategories, id: \.self) { category in
                VStack {
                    HStack {
                        Text(category)
                        Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(vm.getMoviesForCategory(category: category), id: \.id) { movie in
                                Text(movie.name)
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
