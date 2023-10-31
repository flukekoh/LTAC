//
//  TyreSizeModel.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import Foundation

struct TyreSizeModel {
    let diameter: Int
    let width: Int
    let profile: Int
}

extension TyreSizeModel {
    static let tyre195_50_15 = TyreSizeModel(diameter: 15, width: 195, profile: 50)
    static let tyre195_45_15 = TyreSizeModel(diameter: 15, width: 195, profile: 45)
}
