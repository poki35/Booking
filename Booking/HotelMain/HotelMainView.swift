//
//  HotelMainView.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 21.12.23.
//

import Foundation
import SwiftUI

struct HotelMainView: View {
    @State private var currentIndex = 0
    private let images = ["MainHotelPic0", "MainHotelPic1", "MainHotelPic2", "MainHotelPic3"]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Отель")
                TabView(selection: $currentIndex) {
                    ForEach(0..<images.count, id: \.self) { index in
                        Image(images[index])
                            .frame(width: 343, height: 257)
                            .cornerRadius(15)
                            .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .frame(height: 257)
                
                ZStack {
                    HStack(spacing: 5) {
                        ForEach(0..<images.count, id: \.self) { index in
                            Circle()
                                .fill(Color.black)
                                .frame(width: 7, height: 7)
                                .opacity(index == currentIndex ? 1.0 : 0.2 / Double(index))
                                .cornerRadius(100)
                        }
                    }
                    .frame(width: 55, height: 17)
                    .background(Color.white)
                    .cornerRadius(5)
                }
                ZStack {
                    Color.yellow.edgesIgnoringSafeArea(.all)
                        .opacity(0.2)
                    HStack {
                        Image("Star")
                        Text("5 Превосходно")
                            .font(
                                Font.custom("SF Pro Display", size: 15)
                                    .weight(.medium))
                            .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
                            .padding(.horizontal, -6)
                            .padding(.vertical, 5)
                    }
                }
                .frame(width: 140, height: 25)
                .cornerRadius(5)
                .padding(.horizontal, -170)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Steigenberger Makadi")
                        .font(Font.custom("SF Pro Display", size: 22).weight(.medium))
                    Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                        .font(Font.custom("SF Pro Display", size: 14).weight(.medium))
                        .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                        .padding(.bottom, 8)
                    
                    HStack {
                        Text("от 134 673 ₽")
                            .font(Font.custom("SF Pro Display", size: 30).weight(.semibold))
                        Text("за тур с перелётом")
                            .font(Font.custom("SF P ro Display", size: 16))
                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                            .padding(.top, 11)
                    }
                }
                .padding(.trailing, 20)
            }
        }
        .cornerRadius(10)
    }
}
