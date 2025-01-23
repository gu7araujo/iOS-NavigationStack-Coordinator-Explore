//
//  MenuViewModel.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@Observable
class MenuViewModel {
    
    private let coordinator: MenuCoordinator
    
    init(coordinator: MenuCoordinator) {
        self.coordinator = coordinator
    }
    
    func navigateToProfile() {
        coordinator.startCoordinator?(.profile)
    }
}
