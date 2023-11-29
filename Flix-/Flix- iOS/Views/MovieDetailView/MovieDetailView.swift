//
//  MovieDetailView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/28/23.
//

import SwiftUI

struct MovieDetailView: View {
    
    var movie: Movie
    @State var seasonSelection: Int = 1
    
    private var screen: CGRect {
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
                return UIScreen.main.bounds
            }
        return windowScene.screen.bounds
        }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        // close the view
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubviewView(movie: movie)
                        if movie.promotionalHeadline != nil {
                            Text(movie.promotionalHeadline!)
                                .font(.headline)
                                .bold()
                        }
                        SmallHorizontalButton(text: "Play", image: "play.fill", backgroundColor: .red, foregroundColor: .white) {
                            // play movie
                        }
                        CurrentEpisodeInformationView(movie: movie)
                        CastInfoView(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My List", onImage: "checkmark", offImage: "plus", isOn: true) {
                                //
                            }
                            SmallVerticalButton(text: "Rate", onImage: "hand.thumbsup.fill", offImage: "hand.thumbsdown.fill", isOn: true) {
                                //
                            }
                            SmallVerticalButton(text: "Share", onImage: "square.and.arrow.up", offImage: "square.and.arrow.up", isOn: true) {
                                //
                            }
                            Spacer()
                            
                        }
                        .padding(.leading, 20)

                        CustomTabSwitcher(tabs: [.episodes,.trailers,.more], movie: movie)

                        
                    }
                    .padding(.horizontal, 8)
                }
                
                Spacer()
                Spacer()
                
                if movie.numberOfSeasons != nil {
                    Picker(selection: $seasonSelection) {
                        ForEach(0..<movie.numberOfSeasons!, id: \.self) { season in
                            Text("Season \(String(season))")
                        }
                    } label: {
                        Text("Seasons")
                    }
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    MovieDetailView(movie: exampleMovie5)
}
