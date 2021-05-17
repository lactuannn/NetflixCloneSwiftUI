//
//  Trailer.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 5/17/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    
    var id = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailURL: URL
}
