//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/09.
//

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .onAppear {
                    let l = load()
                    print(l)
                }
        }
    }
}
