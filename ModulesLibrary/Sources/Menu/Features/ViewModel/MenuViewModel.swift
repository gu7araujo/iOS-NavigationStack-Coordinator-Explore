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

    init(_ coordinator: MenuCoordinator) {
        self.coordinator = coordinator
    }

    func goToProfile() {
        coordinator.navigateToProfile()
    }

    func goToScreen2() {
        coordinator.push(page: .menuScreen2)
    }
}
