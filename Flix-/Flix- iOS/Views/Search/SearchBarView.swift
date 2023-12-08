//
//  SearchBarView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/8/23.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var text: String
    @State private var isEditing: Bool = true
    @Binding var isLoading: Bool
    
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
                    .onTapGesture(perform: {
                        isEditing = true
                    })
                if !text.isEmpty {
                    if isLoading {
                        Button {
                            // Clear textfield
                            text = String()
                        } label: {
                            ActivityIndicator(style: .medium, animate: .constant(true))
                                .configure {
                                    $0.color = .white
                                }
                        }
                        .padding(.trailing, 36)
                        .frame(width: 35, height: 35)
                        
                    } else {
                        Button {
                            // Clear textfield
                            text = String()
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundStyle(.graySearchText)
                                .frame(width: 35, height: 35)
                        }
                        .padding(.trailing, 18)
                    }
                }
                
                if isEditing {
                    Button {
                        // clear text, hide both buttons, give up first responder
                        text = String()
                        isEditing = false
                        hideKeyboard()
                    } label: {
                        Text("Cancel")
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing, 10)
                }
                
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
        SearchBarView(text: .constant(""), isLoading: .constant(false))
            .padding()

    }
}
