//
//  TyreTypeModel.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import Foundation

struct TyreTypeModel {
    let make: String
    let name: String
}

extension TyreTypeModel {
    static let tigarHP = TyreTypeModel(make: "Tigar", name: "High Performance")
    static let sailun = TyreTypeModel(make: "Sailun", name: "Atrezzo ZSR")
    static let michelin = TyreTypeModel(make: "Michelin", name: "Pilot Sport 3")
}
