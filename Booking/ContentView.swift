//
//  ContentView.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 21.12.23.
//

import SwiftUI

struct ContentView: View {
    @State var openHotelView: Bool
    
    var body: some View {
        VStack {
            Button {
                openHotelView.toggle()
                print("Go to check hotel!")
            } label: {
                Text("Посмотреть отель")
            }
            .fullScreenCover(isPresented: $openHotelView) {
                HotelMainView()
            }
        }
        .padding()
    }
}
