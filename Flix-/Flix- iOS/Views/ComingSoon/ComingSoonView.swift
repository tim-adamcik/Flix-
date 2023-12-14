//
//  ComingSoonView.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/14/23.
//

import SwiftUI

struct ComingSoonView: View {
    
    @State var showNotificationList: Bool = false
    
    var body: some View {
        NavigationStack {
            Group {
                ZStack {
                    Color.black
                        .ignoresSafeArea()
                    ScrollView {
                        VStack {
                            NotificationBar(showNotificationList: $showNotificationList)
                            Text("For each loop of cell")
                        }
                    }
                    .foregroundStyle(.white)
                }
                NavigationLink(destination: Text("Navigation Link"), isActive: $showNotificationList, label: {
                    EmptyView()
                })
            }
        }
    }
}

#Preview {
    ComingSoonView()
}
