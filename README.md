 Apple Pay Integration
This project demonstrates Apple Pay integration in an iOS application using Swift / SwiftUI with a clean architecture approach (MVVM-ready).
📌 Features
Secure payments using Apple Pay
Supports debit & credit cards added to Wallet
Native Apple Pay UI
Sandbox & production-ready setup
Easily extendable for backend payment processing
🛠 Requirements
macOS with Xcode 14+
iOS 14.0+
Apple Developer Account
Physical iPhone device (Apple Pay does not work on Simulator)
Valid Merchant ID
Payment Processor (Stripe / Razorpay / custom backend)
🔑 Apple Pay Setup (Mandatory)
Create Merchant ID
Apple Developer Portal → Certificates, IDs & Profiles
Example:
merchant.com.yourcompany.appname
Enable Apple Pay Capability
Target → Signing & Capabilities → + Capability → Apple Pay
Configure Merchant ID
Add your Merchant ID to Apple Pay capability
Create Payment Processing Certificate
Used for backend payment verification
📦 Project Configuration
Enable Apple Pay Capability
Target → Signing & Capabilities → Apple Pay
✔ Enable Apple Pay
✔ Select Merchant ID
💳 Supported Payment Networks
.visa
.masterCard
.amex
.discover
🧩 Apple Pay Flow
User taps Apple Pay button
Apple Pay sheet is presented
User authorizes with Face ID / Touch ID
Encrypted payment token generated
Token sent to backend
Backend confirms payment
Success / failure response returned
🧱 Architecture
├── View
│   └── ApplePayButtonView
├── ViewModel
│   └── ApplePayViewModel
├── Service
│   └── ApplePayService
└── Models
    └── PaymentRequestModel
🔐 Security Notes
Apple Pay tokens are encrypted
Card details are never exposed
Always validate payments on backend
Never trust client-only success
🧪 Testing Apple Pay
Sandbox Testing
Add a test card in iPhone Wallet
Use sandbox Apple ID
Test with physical device
