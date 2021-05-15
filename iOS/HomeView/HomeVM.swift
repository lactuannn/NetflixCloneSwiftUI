//
//  HomeVM.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 15/05/2021.
//

import Foundation

class HomeVM: ObservableObject {
    
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0) })
    }
    
    public func getMovies(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Upcoming"] = exampleMovies.shuffled()
        movies["New releases"] = exampleMovies.shuffled()
        movies["Upcoming"] = exampleMovies.shuffled()
        movies["Watch it again"] = exampleMovies.shuffled()
//        movies["Upcoming"] = exampleMovies.shuffled()
    }
}
