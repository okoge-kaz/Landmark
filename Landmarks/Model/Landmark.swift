//
//  Landmark.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/16.
//

import Foundation

struct Landmark: Decodable {
    
    let id: Int
    let name: String
    let category: String
    let city: String
    let state: String
    let isFavorite: Bool
    let isFeatured: Bool
    let park: String
    let description: String
    let imageName: String
    let coordinates: Coordinate
}

struct Coordinate: Decodable {
    
    let longitude: Double
    let latitude: Double
    
}
