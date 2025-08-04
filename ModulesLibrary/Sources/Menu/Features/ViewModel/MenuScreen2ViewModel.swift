//
//  MenuScreen2ViewModel.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

@Observable
class MenuScreen2ViewModel {

    private let coordinator: MenuCoordinator

    init(_ coordinator: MenuCoordinator) {
        self.coordinator = coordinator
    }

    func reset() {
        coordinator.reset()
    }
}
