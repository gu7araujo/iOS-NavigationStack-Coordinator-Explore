//
//  SettingsScreen2View.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

struct SettingsScreen2View: View {

    @State var viewModel: SettingsScreen2ViewModel

    init(viewModel: SettingsScreen2ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("Settings Screen 2!")
                .padding()

            Button("complete", action: viewModel.complete)
        }
    }
}
