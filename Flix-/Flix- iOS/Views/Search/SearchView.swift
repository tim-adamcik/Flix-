//
//  SearchView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/8/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var text: String = ""
    @State private var isLoading: Bool = false
    
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                    SearchBarView(text: $text, isLoading: $isLoading)
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
