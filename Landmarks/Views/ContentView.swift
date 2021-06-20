//
//  ContentView.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/09.
//
import SwiftUI

struct ContentView: View {
    let landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinates: landmark.coordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(imgaeName: landmark.imageName)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack {
                    Text(landmark.city)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.category)
                        .font(.subheadline)
                }
                
                Divider()
                
                HStack {
                    Text("details")
                        .font(.title2)
                    Spacer()
                    Text(landmark.park)
                        .font(.subheadline)
                }
                
                
                Text(landmark.description)
                    .font(.subheadline)
            Spacer()
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: Landmark(
            id: 1,
            name: "Turtle Rock",
            category: "Rivers",
            city: "Twentynine Palms",
            state: "California",
            isFavorite: true,
            isFeatured: true,
            park: "Joshua Tree National Park",
            description: "",
            imageName: "turtlerock",
            coordinates: Coordinate(
                    longitude: -116.166868,
                    latitude: 34.011286)
        ))

    }
}
