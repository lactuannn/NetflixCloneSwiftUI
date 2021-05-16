//
//  GlobalHelpers.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 15/05/2021.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na")
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Vincenzo", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Sci-fi TV","Exciting", "Dystopian", "K-Drama"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "The A-Team", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na")
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Start-up", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na")
let exampleMovie5 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Watch Season 6 Now", defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na", cast: "Bae Suzy Nam Joo-Hyuk Kim Sun-Ho Kang Han-Na")

let exampleMovies = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5]

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Ending", description: "Six months after the disappearence, the police form a task. In 2062, Jones learns that most of winden in oadpfidiew", season: 2, episode: 1)

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
