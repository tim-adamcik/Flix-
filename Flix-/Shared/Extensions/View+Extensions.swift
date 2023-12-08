//
//  View+Extensions.swift
//  Flix-
//
//  Created by Timothy Adamcik on 12/8/23.
//

import Foundation
import SwiftUI


extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
