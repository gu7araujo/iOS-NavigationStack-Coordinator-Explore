//
//  ProfileCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@MainActor
enum ProfileCompositionRoot {
    
    static func buildProfileCoordinator() -> ProfileCoordinator {
        ProfileCoordinator()
    }
    
    @ViewBuilder
    static func builProfileCoordinatorView(coordinator: ProfileCoordinator) -> ProfileCoordinatorView {
        ProfileCoordinatorView(coordinator: coordinator)
    }
     
    static func buildProfileViewmodel(with coordinator: ProfileCoordinator) -> ProfileViewModel {
        ProfileViewModel(coordinator: coordinator)
    }
    
    @ViewBuilder
    static func buildProfileView(with coordinator: ProfileCoordinator) -> some View {
        ProfileView(viewModel: buildProfileViewmodel(with: coordinator))
    }
}
