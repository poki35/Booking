//
//  ImageSlider.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 22.12.23.
//

import SwiftUI

struct ImageSlider: View {
    var images: [String]
    @Binding var currentIndex: Int
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TabView(selection: $currentIndex) {
                ForEach(0..<images.count, id: \.self) { index in
                    Image(images[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 343, height: 257)
                        .cornerRadius(15)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 257)
            .onAppear {
                UIScrollView.appearance().isPagingEnabled = true
            }
        }
    }
}
