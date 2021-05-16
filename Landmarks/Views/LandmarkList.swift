//
//  LandmarkList.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        LandmarkRow()
                    }
                )
                // 構造体を単に、
                // LandmarkRow()は、LandmarkRow.swiftからとってきている?
                // destinationがContentView()になっているので、遷移先がContentView.swiftになっている
                
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        LandmarkRow()
                    }
                )
                
            }
            .navigationTitle("Landmarks")
            //.navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

// 以下の文は、Preview画面を表示させるためのもの

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
