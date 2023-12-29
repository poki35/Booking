//
//  HotelPaidView.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 26.12.23.
//

import SwiftUI

struct HotelPaidView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Circle()
                .fill(Color.customBackground)
                .frame(width: 100, height: 100)
                .overlay(
                    Image("finish")
                )
            Text("Ваш заказ принят в работу")
                .font(Font.customFont(size: 22, weight: .medium))
                .frame(width: 343, alignment: .top)
                .padding(.top, 25)
            Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                .font(Font.customFont(size: 16))
                .foregroundColor(Color.customGray)
                .frame(width: 329, alignment: .top)
                .multilineTextAlignment(.center)
                .padding(.top, 15)
        }
        .navigationTitle("Заказ оплачен")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
    }
}
