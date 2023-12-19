//
//  SmallVerticalButton.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/27/23.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    var text: String
    var onImage: String
    var offImage: String
    var isOn: Bool
    var color: Color = .white
    
    var action: () -> Void
    
    var body: some View {
        Button {
            // run the action
            action()
        } label: {
            VStack {
                Image(systemName: isOn ? onImage : offImage)
                Text(text)
            }
            .foregroundStyle(color)
            .font(.system(size: 14))
            .bold()
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        SmallVerticalButton(text: "My List", onImage: "checkmark", offImage: "plus", isOn: false) {
            //
            print("tapped")
        }
    }
}
