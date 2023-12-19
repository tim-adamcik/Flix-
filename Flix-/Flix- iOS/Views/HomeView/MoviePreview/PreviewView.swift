//
//  PreviewView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/19/23.
//

import SwiftUI

struct PreviewView: View {
    
    @ObservedObject var viewModel: PreviewViewModel
    var playVideo: Bool
    
    var body: some View {
        ZStack {
            Color.black
                
            TrailerPlayerView(videoURL: viewModel.movie.trailers.first?.videoURL, playVideo: .constant(playVideo))
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(viewModel.movie.name)
                            .bold()
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.top, 60)
                
                Spacer()
                
                HStack {
                    ForEach(0..<viewModel.movie.categories.count, id: \.self) { index in
                        let category = viewModel.movie.categories[index]
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if index != viewModel.movie.categories.count - 1 {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 3))
                            }
                            
                        }
                    }
                }
                HStack {
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", onImage: "checkmark", offImage: "plus", isOn: true, color: viewModel.movie.accentColor) {
                        //
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "arrowtriangle.right.fill")
                            Text("PLAY")
                                .fontWeight(.heavy)
                                
                        }
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 26)
                    .border(viewModel.movie.accentColor, width: 3)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", onImage: "info.circle", offImage: "info.circle", isOn: true, color: viewModel.movie.accentColor) {
                        //
                    }
                    Spacer()
                }
                .padding(.vertical, 14)
            }
            .padding(.bottom, 48)
            .foregroundStyle(viewModel.movie.accentColor)
        }
        .ignoresSafeArea(edges: .vertical)
    }
}

#Preview {
    PreviewView(viewModel: PreviewViewModel(movie: exampleMovie5), playVideo: true)
}
