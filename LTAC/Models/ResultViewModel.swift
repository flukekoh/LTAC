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
        tyreSize: <#T##TyreSizeModel#>,
        bestTime: <#T##String#>,
        team: <#T##TeamModel#>,
        scoredPoints: <#T##Int#>),
    ResultViewModel(
        racingClass: .stock,
        event: <#T##CalendarEventModel#>,
        place: 2,
        pilotNumber: <#T##Int#>,
        pilot: .pilot2,
        racingCar: <#T##CarModel#>,
        tyreType: <#T##TyreTypeModel#>,
        tyreSize: <#T##TyreSizeModel#>,
        bestTime: <#T##String#>,
        team: <#T##TeamModel#>,
        scoredPoints: <#T##Int#>),
    ResultViewModel(
        racingClass: .stock,
        event: <#T##CalendarEventModel#>,
        place: 3,
        pilotNumber: <#T##Int#>,
        pilot: .pilot3,
        racingCar: <#T##CarModel#>,
        tyreType: <#T##TyreTypeModel#>,
        tyreSize: <#T##TyreSizeModel#>,
        bestTime: <#T##String#>,
        team: <#T##TeamModel#>,
        scoredPoints: <#T##Int#>),
    ResultViewModel(
        racingClass: .stock,
        event: <#T##CalendarEventModel#>,
        place: 4,
        pilotNumber: <#T##Int#>,
        pilot: .pilot4,
        racingCar: <#T##CarModel#>,
        tyreType: <#T##TyreTypeModel#>,
        tyreSize: <#T##TyreSizeModel#>,
        bestTime: <#T##String#>,
        team: <#T##TeamModel#>,
        scoredPoints: <#T##Int#>),
    ResultViewModel(
        racingClass: .stock,
        event: <#T##CalendarEventModel#>,
        place: 5,
        pilotNumber: <#T##Int#>,
        pilot: .pilot5,
        racingCar: <#T##CarModel#>,
        tyreType: <#T##TyreTypeModel#>,
        tyreSize: <#T##TyreSizeModel#>,
        bestTime: <#T##String#>,
        team: <#T##TeamModel#>,
        scoredPoints: <#T##Int#>)
    ]
}

#    Пилот    Город    Автомобиль    Шины    Команда    Лучшее время    Очки
1    61
Прянишников Александр
Москва
ВАЗ 2106
TIGAR High Performance 195/50 R15    RLC Racing Team    0:59.563    100
2    186
Рязанов Александр
Москва
ВАЗ 2106
SAILUN Atrezzo ZSR 195/45 R15    Toysport    1:00.049    91
3    170
Серегин Арсений
Москва
Лада Калина 2
MICHELIN Pilot Sport 3 195/50 R15    личный зачёт    1:00.206    84
4    8
Адельфинский Кирилл
Москва
ВАЗ 2105
MICHELIN Pilot Sport 3 195/50 R15    Team-RS    1:00.424    78
5    314

Москва
Лада Калина Спорт
MICHELIN Pilot Sport 3 195/50 R15    AMKC Racing Team    1:00.632    73
