//
//  SignUpView.swift
//  SecureVault
//
//  Created by Sanath Warad on 4/7/24.
//

import SwiftUI

struct SignUpView: View {
    @State var email: String
    @State var password: String
    @State var confirmPassword: String
    @State var fullName: String
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
                InputView(text: $fullName, title: "Full Name", placeholder: "Enter full name")
                InputView(text: $password, title: "Password", placeholder: "Enter password", isSecureField: true)
                InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Re-enter password", isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            Button {
                print("Sign Up")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: .infinity, height: 48)
                        .padding(.horizontal)
                        .foregroundStyle(Color.blue)
                    HStack {
                        Text("SIGN UP")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundStyle(Color.white)
                }
            }
            .padding(.top, 24)
            Spacer()
            NavigationLink {
                SignInView(email: "email", password: "password")
            } label: {
                HStack (spacing: 4) {
                    Text("Alread have an account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    SignUpView(email: "", password: "", confirmPassword: "", fullName: "")
}
