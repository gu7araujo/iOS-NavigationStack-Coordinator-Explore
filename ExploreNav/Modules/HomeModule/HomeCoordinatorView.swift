//
//  HomeCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct HomeCoordinatorView: CoordinatorViewProtocol {
    
    @State var coordinator: HomeCoordinator
    var startCoordinator: ((_ page: Coordinator.Pages) -> AnyView)?
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            HomeCompositionRoot.buildHomeView(with: coordinator)
            .navigationDestination(for: Coordinator.Pages.self) { page in
                switch page {
                case .profile:
                    startCoordinator?(page)
                case .product:
                    HomeCompositionRoot.buildProductView(with: coordinator)
                default:
                    EmptyView()
                }
            }
        }
    }
}
