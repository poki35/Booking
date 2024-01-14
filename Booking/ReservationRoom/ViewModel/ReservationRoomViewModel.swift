//
//  ReservationRoomViewModel.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 29.12.23.
//

import SwiftUI

final class ReservationRoomViewModel: ObservableObject {
    @Published var phoneNumber: Int = 0
    @Published var email: String = ""
}
