//
//  HomeStack.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 17/05/2021.
//

import SwiftUI

struct HomeStack: View {
    
    var vm: HomeVM
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                        .padding(.horizontal, 10)
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(vm.getMovies(forCat: category)) { movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 100, height: 200)
                                .padding(.horizontal, 20)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                    }
                }
            }
        }
    }
}
