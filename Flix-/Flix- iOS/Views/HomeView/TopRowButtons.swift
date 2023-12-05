//
//  TopRowButtons.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/27/23.
//

import SwiftUI

struct TopRowButtons: View {
    
    @Binding var topRowSelection: HomeTopRow
    @Binding var homeGenre: HomeGenre
    @Binding var showGenreSelection: Bool
    @Binding var showTopRowSelection: Bool
    
    var action: () -> Void
    
    var body: some View {
        switch topRowSelection {
        case .home:
            HStack {
                Button {
                    //
                    topRowSelection = .home
                } label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
                .buttonStyle(.plain)
                
                Spacer()
                
                Button {
                    // action
                    topRowSelection = .tvShows
                } label: {
                    Text("Tv Shows")
                }
                Spacer()
                Button {
                    // action
                    topRowSelection = .movies
                } label: {
                    Text("Movies")
                }
                Spacer()
                Button {
                    // action
                    topRowSelection = .myList
                } label: {
                    Text("My List")
                }
            }
            .padding(.leading, 10)
            .padding(.trailing, 30)
        case .tvShows, .movies:
            HStack {
                Button {
                    //
                    topRowSelection = .home
                } label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
                .buttonStyle(.plain)
                                
                HStack(spacing: 20) {
                    Button {
                        // action
                        showTopRowSelection = true
                        
                    } label: {
                        HStack {
                            Text(topRowSelection.rawValue)
                                .font(.system(size: 18))
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                    }
                .buttonStyle(.plain)
                    
                    Button {
                        // action
                        showGenreSelection = true
                    } label: {
                        HStack {
                            Text(homeGenre.rawValue)
                                .font(.system(size: 12))
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 8))
                                .rotationEffect(.degrees(180), anchor: .center)
                                
                        }
                    }
                    .buttonStyle(.plain)
                    Spacer()
                }
                .padding(.leading, 30)
                

            }
            .padding(.leading, 10)
            .padding(.trailing, 30)
        case .myList:
            HStack {
                Button {
                    //
                    topRowSelection = .home
                } label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
                .buttonStyle(.plain)
                Text("my list test")
                Spacer()
            }
            .padding(.leading, 10)
            
        }
    }
}


#Preview {
    TopRowButtons(topRowSelection: .constant(.myList), homeGenre: .constant(.AllGenres), showGenreSelection: .constant(false), showTopRowSelection: .constant(false)) {
        print("Tapped")
    }
}
