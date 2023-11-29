//
//  Trailer.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/29/23.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
