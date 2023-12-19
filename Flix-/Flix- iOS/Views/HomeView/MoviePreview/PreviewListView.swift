//
//  PreviewListView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/19/23.
//

import SwiftUI

struct PreviewListView: View {
    
    var movies: [Movie]
    @Binding var currentSelection: Int
    @Binding var isVisible: Bool
    @State private var currentTranslation: CGFloat = 0
    
    private var screen: CGRect {
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
                return UIScreen.main.bounds
            }
        return windowScene.screen.bounds
        }
    
    func shouldPlayVideo(index: Int) -> Bool {
        guard isVisible,
              index != currentSelection
        else { return false }
        
        return true
    }
    
    var body: some View {
        ZStack {
            Color.black
            PagerView(pageCount: movies.count, currentIndex: $currentSelection, translation: $currentTranslation) {
                
                ForEach(0..<movies.count, id: \.self) { movieIndex in
                    let movie = movies[movieIndex]
                    PreviewView(viewModel: PreviewViewModel(movie: movie), playVideo: shouldPlayVideo(index: movieIndex))
                        .frame(width: screen.width)
                }
                
                
            }
            .frame(width: screen.width)
        }
    }
}

struct ExamplePreviewList: View {
    
    @State private var currentSelection: Int = 0
    @State private var isVisible: Bool = true
    
    var body: some View {
        PreviewListView(movies: exampleMovies, currentSelection: $currentSelection, isVisible: $isVisible)
    }
}

#Preview {
    ExamplePreviewList()
//    PreviewListView(movies: exampleMovies, currentSelection: .constant(1), isVisible: .constant(true))
}
