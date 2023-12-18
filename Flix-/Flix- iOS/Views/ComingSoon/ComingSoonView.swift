//
//  ComingSoonView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/14/23.
//

import SwiftUI

struct ComingSoonView: View {
    
    @State private var showNotificationList: Bool = false
    @ObservedObject  var viewModel: ComingSoonViewModel = ComingSoonViewModel()
    @State private var movieDetailToShow: Movie? = nil
    
    @State private var scrollOffset: CGFloat = 0.0
    @State private var activeIndex = 0
    
    var body: some View {
        
        let movies = viewModel.movies.enumerated().map({$0})
        
        let scrollTrackingBinding: Binding = Binding {
            return scrollOffset
        } set: { newValue in
            scrollOffset = newValue
            updateActiveIndex(from: newValue)
        }

        
        NavigationStack {
            Group {
                ZStack {
                    Color.black
                        .ignoresSafeArea()
                    
                    TrackableScrollView(.vertical, showIndicators: false, contentOffset: scrollTrackingBinding) {
                        LazyVStack {
                            NotificationBar(showNotificationList: $showNotificationList)
                            
                            ForEach(Array(movies), id:\.offset) { (index, movie) in
                                ComingSoonRow(movie: movie, movieDetailToShow: $movieDetailToShow)
                                    .frame(height: 400)
                                    .overlay {
                                        Group {
                                            index == activeIndex ? Color.clear : Color.black.opacity(0.85)
                                        }
                                        .animation(.easeInOut, value: activeIndex)
                                    }
                            }
                        }
                    }
                    .foregroundStyle(.white)
                    
                }
                NavigationLink(destination: Text("Navigation Link"), isActive: $showNotificationList, label: {
                    EmptyView()
                })
            }
        }
    }
    
    private func updateActiveIndex(from scroll: CGFloat) {
        if scroll < 105 {
            activeIndex = 0
        } else {
            let remove105 = scroll - 105
            let active = Int(remove105 / 410) + 1
            activeIndex = active
        }
    }
}

#Preview {
    ComingSoonView()
}
