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
    @Environment(Coordinator<HomeRoutes>.self) private var coordinator

    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("go to Product (push)") {
                coordinator.push(.product)
            }
            Button("go to Profile (sheet)") {
                coordinator.push(.profile, type: .sheet)
            }
            Button("go to Profile (fullScreenCover)") {
                coordinator.push(.profile, type: .fullScreenCover)
            }
            Button("change tab") {
                NotificationCenter.default.post(name: UIDevice.changeTabNotification, object: nil)
            }
        }
        .padding()
    }
}
