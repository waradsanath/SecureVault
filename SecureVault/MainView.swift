//
//  MainView.swift
//  SecureVault
//
//  Created by Sanath Warad on 4/7/24.
//

import SwiftUI

struct MainView: View {
    @State private var showingSheet = false
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    var body: some View {
        NavigationStack {
            Text("")
                .navigationTitle("Home Page")
                .toolbar {
                    Button("Info") {
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet) {
                        HelpView()
                    }
                    Button {
                        isDarkMode.toggle()
                    } label: {
                        isDarkMode ? Image(systemName: "moon.stars") : Image(systemName: "sun.max")
                    }
                }
        }
    }
}

#Preview {
    MainView()
}
