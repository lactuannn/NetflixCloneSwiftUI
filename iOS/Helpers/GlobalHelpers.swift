//
//  GlobalHelpers.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 15/05/2021.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Vincenzo", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Sci-fi TV","Exciting", "Dystopian", "K-Drama"], year: 2020, rating: "TV-MA", numberOfSeasons: 2)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "The A-Team", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Start-up", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Sci-fi TV","Exciting", "Dystopian"], year: 2020, rating: "TV-MA", numberOfSeasons: 2)

let exampleMovies = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5]


extension LinearGradient {
    static let blackOpacityGraident = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
