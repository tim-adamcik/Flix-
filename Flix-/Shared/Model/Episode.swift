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
    var episodeNumber: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    var videoURL: URL
    
    var thumbnailUrl: URL? {
        return URL(string: thumbnailImageURLString)
    }
    
    var formattedEpisodeDuration: String {
        return formatDuration(seconds: length)
    }
    
    func formatDuration(seconds: Int) -> String {
        let hours = seconds / 3600
        let minutes = (seconds % 3600) / 60
        
        var durationString = ""
        
        if hours > 0 {
            durationString += "\(hours)h"
        }
        
        if minutes > 0 || (hours == 0 && minutes == 0) {
            durationString += "\(minutes)m"
        }
        
        return durationString
    }
}
