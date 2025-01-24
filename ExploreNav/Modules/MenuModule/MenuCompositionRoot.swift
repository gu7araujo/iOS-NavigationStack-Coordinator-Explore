//
//  MenuCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

enum MenuCompositionRoot {
    
    static func buildMenuCoordinator() -> MenuCoordinator {
        MenuCoordinator()
    }
    
    @ViewBuilder
    static func builMenuCoordinatorView(coordinator: MenuCoordinator) -> MenuCoordinatorView {
        MenuCoordinatorView(coordinator: coordinator)
    }
     
    static func buildMenuViewmodel(with coordinator: MenuCoordinator) -> MenuViewModel {
        MenuViewModel(coordinator: coordinator)
    }
    
    @ViewBuilder
    static func buildMenuView(with coordinator: MenuCoordinator) -> some View {
        MenuView(viewModel: buildMenuViewmodel(with: coordinator))
    }
}
