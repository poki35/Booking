//
//  RoomChooseView.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 27.12.23.
//

import SwiftUI

struct RoomChooseView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var viewModel = RoomChooseVIewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                hotelFirst
                ActionButtonView(action: {
                    print("231")
                }, buttonText: "Выбрать номер")
                Divider()
                    .padding(.bottom, 10)
                hotelSecond
                ActionButtonView(action: {
                    print("231")
                }, buttonText: "Выбрать номер")
            }
        }
    }
    
    var hotelFirst: some View {
        VStack {
            ImageSlider(images: viewModel.images.map { $0.rawValue }, currentIndex: $viewModel.currentIndex)
            PageControl(numberOfPages: viewModel.images.count, currentPage: $viewModel.currentIndex)
                .padding(.vertical, -35)
            Text("Стандартный с видом на бассейн или сад")
                .font(Font.customFont(size: 22, weight: .medium))
            HStack {
                Text("Все включено")
                    .font(.customFont(size: 16, weight: .medium))
                    .foregroundColor(Color.customGray)
                    .padding(.vertical, 5)
                    .padding(.trailing, 8)
                Text("Кондиционер")
                    .font(.customFont(size: 16, weight: .medium))
                    .foregroundColor(Color.customGray)
                    .padding(.vertical, 5)
            }
            .padding(.trailing, 127)
            HStack(spacing: 2) {
                Text("Подробнее о номере")
                    .foregroundColor(Color.customBlue)
                    .padding(.trailing, 10)
                Image("next")
                    .foregroundColor(Color.customBlue)
            }
            .padding(.leading, 10)
            .padding(.trailing, 2)
            .padding(.vertical, 5)
            .frame(height: 29, alignment: .leading)
            .background(Color.customBlue.opacity(0.1))
            .cornerRadius(5)
            .padding(.trailing, 148)
            HStack {
                Text("186 600 ₽")
                    .font(.customFont(size: 30, weight: .semibold))
                Text("за 7 ночей с перелётом")
                    .font(.customFont(size: 16))
                    .foregroundColor(Color.customGray)
                    .padding(.top, 11)
            }
            .padding(.trailing, 25)
        }
        .navigationTitle(Localizable.hotelName.localized)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
    }
    
    var hotelSecond: some View {
        VStack {
            ImageSlider(images: viewModel.images.map { $0.rawValue }, currentIndex: $viewModel.currentIndex)
            PageControl(numberOfPages: viewModel.images.count, currentPage: $viewModel.currentIndex)
                .padding(.vertical, -35)
            Text("Стандартный с видом на бассейн или сад")
                .font(Font.customFont(size: 22, weight: .medium))
            HStack {
                Text("Все включено")
                    .font(.customFont(size: 16, weight: .medium))
                    .foregroundColor(Color.customGray)
                    .padding(.vertical, 5)
                    .padding(.trailing, 8)
                Text("Кондиционер")
                    .font(.customFont(size: 16, weight: .medium))
                    .foregroundColor(Color.customGray)
                    .padding(.vertical, 5)
            }
            .padding(.trailing, 127)
            HStack(spacing: 2) {
                Text("Подробнее о номере")
                    .foregroundColor(Color.customBlue)
                    .padding(.trailing, 10)
                Image("next")
                    .foregroundColor(Color.customBlue)
            }
            .padding(.leading, 10)
            .padding(.trailing, 2)
            .padding(.vertical, 5)
            .frame(height: 29, alignment: .leading)
            .background(Color.customBlue.opacity(0.1))
            .cornerRadius(5)
            .padding(.trailing, 148)
            HStack {
                Text("186 600 ₽")
                    .font(.customFont(size: 30, weight: .semibold))
                Text("за 7 ночей с перелётом")
                    .font(.customFont(size: 16))
                    .foregroundColor(Color.customGray)
                    .padding(.top, 11)
            }
            .padding(.trailing, 25)
        }
        .navigationTitle(Localizable.hotelName.localized)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
    }
    
}
