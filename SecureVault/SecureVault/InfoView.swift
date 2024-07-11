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
    var description: String
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .symbolRenderingMode(.monochrome)
                .foregroundStyle(.blue)
                .font(.system(.title, weight: .regular))
                .frame(width: 60, height: 50)
                .clipped()
            VStack(alignment: .leading, spacing: 3) {
                Text(text)
                    .font(.system(.footnote, weight: .semibold))
                Text(description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            .fixedSize(horizontal: false, vertical: true)
            Spacer()
        }
    }
}

#Preview {
    InfoView(imageName: "circle", text: "sdlfndsf", description: "ldksnfkbdsakgjfbfkldg kfdbgkjbdfskgjbfdksjbgjbds fljhgbdsjfhbglkjdfsbjklgb sdfjkbgdsfijbgkldsfjbgkjd fbgkjbdfgkjbdfkgjbdkfjbgk dsfbjgkdfjbgksdfbjgkdjfbg kdjfbgkdfjbgkdfjbgkdfjbgkdfjbgksbjf")
}
