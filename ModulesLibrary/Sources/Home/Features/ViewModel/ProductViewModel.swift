//
//  ProductViewModel.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@Observable
class ProductViewModel {

    private let coordinator: HomeCoordinator

    init(_ coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }

    func goToSettings() {
        coordinator.navigateToSettings()
    }

    func goBack() {
        coordinator.pop()
    }
}
