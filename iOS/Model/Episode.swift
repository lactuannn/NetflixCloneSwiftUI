//
//  Episode.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 16/05/2021.
//

import Foundation

struct Episode: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
