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
                    }
                }
                Spacer()
                SmallVerticalButton(text: "Like", onImage: "hand.thumbsup.fill", offImage: "hand.thumbsdown.fill", isOn: true) {
                    //
                }
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
