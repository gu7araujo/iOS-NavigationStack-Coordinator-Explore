//
//  MenuCoordinatorView.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI
import Shared

@MainActor
struct MenuCoordinatorView: View {

    @State var coordinator = MenuCoordinator()

    init() { }

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            MenuCompositionRoot.buildMenuView(with: coordinator)
                .navigationTitle("Menu Coordinator")
                .navigationDestination(for: MenuCoordinator.Pages.self) { page in
                    MenuCompositionRoot.build(page, with: coordinator)
                }
                .navigationDestination(for: ProfilePages.self) { page in
                    switch page {
                    case .profile:
                        SharedCompositionRoot.buildProfileView(navigateToProfileScreen2: {
                            coordinator.navigateToProfileScreen2()
                        })
                    case .profileScreen2:
                        SharedCompositionRoot.buildProfileScreen2View(nextScreenButtonDidTap: {
                            coordinator.push(page: .menuScreen2)
                        })
                    }
                }
        }
    }
}
