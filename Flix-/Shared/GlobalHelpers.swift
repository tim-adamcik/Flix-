//
//  GlobalHelpers.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import Foundation

let exampleEpisode = Episode(name: "Fairy Dust", season: 1, episodeNumber: 1, thumbnailImageURLString: exampleImageURL.absoluteString, description: "The gang tries to find the coolest fairy dust around. No one expects what will happen next", length: 12000, videoURL: exampleVideoURL)
let exampleEpisode2 = Episode(name: "Boogla", season: 1, episodeNumber: 2, thumbnailImageURLString: exampleImageURL2.absoluteString, description: "The gang tries to find the coolest fairy dust around. No one expects what will happen next", length: 12000, videoURL: exampleVideoURL)
let exampleEpisode3 = Episode(name: "Turtles 4 you", season: 1, episodeNumber: 3, thumbnailImageURLString: exampleImageURL3.absoluteString, description: "The gang tries to find the coolest fairy dust around. No one expects what will happen next", length: 4000, videoURL: exampleVideoURL)
let exampleEpisode4 = Episode(name: "Nomads", season: 2, episodeNumber: 1, thumbnailImageURLString: exampleImageURL4.absoluteString, description: "The gang tries to find the coolest fairy dust around. No one expects what will happen next", length: 3800, videoURL: exampleVideoURL)
let exampleEpisode5 = Episode(name: "Peliculas", season: 2, episodeNumber: 2, thumbnailImageURLString: exampleImageURL2.absoluteString, description: "The gang tries to find the coolest fairy dust around. No one expects what will happen next", length: 2000, videoURL: exampleVideoURL)

let exampleEpisodes = [exampleEpisode, exampleEpisode2, exampleEpisode3, exampleEpisode4, exampleEpisode5]



let exampleVideoURL: URL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let exampleImageURL: URL = URL(string: "https://picsum.photos/200/105")!
let exampleImageURL2: URL = URL(string: "https://picsum.photos/200/106")!
let exampleImageURL3: URL = URL(string: "https://picsum.photos/200/107")!
let exampleImageURL4: URL = URL(string: "https://picsum.photos/200/108")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3, exampleImageURL4].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL4)
let exampleTrailer2 = Trailer(name: "My Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "Mysterion", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

var exampleTrailers = [exampleTrailer1,exampleTrailer2,exampleTrailer3]


let exampleMovie1 = Movie(
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020, 
    rating: "TV-MA",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel", 
    moreLikeThisMovies: [exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6,exampleMovie7,exampleMovie8,exampleMovie9], trailers: exampleTrailers,
    episodes: exampleEpisodes.shuffled())
let exampleMovie2 = Movie(
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"], 
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers.shuffled(), promotionalHeadline: "Best New Show")
let exampleMovie3 = Movie(
    name: "South Park",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel", 
    moreLikeThisMovies: [], trailers: exampleTrailers.shuffled())
let exampleMovie4 = Movie(
    name: "Annabel",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel", 
    moreLikeThisMovies: [], trailers: exampleTrailers.shuffled())
let exampleMovie5 = Movie(
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie6,exampleMovie7,exampleMovie8,exampleMovie9],
    trailers: exampleTrailers.shuffled(), episodes: exampleEpisodes, promotionalHeadline: "New Episodes Coming Soon")
let exampleMovie6 = Movie(
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5, defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja", cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel", 
    moreLikeThisMovies: [], trailers: exampleTrailers.shuffled())
let exampleMovie7 = Movie(
    name: "Shark Tale",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers.shuffled(), promotionalHeadline: "Watch Season 6 now")
let exampleMovie8 = Movie(
    name: "Jumanji",
    thumbnailURL: URL(string: "https://picsum.photos/200/307")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 7,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [], trailers: exampleTrailers.shuffled())
let exampleMovie9 = Movie(
    name: "Pets",
    thumbnailURL: URL(string: "https://picsum.photos/200/308")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [], trailers: exampleTrailers.shuffled())

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Happy", description: "This is the episode description for the show happy. Happy is a show that follows a man through the happiest times of his life. When things get rough for him he has to reflect on all of the positive past experiences he has had to move his life forward.", season: 1, episode: 1)

var exampleMoviesShuffled: [Movie] {
    return exampleMovies.shuffled()
}

let exampleMovies: [Movie] = [
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
    exampleMovie5,
    exampleMovie6,
    exampleMovie7,
    exampleMovie8,
    exampleMovie9
]
