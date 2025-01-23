//
//  ProfileCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct ProfileCoordinatorView: CoordinatorViewProtocol {
    
    static var label = String()
    static var icon = String()
    static var tag = String()
    
    @State var coordinator: ProfileCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            ProfileCompositionRoot.buildProfileView(with: coordinator)
        }
    }
}
