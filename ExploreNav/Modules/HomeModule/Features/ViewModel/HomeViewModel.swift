//
//  HomeViewModel.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@Observable
class HomeViewModel {
    
    private let coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func navigateToProfile() {
        coordinator.push(page: .profile)
    }
}
