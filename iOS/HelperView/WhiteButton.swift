//
//  WhiteButton.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 15/05/2021.
//

import SwiftUI

struct WhiteButton: View {
    
    var text: String
    var imageName: String
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
            .foregroundColor(.black)
            .padding(.vertical, 6)
            .background(Color.white)
            .cornerRadius(3)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            WhiteButton(text: "Play", imageName: "play.fill", action: {
                
            })
        }
    }
}
