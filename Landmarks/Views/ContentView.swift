//
//  ContentView.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/09.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("東工大図書館")
                    .font(.title)

                HStack {
                    Text("東京都目黒区大岡山")
                        .font(.subheadline)
                    Spacer()
                    Text("東京工業大学")
                        .font(.subheadline)
                }

                Divider()

                Text("詳細情報")
                    .font(.title2)
                HStack {
                    Text("建築主")
                        .font(.subheadline)
                    Spacer()
                    Text("国立大学法人 東京工業大学")
                        .font(.subheadline)
                }
                HStack {
                    Text("建築面積")
                        .font(.subheadline)
                    Spacer()
                    Text("1,993.63㎡")
                        .font(.subheadline)
                }
                HStack {
                    Text("延床面積")
                        .font(.subheadline)
                    Spacer()
                    Text("8,587.88㎡")
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
