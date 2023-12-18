//
//  SmartDownloadsView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/18/23.
//

import SwiftUI

struct SmartDownloadsView: View {
    
    @Binding var isSmartDownloadsOn: Bool
    
    var body: some View {
        HStack {
            Image(systemName: "info.circle")
            Text("Smart Downloads")
                .bold()
            Text(isSmartDownloadsOn ? "ON" : "OFF")
                .foregroundStyle(.blue)
                .bold()
            Spacer()
        }
    }
}

#Preview {
    ZStack {
        Color.black
        SmartDownloadsView(isSmartDownloadsOn: .constant(true))
    }
    .foregroundStyle(.white)
}
