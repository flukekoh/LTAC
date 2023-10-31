//
//  TeamModel.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import Foundation

struct TeamModel {
    let name: String
}

extension TeamModel {
    static let rlc = TeamModel(name: "RLC Racing Team")
    static let toysport = TeamModel(name: "Toysport")
    static let privateer = TeamModel(name: "Личный зачет")
    static let teamrs = TeamModel(name: "Team-RS")
    static let amkc = TeamModel(name: "AMKC Racing Team")
}
