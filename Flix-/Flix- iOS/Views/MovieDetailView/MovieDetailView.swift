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
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
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
            
            ZStack {
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

                            CustomTabSwitcher(tabs: [.episodes,.trailers,.more], movie: movie, selectedSeason: $selectedSeason, showSeasonPicker: $showSeasonPicker)

                        }
                        .padding(.horizontal, 8)
                    }
                }
                .foregroundStyle(.white)
                
                if showSeasonPicker {
                    Group {
                        Color.black.opacity(0.9)
                            .ignoresSafeArea()
                        VStack {
                            Spacer()
                            
                            ForEach(0..<(movie.numberOfSeasons ?? 0)) { season in
                                Button {
                                    selectedSeason = season + 1
                                    showSeasonPicker = false
                                } label: {
                                    Text("Season \(season + 1)")
                                }
                                .foregroundStyle(season + 1 == selectedSeason ? .white : .gray)
                                .font(season + 1 == selectedSeason ? .title : .title2)
                                .bold()
                                
                            }
                            .padding(4)
                            
                            Spacer()
                            
                            Button {
                                showSeasonPicker = false
                            } label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1.1)
                            }
                            .padding(.bottom, 30)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MovieDetailView(movie: exampleMovie5)
}
