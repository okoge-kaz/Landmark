//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/16.
//

import SwiftUI

struct LandmarkRow: View {
    let landmark: Landmark
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()
        }
    }
}

//// 以下のコードがないと表示がうまくいかない
//struct LandmarkRow_Previews: PreviewProvider {
//    static var previews: some View {
//        LandmarkRow(
//            
//        )
//    }
//}
