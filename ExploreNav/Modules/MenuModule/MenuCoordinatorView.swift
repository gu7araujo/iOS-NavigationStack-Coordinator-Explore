//
//  MenuCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct MenuCoordinatorView: CoordinatorViewProtocol {
    
    static var label: String = "Menu"
    static var icon: String = "list.bullet"
    static var tag: String = "Menu"
        
    @State var coordinator: MenuCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            MenuCompositionRoot.buildMenuView(with: coordinator)
                .navigationDestination(for: MenuCoordinator.Pages.self) { page in
                    switch page {
                    case .profile:
                        ProfileCompositionRoot.buildProfileView(with: ProfileCompositionRoot.buildProfileCoordinator())
                    default:
                        fatalError()
                    }
                }
        }
    }
}
