//
//  CarTypeModel.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import Foundation

struct CarTypeModel {
    let typeName: String
}

extension CarTypeModel {
    static let lada2106 = CarTypeModel(typeName: "2106")
    static let ladaKalina2 = CarTypeModel(typeName: "Калина 2")
    static let ladaKalinaSport = CarTypeModel(typeName: "Калина Спорт")
    static let lada2105 = CarTypeModel(typeName: "2105")
    
}
