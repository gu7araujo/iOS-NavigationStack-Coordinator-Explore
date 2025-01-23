//
//  HomeCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

enum HomeCompositionRoot {
    
    static func buildHomeViewModel(with coordinator: HomeCoordinator) -> HomeViewModel {
        HomeViewModel(coordinator: coordinator)
    }
    
    @ViewBuilder
    static func buildHomeView(with coordinator: HomeCoordinator) -> some View {
        HomeView(viewModel: buildHomeViewModel(with: coordinator))
    }
}
