//
//  ReservationRoomView.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 29.12.23.
//

import SwiftUI

struct ReservationRoomView: View {
    @StateObject private var viewModel = ReservationRoomViewModel()
    @Environment(\.dismiss) var dismiss
    @State private var numberFormatter: NumberFormatter = {
        var nf = NumberFormatter()
        nf.numberStyle = .none
        nf.zeroSymbol = ""
        return nf
    }()
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    shortHotelInfo
                }
                Section {
                    tourInfo
                }
                Section {
                    buyerInfo
                }
                Section {
                    firstTourist
                }
                Section {
                    secondTourist
                }
            }
            .padding(.horizontal, -15)
        }
        .navigationTitle("Бронирование")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var shortHotelInfo: some View {
        VStack {
            ZStack {
                Color.customYellowTint.edgesIgnoringSafeArea(.all)
                HStack {
                    Image("Star")
                    Text(Localizable.perfect.localized)
                        .font(.customFont(size: 15, weight: .medium))
                        .foregroundColor(Color.customYellow)
                        .padding(.horizontal, -6)
                        .padding(.vertical, 5)
                }
            }
            .frame(width: 140, height: 25)
            .cornerRadius(5)
            .padding(.horizontal, -170)
            VStack(alignment: .leading, spacing: 8) {
                Text(Localizable.hotelName.localized)
                    .font(.customFont(size: 22, weight: .medium))
                Text(Localizable.location.localized)
                    .font(.customFont(size: 14, weight: .medium))
                    .foregroundColor(Color.customBlue)
                    .padding(.bottom, 8)
            }
            .padding(.trailing, 20)
        }
    }
    
    var tourInfo: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Вылет из")
                    .foregroundColor(.customGray)
                Text("Санкт-Петербург")
            }
            .font(Font.customFont(size: 16))
            HStack {
                Text("Страна, город")
                    .foregroundColor(.customGray)
                Text("Египет, Хургада")
            }
            .font(Font.customFont(size: 16))
            HStack {
                Text("Даты")
                    .foregroundColor(.customGray)
                Text("19.09.2023 – 27.09.2023")
            }
            .font(Font.customFont(size: 16))
            HStack {
                Text("Кол-во ночей")
                    .foregroundColor(.customGray)
                Text("7 ночей")
            }
            .font(Font.customFont(size: 16))
            HStack {
                Text("Отель")
                    .foregroundColor(.customGray)
                Text("Steigenberger Makadi")
            }
            .font(Font.customFont(size: 16))
            HStack {
                Text("Номер")
                    .foregroundColor(.customGray)
                Text("Стандартный с видом на бассейн или сад")
            }
            .font(Font.customFont(size: 16))
            HStack {
                Text("Питание")
                    .foregroundColor(.customGray)
                Text("Все включено")
            }
            .font(Font.customFont(size: 16))
        }
        .multilineTextAlignment(.leading)
    }
    
    var buyerInfo: some View {
        VStack(alignment: .leading) {
            Text("Информация о покупателе")
                .font(Font.customFont(size: 22, weight: .medium))
                .padding(.bottom, 10)
            TextField("", value: $viewModel.phoneNumber, formatter: numberFormatter)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                .font(Font.customFont(size: 14))
                .foregroundColor(.customGray)
        }
    }
    
    var firstTourist: some View {
        VStack {
            TextField(" Имя", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
        }
    }
    
    var secondTourist: some View {
        VStack {
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
            TextField("", text: $viewModel.email)
                .frame(width: 343, height: 52)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .background(Color.customGrayBackground)
                .cornerRadius(10)
        }
    }
}
