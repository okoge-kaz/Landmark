//
//  MapView.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/09.
//

import SwiftUI
import MapKit

struct MapView: View {
    let coordinates: Coordinate
    
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(
                        latitude: coordinates.latitude,
                        longitude: coordinates.longitude
                    ),
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.02,
                        longitudeDelta: 0.02
                    )
                )
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            coordinates: Coordinate(
                longitude: -152.665167,
                latitude: 59.980167
            )
        )
    }
}
