//
//  HDView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/28/23.
//

import SwiftUI

struct HDView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.clear)
                .stroke(.gray ,lineWidth: 2)
                .frame(width: 40, height: 20)
            Text("HD")
                .foregroundStyle(.gray)
                .bold()
                .padding()
        }
    }
}

#Preview {
    HDView()
}
