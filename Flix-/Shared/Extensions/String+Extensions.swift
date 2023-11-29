//
//  String+Extensions.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import Foundation
import SwiftUI

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
