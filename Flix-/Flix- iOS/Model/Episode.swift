//
//  Episode.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/28/23.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailUrl: URL? {
        return URL(string: thumbnailImageURLString)
    }
}
