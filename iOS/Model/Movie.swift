//
//  Movie.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 15/05/2021.
//

import Foundation


struct Movie:Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
    
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var numberOfSeasonDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
}
