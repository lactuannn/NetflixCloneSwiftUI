//
//  CustomTabSwitcher.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 16/05/2021.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTab = .episode
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    var movie: Movie
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            // red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            
                            //button
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            })
                            .frame(width: widthForTab(tab), height: 30)
                        }
                    }
                }
            })
            
            //SELECTED VIEW
            switch currentTab {
            case .episode:
                EpisodeView(episodes: movie.episodes ?? [], showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
            case .trailers:
                TrailerList(trailers: movie.trailerList)
            case .more: //Text("Hasdas")
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
        }
        .padding(.leading, 5)
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episode = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(showSeasonPicker: .constant(false) , selectedSeason: .constant(1), movie: exampleMovie1, tabs: [.episode,.trailers,.more])
        }
    }
}
