//
//  SignInView.swift
//  SecureVault
//
//  Created by Sanath Warad on 3/7/24.
//

import SwiftUI

struct SignInView: View {
    @State var email: String
    @State var password: String
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .padding(.vertical, 32)
                    .foregroundStyle(Color.red)
                InputView(text: $email, title: "Email", placeholder: "Enter email")
                InputView(text: $password, title: "Password", placeholder: "Enter password", isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            Button {
                print("Sign In")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: .infinity, height: 48)
                        .padding(.horizontal)
                        .foregroundStyle(Color.blue)
                    HStack {
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundStyle(Color.white)
                }
            }
            .padding(.top, 24)
            Spacer()
            NavigationLink {
                SignUpView(email: "", password: "", confirmPassword: "", fullName: "")
            } label: {
                HStack (spacing: 4) {
                    Text("Don't have an account?")
                    Text("Sign up")
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    SignInView(email: "", password: "")
}
