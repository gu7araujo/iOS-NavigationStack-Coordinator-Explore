//
//  SettingsViewModel.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

@Observable
class SettingsViewModel {

    private let coordinator: SettingsCoordinator?
    private var goToSettingsScreen2: (() -> Void)?
    private var presentSettingsScreen3Sheet: (() -> Void)?
    private var presentSettingsScreen3Cover: (() -> Void)?

    init(coordinator: SettingsCoordinator?, navigateToSettingsScreen2: (() -> Void)?, presentSettingsScreen3Sheet: (() -> Void)?, presentSettingsScreen3Cover: (() -> Void)?) {
        self.coordinator = coordinator
        self.goToSettingsScreen2 = navigateToSettingsScreen2
        self.presentSettingsScreen3Sheet = presentSettingsScreen3Sheet
        self.presentSettingsScreen3Cover = presentSettingsScreen3Cover
    }

    func navigateToSettingsScreen2() {
        if let coordinator {
            coordinator.push(page: .settingsScreen2)
        } else {
            goToSettingsScreen2?()
        }
    }

    @MainActor
    func navigateToSettingsScreen3Sheet() {
        if let coordinator {
            coordinator.presentSettingsScreen3Sheet()
        } else {
            presentSettingsScreen3Sheet?()
        }
    }

    @MainActor
    func navigateToSettingsScreen3Cover() {
        if let coordinator {
            coordinator.presentSettingsScreen3Cover()
        } else {
            presentSettingsScreen3Cover?()
        }
    }
}
