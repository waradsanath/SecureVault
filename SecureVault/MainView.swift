//
//  MainView.swift
//  SecureVault
//
//  Created by Sanath Warad on 4/7/24.
//

import SwiftUI

struct MainView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack {
            Text("")
                .navigationTitle("Home Page")
                .toolbar(content: {
                    Button("Info") {
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet) {
                        HelpView()
                    }
                })
        }
    }
}

#Preview {
    MainView()
}
