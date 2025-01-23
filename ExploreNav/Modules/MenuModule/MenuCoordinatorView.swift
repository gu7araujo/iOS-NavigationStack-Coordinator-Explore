//
//  MenuCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct MenuCoordinatorView: CoordinatorViewProtocol {
        
    @State var coordinator: MenuCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            MenuCompositionRoot.buildMenuView(with: coordinator)
        }
    }
}
