//
//  ProfileCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@MainActor
enum ProfileCompositionRoot {
    static func buildProfileViewmodel() -> ProfileViewModel {
        ProfileViewModel()
    }
    
    @ViewBuilder
    static func buildProfileView() -> some View {
        ProfileView(viewModel: buildProfileViewmodel())
    }
}
