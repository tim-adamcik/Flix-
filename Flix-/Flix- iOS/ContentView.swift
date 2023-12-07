//
//  ContentView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = .black
    }
    
    @State private var text: String = "DADDY"
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            Text("Second")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(1)
            Text("Third")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Coming Soon")
                }.tag(2)
            Text("Fourth")
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("Download")
                }.tag(3)
            Text("Fifth")
                .tabItem {
                    Image(systemName: "figure.table.tennis")
                    Text("Home")
                }.tag(4)
        }
        .background(.black)
        .tint(.white)
    }

}

#Preview {
    ContentView()
}
