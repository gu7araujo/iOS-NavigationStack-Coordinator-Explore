//
//  SettingsScreen3View.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/4/25.
//

import SwiftUI

struct SettingsScreen3View: View {

    @State var viewModel: SettingsScreen3ViewModel

    init(viewModel: SettingsScreen3ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("Settings Screen 3!")
                .padding()

            Button("close", action: viewModel.done)
        }
    }
}
