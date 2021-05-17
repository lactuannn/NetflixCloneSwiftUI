//
//  MoreLikeThis.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 5/17/21.
//

import SwiftUI

struct MoreLikeThis: View {
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        //        ScrollView {
        LazyVGrid(columns: columns) {
            
            ForEach(movies) { movie in
                StandardHomeMovie(movie: movie)
            }
        }
        //        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
