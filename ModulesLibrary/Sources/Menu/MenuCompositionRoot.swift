//
//  MenuCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@MainActor
public enum MenuCompositionRoot {

    public static func buildMenuCoordinator() -> MenuCoordinator {
        MenuCoordinator()
    }

    public static func builMenuCoordinatorView(coordinator: MenuCoordinator) -> MenuCoordinatorView {
        MenuCoordinatorView(coordinator: coordinator)
    }

    public static func builMenuCoordinatorView() -> MenuCoordinatorView {
        MenuCoordinatorView(coordinator: buildMenuCoordinator())
    }
     
    public static func buildMenuViewmodel(with coordinator: MenuCoordinator) -> MenuViewModel {
        MenuViewModel(coordinator: coordinator)
    }

    public static func buildMenuView(with coordinator: MenuCoordinator) -> some View {
        MenuView(viewModel: buildMenuViewmodel(with: coordinator))
    }
}
