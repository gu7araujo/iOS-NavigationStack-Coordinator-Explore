//
//  MenuCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@MainActor
public enum MenuCompositionRoot {

    // MARK: - Private

    private static func buildMenuViewmodel(with coordinator: MenuCoordinator) -> MenuViewModel {
        MenuViewModel(coordinator)
    }

    private static func buildMenuScreen2Viewmodel(with coordinator: MenuCoordinator) -> MenuScreen2ViewModel {
        MenuScreen2ViewModel(coordinator)
    }

    // MARK: - Internal

    static func buildMenuView(with coordinator: MenuCoordinator) -> some View {
        MenuView(viewModel: buildMenuViewmodel(with: coordinator))
    }

    static func buildMenuScreen2View(with coordinator: MenuCoordinator) -> some View {
        MenuScreen2View(viewModel: buildMenuScreen2Viewmodel(with: coordinator))
    }

    @ViewBuilder
    static func build(_ page: MenuCoordinator.Pages?, with coordinator: MenuCoordinator) -> some View {
        switch page {
        case .menu:
            buildMenuView(with: coordinator)
        case .menuScreen2:
            buildMenuScreen2View(with: coordinator)
        default:
            fatalError()
        }
    }

    // MARK: - Public

    public static func buildMenuCoordinatorView() -> some View {
        MenuCoordinatorView()
    }
}
