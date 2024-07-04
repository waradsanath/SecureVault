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
                .font(.largeTitle)
                .bold()
                .padding()
            InfoView(imageName: "plus.circle", text: "Generate New Passwords")
                .padding(.horizontal)
                .padding(.vertical, 10)
            InfoView(imageName: "square.and.arrow.down", text: "Save Passwords")
                .padding(.horizontal)
                .padding(.vertical, 10)
            InfoView(imageName: "lock.circle.fill", text: "Fully secure")
                .padding(.horizontal)
                .padding(.vertical, 10)
        }
    }
}

#Preview {
    HelpView()
}
