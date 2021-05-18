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
    
    public func getMovies(forCat cat: String, homeRow: HomeTopRow) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ $0.movieType == .movie})
        case .tvShows:
            return (movies[cat] ?? []).filter({ $0.movieType == .tvShow})
        case .myList:
            return movies[cat] ?? []
        }
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
