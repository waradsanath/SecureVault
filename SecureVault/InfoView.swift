//
//  InfoView.swift
//  SecureVault
//
//  Created by Sanath Warad on 4/7/24.
//

import SwiftUI

struct InfoView: View {
    var imageName: String
    var text: String
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 25, alignment: .leading)
                .foregroundStyle(Color.blue)
            Text(text)
                .font(.system(size: 20))
                .bold()
            Spacer()
        }
    }
}

#Preview {
    InfoView(imageName: "chevron.right", text: "sdlfndsf")
}
