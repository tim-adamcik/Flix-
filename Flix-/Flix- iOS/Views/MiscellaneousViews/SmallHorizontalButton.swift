//
//  SmallHorizontalButton.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/27/23.
//

import SwiftUI

struct SmallHorizontalButton: View {
    
    var text: String
    var image: String
    var backgroundColor: Color
    var foregroundColor: Color
    
    
    var action: () -> Void
    
    var body: some View {
        ZStack {
            backgroundColor
            Button() {
                action()
            } label: {
                HStack {
                    Spacer()
                    Image(systemName: image)
                        .font(.title)
                    Text(text)
                        .font(.system(size: 18))
                        .bold()
                        .padding(.vertical, 8)
                    Spacer()
                }
                .foregroundStyle(foregroundColor)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 3.0))
    }
}

#Preview {
    ZStack {
        SmallHorizontalButton(text: "Play", image: "play.fill", backgroundColor: .white, foregroundColor: .black) {
            //
            print("Play")
        }
    }
}
