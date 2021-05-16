//
//  ModelData.swift
//  Landmarks
//
//  Created by fujii kazuki on 2021/05/16.
//

import Foundation

// Swiftのfuctionについて

func load() -> [Landmark]{
    print("load")
    
    let fileUrl = Bundle.main.url(forResource: "landmarkData", withExtension: "json")!// 強制アンラッピングは怖いよ
    // これは、同じ階層のlandmarkDataというリソースのフィル名json
    // ! をつけたのは、もしかしたらNull かもしれないので
    do {
        let data = try Data(contentsOf: fileUrl)
        let str = String(data: data, encoding: .utf8)!
        
        let jsonDecoder = JSONDecoder()
        let landmarks = try jsonDecoder.decode([Landmark].self, from: data)
        
        // 上の decodeで Landmark型でデコードするよとしている。 from: data これはjsonからということ
        return landmarks
        //        print(landmarks.count)
//        print(landmarks[0].id)
//        print(landmarks[2].name)
        // swiftは型安全なので、Int型にnullは入れられないし、もし入れたいなら、 Int?とかする
        // if let unwrappedI = i {}とかにすると、iがちゃんとIntだったらこのif文のなかに入れる
        // guard let unwrappedI = i else とか
        
        // 強制アンラッピング
        // let result = i! + j これは、iがnilでないと仮定して計算しているので、ここにnilがあるとクラッシュする
        // command + /  = でコメントアウト
        
    } catch{
        print(error)
        return []
        // error文のときも
    }
}
