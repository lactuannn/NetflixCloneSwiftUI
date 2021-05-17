//
//  SwiftUIVideoView.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 5/17/21.
//

import SwiftUI
import AVKit

struct SwiftUIVideoView: View {
    var url: URL
    
    var player: AVPlayer {
        AVPlayer(url: url)
    }
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(url: exampleVideoURL)
    }
}
