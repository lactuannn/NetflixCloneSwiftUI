//
//  EpisodeView.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 5/17/21.
//

import SwiftUI

struct EpisodeView: View {
    
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        
        VStack(spacing: 14) {
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                
                Spacer()
            }
            
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    HStack {
                        VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                            .frame(width: 120, height: 70)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text(episode.episodeInfoDisplay)
                                .font(.system(size: 16))
                            Text(episode.episodeLength)
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                    }
//                    .padding(.trailing, 10)
                    
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.bottom, 20)
            }
            
            Spacer()
        }
        .padding(.horizontal, 2)
        .foregroundColor(.white)
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisodeView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
