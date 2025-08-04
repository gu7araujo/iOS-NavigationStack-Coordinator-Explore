//
//  SettingsView.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

struct SettingsView: View {

    @State var viewModel: SettingsViewModel

    init(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("Settings Screen!")
                .padding()

            Button("go to Settings Screen 2 (push)", action: viewModel.navigateToSettingsScreen2)

            Button("go to Settings Screen 3 (sheet)", action: viewModel.navigateToSettingsScreen3Sheet)

            Button("go to Settings Screen 3 (fullScreenCover)", action: viewModel.navigateToSettingsScreen3Cover)
        }
    }
}
