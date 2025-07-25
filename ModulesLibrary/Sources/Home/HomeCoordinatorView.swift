//
//  HomeCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI
import Shared

public struct HomeCoordinatorView: CoordinatorViewProtocol {
    
    public static var label: String = "Home"
    public static var icon: String = "square.and.pencil"
    public static var tag: String = "Home"

    @State public var coordinator: HomeCoordinator

    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            HomeCompositionRoot.buildHomeView(with: coordinator)
                .navigationDestination(for: HomeCoordinator.Pages.self) { page in
                    switch page {
                    case .product:
                        HomeCompositionRoot.buildProductView(with: coordinator)
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
