//
//  ResultViewModel.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import Foundation

struct ResultViewModel {
    let racingClass: RacingClass
    let event: CalendarEventModel
    let place: Int
    let pilotNumber: Int
    let pilot: PilotModel
    let racingCar: CarModel
    let tyreType: TyreTypeModel
    let tyreSize: TyreSizeModel
    let bestTime: String
    let team: TeamModel
    let scoredPoints: Int
}

extension ResultViewModel {
    static let mockedResults: [ResultViewModel] = [
    ResultViewModel(
        racingClass: .stock,
        event: .event1,
        place: 1,
        pilotNumber: 61,
        pilot: .pilot1,
        racingCar: .lada61,
        tyreType: .tigarHP,
        tyreSize: .tyre195_50_15,
        bestTime: "0:59.563",
        team: .rlc,
        scoredPoints: 100),
    ResultViewModel(
        racingClass: .stock,
        event: .event1,
        place: 2,
        pilotNumber: 186,
        pilot: .pilot2,
        racingCar: .lada186,
        tyreType: .sailun,
        tyreSize: .tyre195_45_15,
        bestTime: "1:00.049",
        team: .toysport,
        scoredPoints: 91),
    ResultViewModel(
        racingClass: .stock,
        event: .event1,
        place: 3,
        pilotNumber: 170,
        pilot: .pilot3,
        racingCar: .lada170,
        tyreType: .michelin,
        tyreSize: .tyre195_50_15,
        bestTime: "1:00.206",
        team: .privateer,
        scoredPoints: 84),
    ResultViewModel(
        racingClass: .stock,
        event: .event1,
        place: 4,
        pilotNumber: 8,
        pilot: .pilot4,
        racingCar: .lada8,
        tyreType: .michelin,
        tyreSize: .tyre195_50_15,
        bestTime: "1:00.424",
        team: .teamrs,
        scoredPoints: 78),
    ResultViewModel(
        racingClass: .stock,
        event: .event1,
        place: 5,
        pilotNumber: 314,
        pilot: .pilot5,
        racingCar: .lada314,
        tyreType: .michelin,
        tyreSize: .tyre195_50_15,
        bestTime: "1:00.632",
        team: .amkc,
        scoredPoints: 73)
    ]
}

