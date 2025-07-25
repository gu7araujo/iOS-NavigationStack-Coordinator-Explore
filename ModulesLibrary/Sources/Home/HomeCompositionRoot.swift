//
//  HomeCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@MainActor
public enum HomeCompositionRoot {
    
    public static func buildHomeCoordinator() -> HomeCoordinator {
        HomeCoordinator()
    }
    
    public  static func buildHomeCoordinatorView(coordinator: HomeCoordinator) -> HomeCoordinatorView {
        HomeCoordinatorView(coordinator: coordinator)
    }

    public static func buildHomeCoordinatorView() -> HomeCoordinatorView {
        HomeCoordinatorView(coordinator: buildHomeCoordinator())
    }
    
    public static func buildHomeViewModel(with coordinator: HomeCoordinator) -> HomeViewModel {
        HomeViewModel(coordinator: coordinator)
    }

    public static func buildHomeView(with coordinator: HomeCoordinator) -> some View {
        HomeView(viewModel: buildHomeViewModel(with: coordinator))
    }
    
    public static func buildProductViewModel(with coordinator: HomeCoordinator) -> ProductViewModel {
        ProductViewModel(coordinator: coordinator)
    }

    public static func buildProductView(with coordinator: HomeCoordinator) -> some View {
        ProductView(viewModel: buildProductViewModel(with: coordinator))
    }
}
