//
//  CicleImage.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/09.
//

import SwiftUI

struct CircleImage: View {
    let imgaeName: String
    
    var body: some View {
        Image(imgaeName)
            .resizable()
            .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imgaeName: "turtlerock")
    }
}
