//
//  CarModel.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import UIKit

struct CarModel {
    let carBrand: String
    let carType: CarTypeModel
    let carColor: UIColor
}

extension CarModel {
    static let lada61 = CarModel(carBrand: "ВАЗ", carType: .lada2106, carColor: .red)
}
