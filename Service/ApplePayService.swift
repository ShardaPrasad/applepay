//
//  ApplePayService.swift
//  ApplePay
//
//  Created by Sharda Prasad on 10/01/26.
//

import Foundation
import PassKit

final class ApplePayService {

    func canMakePayments() -> Bool {
        PKPaymentAuthorizationViewController.canMakePayments()
    }

    func paymentRequest(amount: Decimal) -> PKPaymentRequest {
        let request = PKPaymentRequest()
        request.merchantIdentifier = "merchant.com.yourapp.pay"
        request.supportedNetworks = [.visa, .masterCard, .amex]
        request.merchantCapabilities = .capability3DS
        request.countryCode = "IN"
        request.currencyCode = "INR"

        request.paymentSummaryItems = [
            PKPaymentSummaryItem(
                label: "Total",
                amount: NSDecimalNumber(decimal: amount)
            )
        ]
        return request
    }
}
