//
//  HomeView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI
import Shared

struct HomeView: View {
    
    @State var viewModel: HomeViewModel

    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text("Home Screen!")
                .padding()

            Button("go to Product (push)", action: viewModel.goToProduct)

            Button("go to Settings (sheet)", action: viewModel.goToSettingsSheet)

            Button("go to Settings (fullScreenCover)", action: viewModel.goToSettingsCover)

            Button("change tab") {
                NotificationCenter.default.post(name: UIDevice.changeTabNotification, object: nil)
            }

            Button("change tab (Deep Link)") {
                if let url = URL(string: "myapp://menu") {
                    UIApplication.shared.open(url)
                }
            }

            Text(Session.shared.name ?? "No name")
        }
    }
}
