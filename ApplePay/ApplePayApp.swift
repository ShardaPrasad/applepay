//
//  ApplePayApp.swift
//  ApplePay
//
//  Created by Sharda Prasad on 10/01/26.
//

import SwiftUI
import CoreData

@main
struct ApplePayApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CheckoutView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
