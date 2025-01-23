//
//  MenuCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct MenuCoordinatorView: CoordinatorViewProtocol {
        
    @State var coordinator: MenuCoordinator
    var startCoordinator: ((_ page: Coordinator.Pages) -> AnyView)?
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            MenuCompositionRoot.buildMenuView(with: coordinator)
//            .navigationDestination(for: Coordinator.Pages.self) { _ in
//                EmptyView()
//            }
        }
    }
}
