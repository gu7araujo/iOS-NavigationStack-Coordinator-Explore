//
//  MenuView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI
import Shared

struct MenuView: View {
    
    @State var viewModel: MenuViewModel

    init(viewModel: MenuViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text("Menu Screen!")
                .padding()

            Button("go to Profile", action: viewModel.goToProfile)
            Button("go to Screen 2", action: viewModel.goToScreen2)
        }
    }
}
