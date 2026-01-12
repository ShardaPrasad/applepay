APPLE PAY INTEGRATION README
============================

This document describes how Apple Pay is integrated into the iOS application
using Swift / SwiftUI with an MVVM-ready architecture.

--------------------------------------------------
FEATURES
--------------------------------------------------
- Secure payments using Apple Pay
- Supports debit and credit cards
- Native Apple Pay UI
- Sandbox and production-ready
- Backend payment token support

--------------------------------------------------
REQUIREMENTS
--------------------------------------------------
- macOS with Xcode 14 or later
- iOS 14.0+
- Apple Developer Account
- Physical iPhone device (Apple Pay does not work on Simulator)
- Valid Merchant ID
- Payment processor (Stripe / Razorpay / Custom backend)

--------------------------------------------------
APPLE PAY SETUP
--------------------------------------------------
1. Create a Merchant ID
   Apple Developer Portal → Certificates, IDs & Profiles
   Example:
   merchant.com.yourcompany.appname

2. Enable Apple Pay Capability
   Target → Signing & Capabilities → Add Capability → Apple Pay

3. Add Merchant ID
   Select your Merchant ID in Apple Pay capability

4. Create Payment Processing Certificate
   Used by backend to verify Apple Pay transactions

--------------------------------------------------
SUPPORTED PAYMENT NETWORKS
--------------------------------------------------
- Visa
- MasterCard
- American Express
- Discover

--------------------------------------------------
APPLE PAY FLOW
--------------------------------------------------
1. User taps Apple Pay button
2. Apple Pay sheet is displayed
3. User authenticates using Face ID / Touch ID
4. Encrypted payment token is generated
5. Token is sent to backend server
6. Backend verifies payment
7. Success or failure response is returned

--------------------------------------------------
PROJECT STRUCTURE
--------------------------------------------------
View
 - ApplePayButtonView

ViewModel
 - ApplePayViewModel

Service
 - ApplePayService

Models
 - PaymentRequestModel

--------------------------------------------------
SECURITY NOTES
--------------------------------------------------
- Card details are never shared with the app
- Apple Pay generates encrypted payment tokens
- Payment validation must be done on backend
- Client-side success should never be trusted

--------------------------------------------------
TESTING APPLE PAY
--------------------------------------------------
- Use a physical iPhone device
- Sign in with a Sandbox Apple ID
- Add test cards in Wallet
- Ensure Merchant ID matches bundle identifier

--------------------------------------------------
COMMON ISSUES
--------------------------------------------------
Apple Pay button not visible:
- Device does not support Apple Pay
- Apple Pay capability not enabled

Payment failed:
- Incorrect Merchant ID
- Backend certificate mismatch

--------------------------------------------------
INFO.PLIST (IF REQUIRED)
--------------------------------------------------
NSApplePayUsageDescription
"This app uses Apple Pay for secure payments"

--------------------------------------------------
FUTURE ENHANCEMENTS
--------------------------------------------------
- Stripe or Razorpay integration
- Subscription payments
- Dynamic pricing
- Payment receipts

--------------------------------------------------
AUTHOR
--------------------------------------------------
Sharda Prasad

Senior iOS & Flutter Developer

12+ years of experience
