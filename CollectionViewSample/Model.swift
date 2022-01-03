//
//  Model.swift
//  CollectionViewSample
//
//  Created by 山田　天星 on 2022/01/03.
//

import Foundation

struct Model {
    let title: String
    let subTitle: String

    static func createModels() -> [Model] {
        return [
            Model(title: "AAAAAAAAAA", subTitle: "aaaaaaaaaa"),
            Model(title: "BBBBBBBBBB", subTitle: "bbbbbbbbbb"),
            Model(title: "CCCCCCCCCC", subTitle: "cccccccccc"),
            Model(title: "DDDDDDDDDD", subTitle: "dddddddddd"),
            Model(title: "EEEEEEEEEE", subTitle: "eeeeeeeeee"),
            Model(title: "FFFFFFFFFF", subTitle: "ffffffffff"),
            Model(title: "GGGGGGGGGG", subTitle: "gggggggggg"),
            Model(title: "HHHHHHHHHH", subTitle: "hhhhhhhhhh"),
            Model(title: "IIIIIIIIII", subTitle: "iiiiiiiiii"),
            Model(title: "JJJJJJJJJJ", subTitle: "jjjjjjjjjj"),
            Model(title: "KKKKKKKKKK", subTitle: "kkkkkkkkkk"),
            Model(title: "LLLLLLLLLL", subTitle: "llllllllll"),
            Model(title: "MMMMMMMMMM", subTitle: "mmmmmmmmmm")
        ]
    }
}
