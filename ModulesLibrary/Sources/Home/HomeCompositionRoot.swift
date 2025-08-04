//
//  HomeCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@MainActor
public enum HomeCompositionRoot {

    // MARK: - Private

    private static func buildHomeViewModel(with coordinator: HomeCoordinator) -> HomeViewModel {
        HomeViewModel(coordinator)
    }

    static func buildProductViewModel(with coordinator: HomeCoordinator) -> ProductViewModel {
        ProductViewModel(coordinator)
    }

    // MARK: - Internal

    static func buildHomeView(with coordinator: HomeCoordinator) -> some View {
        HomeView(viewModel: buildHomeViewModel(with: coordinator))
    }

    static func buildProductView(with coordinator: HomeCoordinator) -> some View {
        ProductView(viewModel: buildProductViewModel(with: coordinator))
    }

    @ViewBuilder
    static func build(_ page: HomeCoordinator.Pages?, with coordinator: HomeCoordinator) -> some View {
        switch page {
        case .home:
            buildHomeView(with: coordinator)
        case .product:
            buildProductView(with: coordinator)
        default:
            fatalError()
        }
    }

    // MARK: - Public

    public static func buildHomeCoordinatorView() -> some View {
        HomeCoordinatorView()
    }
}
