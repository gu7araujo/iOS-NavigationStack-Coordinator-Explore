//
//  ProfileCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct ProfileCoordinatorView: CoordinatorViewProtocol {
    
    @State var coordinator: ProfileCoordinator
    var startCoordinator: ((_ page: Coordinator.Pages) -> AnyView)?
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            ProfileCompositionRoot.buildProfileView(with: coordinator)
//            .navigationDestination(for: Coordinator.Pages.self) { _ in
//                EmptyView()
//            }
        }
    }
}
