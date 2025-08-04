//
//  SettingsScreen3ViewModel.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/4/25.
//

import SwiftUI

@Observable
class SettingsScreen3ViewModel {

    private let coordinator: SettingsCoordinator?
    private var doneButtonDidTap: (() -> Void)?

    init(coordinator: SettingsCoordinator?, doneButtonDidTap: (() -> Void)?) {
        self.coordinator = coordinator
        self.doneButtonDidTap = doneButtonDidTap
    }

    func done() {
        if let coordinator {
            coordinator.sheet = nil
            coordinator.cover = nil
        } else {
            doneButtonDidTap?()
        }
    }
}
