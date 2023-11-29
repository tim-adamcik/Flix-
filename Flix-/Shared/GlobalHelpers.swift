//
//  GlobalHelpers.swift
//  Flix-
//
//  Created by Timothy Adamcik on 11/22/23.
//

import Foundation
let exampleMovie1 = Movie(
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020, 
    rating: "TV-MA",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel", 
    moreLikeThisMovies: [exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6,exampleMovie7,exampleMovie8,exampleMovie9])
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
    promotionalHeadline: "Best New Show")
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
    moreLikeThisMovies: [])
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
    moreLikeThisMovies: [])
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
    promotionalHeadline: "New Episodes Coming Soon")
let exampleMovie6 = Movie(
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5, defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja", cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel", 
    moreLikeThisMovies: [])
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
    promotionalHeadline: "Watch Season 6 now")
let exampleMovie8 = Movie(
    name: "Jumanji",
    thumbnailURL: URL(string: "https://picsum.photos/200/307")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi", "Thriller"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 7,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Fritoja",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [])
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
    moreLikeThisMovies: [])

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
