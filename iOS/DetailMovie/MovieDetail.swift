//
//  MovieDetail.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 15/05/2021.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }
                .padding(.horizontal, 15)
                
                ScrollView(.vertical,showsIndicators: false) {
                    
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInforSubHeadline(movie: movie)
                    }
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie2)
    }
}

struct MovieInforSubHeadline: View {
    
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            Text("MOVIE YEAR")
            
            Text(movie.numberOfSeasonDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
