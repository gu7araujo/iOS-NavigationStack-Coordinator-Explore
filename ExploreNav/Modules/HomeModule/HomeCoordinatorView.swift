//
//  HomeCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct HomeCoordinatorView: CoordinatorViewProtocol {
    
    @State var coordinator: HomeCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            HomeCompositionRoot.buildHomeView(with: coordinator)
                .navigationDestination(for: HomeCoordinator.Pages.self) { page in
                    switch page {
                    case .product:
                        HomeCompositionRoot.buildProductView(with: coordinator)
                    default:
                        fatalError()
                    }
                }
        }
    }
}
