//
//  HomeViewModel.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI
import Shared

@Observable @MainActor
class HomeViewModel {

    private let coordinator: HomeCoordinator

    init(_ coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }

    func goToProduct() {
        coordinator.push(page: .product)
    }

    func goToSettingsSheet() {
        coordinator.presentSettingsSheet()
    }

    func goToSettingsCover() {
        coordinator.presentSettingsCover()
    }
}
