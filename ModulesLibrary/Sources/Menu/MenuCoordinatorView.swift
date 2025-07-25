//
//  MenuCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI
import Shared

public struct MenuCoordinatorView: CoordinatorViewProtocol {

    public static var label: String = "Menu"
    public static var icon: String = "list.bullet"
    public static var tag: String = "Menu"

    @State public var coordinator: MenuCoordinator

    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            MenuCompositionRoot.buildMenuView(with: coordinator)
                .navigationDestination(for: MenuCoordinator.Pages.self) { page in
                    switch page {
                    case .profile:
                        EmptyView()
//                        ProfileCompositionRoot.buildProfileView(with: ProfileCompositionRoot.buildProfileCoordinator())
                    default:
                        fatalError()
                    }
                }
        }
    }
}
