//
//  HelpView.swift
//  SecureVault
//
//  Created by Sanath Warad on 4/7/24.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        ScrollView (.vertical) {
            Text("Welcome to SecureVault")
                .font(.system(.largeTitle, weight: .bold))
                .frame(width: 240)
                .clipped()
                .multilineTextAlignment(.center)
                .padding(.top, 82)
                .padding(.bottom, 52)
            InfoView(imageName: "plus.circle.fill", text: "Generate New Passwords", description: "Have difficulty coming up with passwords? You can generate strong, random passwords using the app.")
                .padding(.horizontal)
                .padding(.vertical, 10)
            InfoView(imageName: "square.and.arrow.down.fill", text: "Save Passwords", description: "Have difficulty remembering your passwords? You can store your passwords on the app.")
                .padding(.horizontal)
                .padding(.vertical, 10)
            InfoView(imageName: "lock.circle.fill", text: "Fully secure", description: "Worried you my be hacked or lose your valuable information? The app requires that you sign in with email and password and after you sign in, you need your Phone PIN to sign in.")
                .padding(.horizontal)
                .padding(.vertical, 10)
        }
    }
}

#Preview {
    HelpView()
}
