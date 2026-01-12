//
//  ApplePayViewModel.swift
//  ApplePay
//
//  Created by Sharda Prasad on 10/01/26.
//

import SwiftUI
import PassKit
import Combine

final class ApplePayViewModel: NSObject, ObservableObject, PKPaymentAuthorizationViewControllerDelegate {

    @Published var isApplePayAvailable = false

    private let service = ApplePayService()

    override init() {
        super.init()
        isApplePayAvailable = service.canMakePayments()
    }

    func startPayment(amount: Decimal) {
        let request = service.paymentRequest(amount: amount)

        guard let controller =
                PKPaymentAuthorizationViewController(paymentRequest: request)
        else { return }

        controller.delegate = self
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.keyWindow,
           let root = window.rootViewController {
            root.present(controller, animated: true)
        }
    }

    // MARK: - PKPaymentAuthorizationViewControllerDelegate
    func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController) {
        controller.dismiss(animated: true)
    }

    func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, handler completion: @escaping (PKPaymentAuthorizationResult) -> Void) {
        // TODO: Validate payment with your backend, then call completion with appropriate status.
        completion(PKPaymentAuthorizationResult(status: .success, errors: nil))
    }
}

private extension UIWindowScene {
    var keyWindow: UIWindow? {
        return self.windows.first { $0.isKeyWindow }
    }
}
