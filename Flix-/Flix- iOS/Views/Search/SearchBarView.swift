//
//  SearchBarView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/8/23.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var text: String = ""
    
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 320.0, height: 36.0)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(Color.graySearchText)
                    .padding(.leading, 10)
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -7)
                    .background(.graySearchBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .foregroundStyle(.white)
                
                Button {
                    // Clear textfield
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundStyle(.graySearchText)
                        .frame(width: 35, height: 35)
                }
                .padding(.trailing, 18)
                
                Button {
                    // clear text, hide both buttons, give up first responder
                } label: {
                    Text("Cancel")
                        .foregroundStyle(.white)
                }
                .padding(.trailing, 10)
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
        SearchBarView()
            .padding()

    }
}
