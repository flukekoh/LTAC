//
//  PilotModel.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import Foundation

struct PilotModel {
    let name: String
    let surname: String
    let city: String
}

extension PilotModel {
    static let pilot1 = PilotModel(name: "Александр", surname: "Прянишников", city: "Москва")
    static let pilot2 = PilotModel(name: "Александр", surname: "Рязанов", city: "Москва")
    static let pilot3 = PilotModel(name: "Арсений", surname: "Серегин", city: "Москва")
    static let pilot4 = PilotModel(name: "Кирилл", surname: "Адельфинский", city: "Москва")
    static let pilot5 = PilotModel(name: "Борис", surname: "Канин", city: "Москва")
}
