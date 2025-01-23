//
//  ProfileCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

enum ProfileCompositionRoot {
     
    static func buildProfileViewmodel(with coordinator: ProfileCoordinator) -> ProfileViewModel {
        ProfileViewModel(coordinator: coordinator)
    }
    
    @ViewBuilder
    static func buildProfileView(with coordinator: ProfileCoordinator) -> some View {
        ProfileView(viewModel: buildProfileViewmodel(with: coordinator))
    }
}
