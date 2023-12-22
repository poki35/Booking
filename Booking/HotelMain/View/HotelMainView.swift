//
//  HotelMainView.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 21.12.23.
//

import Foundation
import SwiftUI

struct HotelMainView: View {
    @StateObject private var viewModel = HotelViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                mainHotel
                    .cornerRadius(10)
                    .padding(.bottom, -28)
                aboutHotel
                    .cornerRadius(10)
            }
            .navigationTitle(Localizable.hotel.localized)
            .font(.customFont(size: 18))
            .navigationBarTitleDisplayMode(.inline)
        }
        ActionButtonView(action: {
            print("Go check room!")
        }, buttonText: Localizable.roomSelect.localized)
    }
    
    var mainHotel: some View {
        ZStack {
            VStack {
                ImageSlider(images: viewModel.images.map { $0.rawValue }, currentIndex: $viewModel.currentIndex)
                    .cornerRadius(10)
                PageControl(numberOfPages: viewModel.images.count, currentPage: $viewModel.currentIndex)
                    .padding(.vertical, -35)
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
                    HStack {
                        Text(Localizable.price.localized)
                            .font(.customFont(size: 30, weight: .semibold))
                        Text(Localizable.perTour.localized)
                            .font(.customFont(size: 16))
                            .foregroundColor(Color.customGray)
                            .padding(.top, 11)
                    }
                }
                .padding(.trailing, 20)
            }
        }
        .frame(height: 450)
    }
    
    var aboutHotel: some View {
        ZStack {
            VStack {
                Text(Localizable.aboutHotel.localized)
                    .font(.customFont(size: 22, weight: .medium))
                    .padding(.trailing, 250)
                VStack(alignment: .leading) {
                    HStack {
                        HStack {
                            Text(Localizable.thirdLine.localized)
                                .font(.customFont(size: 16, weight: .medium))
                                .foregroundColor(Color.customGray)
                                .padding(.horizontal, -6)
                                .padding(.vertical, 5)
                        }
                        .frame(width: 82, height: 24)
                        .cornerRadius(5)
                        HStack {
                            Text(Localizable.wifi.localized)
                                .font(.customFont(size: 16, weight: .medium))
                                .foregroundColor(Color.customGray)
                                .padding(.horizontal, -6)
                                .padding(.vertical, 5)
                        }
                        .frame(width: 168, height: 24)
                        .cornerRadius(5)
                    }
                    HStack {
                        HStack {
                            Text(Localizable.kmToAirport.localized)
                                .font(.customFont(size: 16, weight: .medium))
                                .foregroundColor(Color.customGray)
                                .padding(.horizontal, -6)
                                .padding(.vertical, 5)
                        }
                        .frame(width: 155, height: 24)
                        .cornerRadius(5)
                        HStack {
                            Text(Localizable.kmToBeach.localized)
                                .font(.customFont(size: 16, weight: .medium))
                                .foregroundColor(Color.customGray)
                                .padding(.horizontal, -6)
                                .padding(.vertical, 5)
                        }
                        .frame(width: 112, height: 24)
                        .cornerRadius(5)
                    }
                }
                .padding(.trailing, 75)
                .padding([.top, .bottom], 5)
                Text(Localizable.hotelDescription.localized)
                    .font(.customFont(size: 16))
                    .frame(width: 343, alignment: .topLeading)
                VStack {
                    HStack {
                        Image("happy")
                            .padding(.trailing, 7)
                        VStack(alignment: .leading) {
                            Text(Localizable.comforts.localized)
                                .font(.customFont(size: 16, weight: .medium))
                            Text(Localizable.essentials.localized)
                                .font(.customFont(size: 14, weight: .medium))
                                .foregroundColor(Color.customGray)
                        }
                        .padding(.trailing, 125)
                        Image("next")
                    }
                    Divider()
                    HStack {
                        Image("correct")
                            .padding(.trailing, 7)
                        VStack(alignment: .leading) {
                            Text(Localizable.whatsOn.localized)
                                .font(.customFont(size: 16, weight: .medium))
                            Text(Localizable.essentials.localized)
                                .font(.customFont(size: 14, weight: .medium))
                                .foregroundColor(Color.customGray)
                        }
                        .padding(.trailing, 125)
                        Image("next")
                    }
                    Divider()
                    HStack {
                        Image("close")
                            .padding(.trailing, 7)
                        VStack(alignment: .leading) {
                            Text(Localizable.whatsLeftOut.localized)
                                .font(.customFont(size: 16, weight: .medium))
                            Text(Localizable.essentials.localized)
                                .font(.customFont(size: 14, weight: .medium))
                                .foregroundColor(Color.customGray)
                        }
                        .padding(.trailing, 125)
                        Image("next")
                    }
                }
                .frame(width: 343, height: 184)
                .background(Color.customBackground)
                .cornerRadius(15)
                .padding(.top, 16)
            }
        }
        .frame(width: 395, height: 478)
    }
}
