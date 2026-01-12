//
//  ApplePayButton.swift
//  ApplePay
//
//  Created by Sharda Prasad on 10/01/26.
//

import Foundation
import SwiftUI
import PassKit

struct ApplePayButton: UIViewRepresentable {
    let action: () -> Void

    func makeUIView(context: Context) -> PKPaymentButton {
        let button = PKPaymentButton(
            paymentButtonType: .buy,
            paymentButtonStyle: .black
        )
        button.addTarget(
            context.coordinator,
            action: #selector(Coordinator.tap),
            for: .touchUpInside
        )
        return button
    }

    func updateUIView(_ uiView: PKPaymentButton, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(action: action)
    }

    final class Coordinator {
        let action: () -> Void
        init(action: @escaping () -> Void) {
            self.action = action
        }

        @objc func tap() {
            action()
        }
    }
}
