//
//  GlobalHelpers.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 15/05/2021.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [exampleMovie7,exampleMovie8,exampleMovie9, exampleMovie10, exampleMovie11, exampleMovie12], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers, episodes: allExampleEpisodes)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Vincenzo", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Sci-fi TV","Exciting", "Dystopian", "K-Drama"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [exampleMovie7,exampleMovie8,exampleMovie9], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers, episodes: allExampleEpisodes)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "The A-Team", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [exampleMovie7,exampleMovie8,exampleMovie9], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers, episodes: allExampleEpisodes)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Start-up", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [exampleMovie7,exampleMovie8,exampleMovie9], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers, episodes: allExampleEpisodes)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [exampleMovie7,exampleMovie8,exampleMovie9], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers, episodes: allExampleEpisodes)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [exampleMovie7,exampleMovie8,exampleMovie9], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers, episodes: allExampleEpisodes)
let exampleMovie7 = Movie(id: UUID().uuidString, name: "Start-up", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers, episodes: allExampleEpisodes)
let exampleMovie8 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/310")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers, episodes: allExampleEpisodes)
let exampleMovie9 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/309")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers)
let exampleMovie10 = Movie(id: UUID().uuidString, name: "Start-up", thumbnailURL: URL(string: "https://picsum.photos/200/308")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers)
let exampleMovie11 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/307")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers)
let exampleMovie12 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/306")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, moreLikeThisMovies: [], creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", trailerList: exampleTrailers)

var exampleMovies: [Movie] {
    return [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6].shuffled()
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailURL: exampleImageURL)
let exampleTrailer2 = Trailer(name: "Season 4 Trailer", videoURL: exampleVideoURL, thumbnailURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "Season 5 Trailer", videoURL: exampleVideoURL, thumbnailURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1,exampleTrailer2,exampleTrailer3]

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Ending", description: "Six months after the disappearence, the police form a task. In 2062, Jones learns that most of winden in oadpfidiew", season: 2, episode: 1)

let exampleVideoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

let episode1 = Episode(name: "Beginnings and Endings",
                         season: 1,
                         episodeNumber: 1,
                         thumbnailImageURLString: "https://picsum.photos/300/112",
                         description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                         length: 53,
                         videoURL: exampleVideoURL)
let episode2 = Episode(name: "Dark Matter",
                         season: 1,
                         episodeNumber: 2,
                         thumbnailImageURLString: "https://picsum.photos/300/111",
                         description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                         length: 54,
                         videoURL: exampleVideoURL)
let episode3 = Episode(name: "Ghosts",
                         season: 1,
                         episodeNumber: 3,
                         thumbnailImageURLString: "https://picsum.photos/300/110",
                         description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                         length: 56,
                         videoURL: exampleVideoURL)

let episode4 = Episode(name: "Beginnings and Endings",
                         season: 2,
                         episodeNumber: 1,
                         thumbnailImageURLString: "https://picsum.photos/300/109",
                         description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                         length: 53,
                         videoURL: exampleVideoURL)
let episode5 = Episode(name: "Dark Matter",
                         season: 2,
                         episodeNumber: 2,
                         thumbnailImageURLString: "https://picsum.photos/300/108",
                         description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                         length: 54,
                         videoURL: exampleVideoURL)
let episode6 = Episode(name: "Ghosts",
                         season: 2,
                         episodeNumber: 3,
                         thumbnailImageURLString: "https://picsum.photos/300/107",
                         description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                         length: 56,
                         videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]

extension LinearGradient {
    static let blackOpacityGraident = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
