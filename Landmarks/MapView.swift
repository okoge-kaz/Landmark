//
//  MapView.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/09.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 35.6048056, longitude: 139.6839279),
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        // 小さい方が拡大
    )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
