//
//  ProfileCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct ProfileCoordinatorView: CoordinatorViewProtocol {
    
    @State var coordinator: ProfileCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            ProfileCompositionRoot.buildProfileView(with: coordinator)
        }
    }
}
