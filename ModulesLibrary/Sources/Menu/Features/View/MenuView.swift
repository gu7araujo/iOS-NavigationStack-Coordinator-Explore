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
    @State var isTabBarPresented: Bool = true

    init(viewModel: MenuViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text("Menu Screen!")
                .padding()

            Button("go to Profile", action: viewModel.goToProfile)
            Button("go to Screen 2", action: viewModel.goToScreen2)
            Button("go to Screen 3", action: viewModel.goToScreen3)
            Button("\(isTabBarPresented ? "Hide" : "Show") tabBar", action: {
                isTabBarPresented.toggle()
            })
        }
        .toolbar(isTabBarPresented ? .visible : .hidden, for: .tabBar)
    }
}
