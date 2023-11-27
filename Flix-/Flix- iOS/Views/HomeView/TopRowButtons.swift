//
//  TopRowButtons.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/27/23.
//

import SwiftUI

struct TopRowButtons: View {
    
    var action: () -> Void
    
    var body: some View {
        HStack {
            Button {
                //
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
            } label: {
                Text("Tv Shows")
            }
            Spacer()
            Button {
                // action
            } label: {
                Text("Movies")
            }
            Spacer()
            Button {
                // action
            } label: {
                Text("My List")
            }
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}


#Preview {
    TopRowButtons() {
        print("Tapped")
    }
}
