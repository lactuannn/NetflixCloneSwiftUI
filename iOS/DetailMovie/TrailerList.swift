//
//  TrailerList.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 5/17/21.
//

import SwiftUI

struct TrailerList: View {
    
    var trailers: [Trailer]
    
    var body: some View {
        VStack {
            ForEach(trailers) { trailer in
                VStack(alignment: .leading) {
                    VideoPreviewImage(imageURL: trailer.thumbnailURL, videoURL: trailer.videoURL)
                        .frame(maxWidth: UIScreen.main.bounds.width)
                    Text(trailer.name)
                        .font(.headline)
                        .padding(.leading, 10)
                    
                }
                .foregroundColor(.white)
                .padding(.bottom, 10)
            }
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            TrailerList(trailers: exampleTrailers)
        }
    }
}
