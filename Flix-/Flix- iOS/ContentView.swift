//
//  ContentView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text: String = "DADDY"
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "heart.fill")
                .foregroundColor(.red)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("ADA ADAMCIK")
                .font(.largeTitle)
                .foregroundStyle(.red)
            Text("Loves")
            Text(text)
                .font(.largeTitle)
                .foregroundStyle(.green)
            
        }
        .padding()
    }

}

#Preview {
    ContentView()
}
