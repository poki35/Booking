//
//  Localizable.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 22.12.23.
//

import SwiftUI

enum Localizable: String {
    case hotel = "HOTEL"
    case roomSelect = "ROOM_SELECT"
    case perfect = "PERFECT"
    case hotelName = "HOTEL_NAME"
    case location = "LOCATION"
    case price = "PRICE"
    case perTour = "PER_TOUR"
    case aboutHotel = "ABOUT_HOTEL"
    case hotelDescription = "HOTEL_DECRIPTION"
    case comforts = "COMFORTS"
    case whatsOn = "WHATS_ON"
    case whatsLeftOut = "WHATS_LEFT_OUT"
    case essentials = "ESSENTIALS"
    case thirdLine = "THIRD_LINE"
    case wifi = "WIFI"
    case kmToAirport = "KM_TO_AIRPORT"
    case kmToBeach = "KM_TO_BEACH"
    
}

extension Localizable {
    var localized: String {
        return NSLocalizedString(self.rawValue, comment: "")
    }
}
