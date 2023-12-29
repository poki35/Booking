//
//  Buttons.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 22.12.23.
//

import SwiftUI

struct ActionButtonView: View {
    var action: () -> Void
    var buttonText: String

    var body: some View {
        Button(action: {
            action()
        }) {
            Text(buttonText)
                .foregroundColor(.white)
                .frame(width: 343, height: 48, alignment: .center)
                .background(Color.blue)
                .cornerRadius(15)
                .padding()
        }
    }
}

struct NavBackButton: View {
    let dismiss: DismissAction
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image("back")
        }
    }
}
