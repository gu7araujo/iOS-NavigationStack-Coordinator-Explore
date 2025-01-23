//
//  HomeCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct HomeCoordinatorView: CoordinatorViewProtocol {
    
    static var label: String = "Home"
    static var icon: String = "square.and.pencil"
    static var tag: String = "Home"
    
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
