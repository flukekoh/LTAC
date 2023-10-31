//
//  CalendarEventModel.swift
//  LTAC
//
//  Created by Артем Кохан on 31.10.2023.
//

import Foundation

struct CalendarEventModel {
    let eventNumber: Int
    let eventDate: Date
    let eventTrack: RacingTrackModel
    let trackConfiguration: String

    static let event1 = CalendarEventModel(
        eventNumber: 1,
        eventDate: Date(),
        eventTrack: .admRaceway,
        trackConfiguration: RacingTrackModel.admRaceway.configurations.first ?? ""
    )
    
    static let event2 = CalendarEventModel(
        eventNumber: 2,
        eventDate: Date(),
        eventTrack: .smolenskRing,
        trackConfiguration: RacingTrackModel.smolenskRing.configurations.first ?? ""
    )
    
    static let event3 = CalendarEventModel(
        eventNumber: 3,
        eventDate: Date(),
        eventTrack: .admRaceway,
        trackConfiguration: RacingTrackModel.admRaceway.configurations[1] ?? ""
    )
    
    static let event4 = CalendarEventModel(
        eventNumber: 4,
        eventDate: Date(),
        eventTrack: .nRing,
        trackConfiguration: RacingTrackModel.nRing.configurations.first ?? ""
    )
    
    static let event5 = CalendarEventModel(
        eventNumber: 5,
        eventDate: Date(),
        eventTrack: .admRaceway,
        trackConfiguration: RacingTrackModel.admRaceway.configurations.first ?? ""
    )
    
    static let event6 = CalendarEventModel(
        eventNumber: 6,
        eventDate: Date(),
        eventTrack: .atron,
        trackConfiguration: RacingTrackModel.atron.configurations.first ?? ""
    )
    
    static let currentYearCalendar: [CalendarEventModel] = [
        event1,
        event2,
        event3,
        event4,
        event5,
        event6,
    ]
}
