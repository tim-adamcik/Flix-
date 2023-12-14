//
//  NotificationBar.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/14/23.
//

import SwiftUI

struct NotificationBar: View {
    
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Button {
            // show notification list
            showNotificationList = true
        } label: {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                    .font(.system(size: 18, weight: .bold))
                Spacer()
                Image(systemName: "chevron.right")
                
            }
            .foregroundStyle(.white)
            .padding()
        }
    }
}

#Preview {
    ZStack {
        Color.black
        NotificationBar(showNotificationList: .constant(false))
    }
}
