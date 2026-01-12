//
//  CheckoutView.swift
//  ApplePay
//
//  Created by Sharda Prasad on 10/01/26.
//

import Foundation
import SwiftUI

struct CheckoutView: View {

    @StateObject private var viewModel = ApplePayViewModel()

    var body: some View {
        VStack(spacing: 24) {
            Text("₹499.00")
                .font(.largeTitle)
                .bold()

            if viewModel.isApplePayAvailable {
                ApplePayButton {
                    viewModel.startPayment(amount: 499)
                }
                .frame(height: 50)
            } else {
                Text("Apple Pay not available")
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}


extension UIApplication {
    var topMostViewController: UIViewController? {
        connectedScenes
            .compactMap { ($0 as? UIWindowScene)?.keyWindow }
            .first?
            .rootViewController
    }
}
