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
    static let lada186 = CarModel(carBrand: "Лада", carType: .lada2106, carColor: .white)
    static let lada170 = CarModel(carBrand: "ВАЗ", carType: .ladaKalina2, carColor: .red)
    static let lada8 = CarModel(carBrand: "ВАЗ", carType: .lada2105, carColor: .white)
    static let lada314 = CarModel(carBrand: "ВАЗ", carType: .ladaKalinaSport, carColor: .green)
}
