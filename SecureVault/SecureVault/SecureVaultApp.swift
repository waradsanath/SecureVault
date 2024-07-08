//
//  SecureVaultApp.swift
//  SecureVault
//
//  Created by Sanath Warad on 3/7/24.
//

import SwiftUI

@main
struct SecureVaultApp: App {
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
