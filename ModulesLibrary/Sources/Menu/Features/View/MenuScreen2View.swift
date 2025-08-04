//
//  MenuScreen2View.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

struct MenuScreen2View: View {

    @State var viewModel: MenuScreen2ViewModel

    init(viewModel: MenuScreen2ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("Menu Screen 2!")
                .padding()

            Button("reset", action: viewModel.reset)
        }
    }
}
