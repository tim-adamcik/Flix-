//
//  SearchView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/8/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search bar")
                    }
                        
                        Spacer()
                    Text("Cancel")
                }
                
                ScrollView() {
                    HStack {
                        Text("Popular movies")
                            .font(.title)
                            .bold()
                        Spacer()
                    }
                    VStack {
                        ForEach(0..<10) {_ in 
                            HStack {
                                Image(systemName: "play.fill")
                                    .font(.largeTitle)
                                    .padding(.horizontal, 20)
                                Text("Movie")
                                    .font(.system(size: 30.0))
                                    .padding(.leading, 10)
                                Spacer()
                                Image(systemName: "triangle.fill")
                                    .rotationEffect(.degrees(90))
                            }
                        }
                    }
                }
                Spacer()
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    SearchView()
}
