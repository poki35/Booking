//
//  RoomChooseVIewModel.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 27.12.23.
//

import SwiftUI

class RoomChooseViewModel: ObservableObject {
    @Published var currentIndex = 0
    let images: [HotelImage] = [.main0, .main1, .main2, .main3]
}
