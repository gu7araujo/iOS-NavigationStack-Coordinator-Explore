//
//  ProfileScreen2View.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

struct ProfileScreen2View: View {

    @State var viewModel: ProfileScreen2ViewModel

    init(viewModel: ProfileScreen2ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("Profile Screen 2!")
                .padding()

            Button("go to Next Screen", action: viewModel.navigateToNextScreen)
        }
    }
}
