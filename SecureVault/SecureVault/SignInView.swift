//
//  SignInView.swift
//  SecureVault
//
//  Created by Sanath Warad on 3/7/24.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
            Image(systemName: "lock")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .foregroundStyle(Color.red)
            
        }
    }
}

#Preview {
    SignInView()
}
