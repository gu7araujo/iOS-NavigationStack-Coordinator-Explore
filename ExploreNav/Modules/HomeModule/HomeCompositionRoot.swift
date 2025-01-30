//
//  HomeCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

enum HomeCompositionRoot {
    
    static func buildHomeCoordinator() -> HomeCoordinator {
        HomeCoordinator()
    }
    
    @ViewBuilder
    static func buildHomeCoordinatorView(coordinator: HomeCoordinator) -> HomeCoordinatorView {
        HomeCoordinatorView(coordinator: coordinator)
    }
    
    @ViewBuilder
    static func buildHomeCoordinatorView() -> HomeCoordinatorView {
        HomeCoordinatorView(coordinator: buildHomeCoordinator())
    }
    
    static func buildHomeViewModel(with coordinator: HomeCoordinator) -> HomeViewModel {
        HomeViewModel(coordinator: coordinator)
    }
    
    @ViewBuilder
    static func buildHomeView(with coordinator: HomeCoordinator) -> some View {
        HomeView(viewModel: buildHomeViewModel(with: coordinator))
    }
    
    static func buildProductViewModel(with coordinator: HomeCoordinator) -> ProductViewModel {
        ProductViewModel(coordinator: coordinator)
    }
    
    @ViewBuilder
    static func buildProductView(with coordinator: HomeCoordinator) -> some View {
        ProductView(viewModel: buildProductViewModel(with: coordinator))
    }
}
