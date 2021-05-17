//
//  HomeView.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 15/05/2021.
//

import SwiftUI

struct HomeView: View {
    
    var vm: HomeVM = HomeVM()
    
    var screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            //Main Vstack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopHomeButtons()
                    
                    TopMoviePreview(movie: exampleMovie2)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
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
            
            //
            
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeOut)
                    .transition(.opacity)
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopHomeButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
