//
//  PageControl.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 22.12.23.
//

import SwiftUI

struct PageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<numberOfPages, id: \.self) { index in
                Circle()
                    .fill(Color.black)
                    .frame(width: 7, height: 7)
                    .opacity(index == currentPage ? 1.0 : 0.2 / Double(index))
                    .cornerRadius(100)
            }
        }
        .frame(width: 55, height: 17)
        .background(Color.white)
        .cornerRadius(5)
    }
}
