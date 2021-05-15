//
//  SmallVerticalButton.swift
//  NetFlix (iOS)
//
//  Created by Lac Tuan on 15/05/2021.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    var text: String
    
    var isOnImage: String
    var isOffImage: String
    
    var isOn: Bool
    
    var action: () -> Void
    
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: isOn ? isOnImage : isOffImage)
                Text(text)
                    .font(.system(size: 14))
                    .bold()
            }
            .foregroundColor(.white)
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SmallVerticalButton(text: "My List",
                                isOnImage: "checkmark",
                                isOffImage: "plus",
                                isOn: true, action: { print("hehe")})
        }
    }
}
