//
//  ModelData.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/16.
//

import Foundation

func load() -> [Landmark] {
    print("load")
    
    let fileUrl = Bundle.main.url(forResource: "landmarkData", withExtension: "json")!
    
    do {
        let data = try Data(contentsOf: fileUrl)
        let str = String(data: data, encoding: .utf8)!
        
        let jsonDecoder = JSONDecoder()
        let landmarks = try jsonDecoder.decode([Landmark].self, from: data)
        
        return landmarks
        
    } catch {
        print(error)
        return []
    }
}
