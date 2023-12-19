//
//  Movie.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import Foundation
import SwiftUI

struct Movie: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var thumbnailURL: URL
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
    // Movie detail view
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var accentColor: Color = .white
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    var trailers: [Trailer]
    
    var episodes: [Episode]?
    var promotionalHeadline: String?
    
    var previewImageName: String
    var previewVideoURL: URL?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 Season"
            } else {
                return "\(num) Seasons"
            }
        } else {
            return String()
        }
    }
    
    var episodeInfoDisplay: String {
        
        if let current = currentEpisode {
            return "S\(current.season)E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season)E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
    
    var mediaType: MediaType {
        return episodes == nil ? .movie : .tvShow
    }
    
}

struct CurrentEpisodeInfo: Hashable, Identifiable {
    var id: String = UUID().uuidString
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MediaType {
    case movie
    case tvShow
}
