//
//  DownloadsView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/18/23.
//

import SwiftUI

struct DownloadsView: View {
    
    @State var isSmartDownloadsOn: Bool = true
    
    private var titleLabel: String = "Never be without Flix-"
    private var subtitleLabel: String = "Download shows and movies so you'll never be without something to watch--\n even when you're offline."
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                SmartDownloadsView(isSmartDownloadsOn: $isSmartDownloadsOn)
                Spacer()
                VStack(spacing: 10) {
                    ZStack {
                        Circle()
                            .foregroundStyle(.graySearchBackground)
                            .padding(.horizontal, 100)
                        Image(systemName: "arrow.down.to.line.alt")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                        .foregroundStyle(.gray)
                    }
                    .frame(height: 275)
                    .padding(.top, 75)
                    
                    Text(titleLabel)
                        .font(.title2)
                        .bold()
                    Text(subtitleLabel)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Button {
                        // Show shows that can be downloaded
                    } label: {
                        Text("See what you can download")
                            .padding()
                            .foregroundStyle(.black)
                            .bold()
                    }
                    .background(.white)
                    .frame(height: 75)
                }
                Spacer()
                Spacer()
                Spacer()
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    DownloadsView()
}
