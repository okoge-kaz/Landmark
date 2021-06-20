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
                    destination: ContentView(
                        landmark: Landmark(
                        id: 1,
                        name: "Turtle Rock",
                        category: "Rivers",
                        city: "Twentynine Palms",
                        state: "California",
                        isFavorite: true,
                        isFeatured: true,
                        park: "Joshua Tree National Park",
                        description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.",
                            imageName: "turtlerock", coordinates: Coordinate(longitude: -116.166868,
                                                                        latitude: 34.011286)
                    )),
                    label: {
                        LandmarkRow(landmark: Landmark(
                            id: 1,
                            name: "Turtle Rock",
                            category: "Rivers",
                            city: "Twentynine Palms",
                            state: "California",
                            isFavorite: true,
                            isFeatured: true,
                            park: "Joshua Tree National Park",
                            description: "",
                            imageName: "turtlerock", coordinates: Coordinate(longitude: -116.166868,
                                                                            latitude: 34.011286)
                        ))
                    }
                )
                
                NavigationLink(
                    destination: ContentView(
                        landmark: Landmark(
                        id: 2,
                        name: "Silver Salmon Creek",
                        category: "Lakes",
                        city: "Port Alsworth",
                        state: "Alaska",
                        isFavorite: false,
                        isFeatured: false,
                        park: "Lake Clark National Park and Preserve",
                        description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.",
                        imageName: "silversalmoncreek", coordinates: Coordinate(longitude: -152.665167, latitude: 59.980167)
                    )),
                    label: {
                        LandmarkRow(landmark: Landmark(
                            id: 2,
                            name: "Silver Salmon Creek",
                            category: "Lakes",
                            city: "Port Alsworth",
                            state: "Alaska",
                            isFavorite: false,
                            isFeatured: false,
                            park: "Lake Clark National Park and Preserve",
                            description: "",
                            imageName: "silversalmoncreek", coordinates: Coordinate(longitude: -152.665167, latitude: 59.980167)
                        ))
                    }
                )
                
            }
            .navigationTitle("Landmarks")
        }
        
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
