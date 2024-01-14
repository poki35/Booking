//
//  Request.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 12.01.24.
//

import SwiftUI

struct Requests {
    
    struct MainHotelResponse: Decodable {
        var name: String
        var adress: String
        var minimal_price: Int
        var price_for_it: String
        var rating: Int
        var rating_name: String
        var image_urls: [String]
        var about_the_hotel: MainHotelResponseAboutTheHotel
    }
    
        struct MainHotelResponseAboutTheHotel: Decodable {
            var description: String
            var peculiarities: [String]
        }
    
    struct RoomChooseResponse: Decodable {
        var rooms: [RoomResponse]
    }
    
    struct RoomResponse: Decodable {
        var id: Int
        var name: String
        var price: Int
        var price_per: String
        var peculiarities: [String]
        var image_urls: [String]
    }
    
    struct ReservationRoomResponse: Decodable {
        var hotel_name: String
        var hotel_adress: String
        var horating: Int
        var rating_name: String
        var departure: String
        var arrival_country: String
        var tour_date_start: String
        var tour_date_stop: String
        var number_of_nights: Int
        var room: String
        var nutrition: String
        var tour_price: Int
        var fuel_charge: Int
        var service_charge: Int
    }
}

#Preview {
    Request()
}
