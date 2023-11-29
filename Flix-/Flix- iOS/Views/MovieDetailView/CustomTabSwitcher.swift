//
//  CustomTabSwitcher.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import SwiftUI

enum CustomTabs: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS AND MORE"
    case more = "MORE LIKE THIS"
    case related = "RELATED MOVIES"
}

struct CustomTabSwitcher: View {
    
    @State private var selectedTab: CustomTabs = .episodes
    var tabs: [CustomTabs]
    var movie: Movie
    
    func widthForTab(_ tab: CustomTabs) -> CGFloat {
        return tab.rawValue.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundStyle(tab == selectedTab ? .red : .clear)
                            
                            Button {
                                selectedTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundStyle(tab == selectedTab ? .white : .gray)
                            }
                            .buttonStyle(.plain)
                            .frame(width: widthForTab(tab), height: 30)
                        }
                    }
                    
                }
            }
            
            switch selectedTab {
            case .episodes:
                Text("eppys")
            case .trailers:
                Text("tray tray")
            case .more:
                MovieGridView(movies: movie.moreLikeThisMovies)
            case .related:
                Text("rellllated")
            }
            Text("Selected tab = \(selectedTab.rawValue)")
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        CustomTabSwitcher(tabs: [.episodes,.trailers, .more], movie: exampleMovie1)
    }
    
}
