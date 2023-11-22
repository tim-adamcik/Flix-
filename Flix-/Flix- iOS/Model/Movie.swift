//
//  Movie.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import Foundation

struct Movie: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var thumbnailURL: URL
    
}
