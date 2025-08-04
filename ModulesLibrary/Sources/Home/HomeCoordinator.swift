//
//  HomeCoordinator.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI
import Shared

@Observable
class HomeCoordinator: CoordinatorProtocol {

    enum Pages: Hashable, Identifiable {
        case home
        case product

        public var id: Self { self }
    }

    var path: NavigationPath = NavigationPath()
    var sheet: (any View)?
    var cover: (any View)?

    func push(page: Pages) {
        path.append(page)
    }

    func pop() {
        path.removeLast()
    }

    func reset() {
        path.removeLast(path.count)
    }

    func onSheetDismiss() {
        sheet = nil
    }

    func onCoverDismiss() {
        cover = nil
    }

    @MainActor
    func presentSettingsSheet() {
        sheet = SharedCompositionRoot.buildSettingsCoordinatorView(completeButtonDidTap: onSheetDismiss)
    }

    @MainActor
    func presentSettingsCover() {
        cover = SharedCompositionRoot.buildSettingsCoordinatorView(completeButtonDidTap: onCoverDismiss)
    }

    func navigateToSettings() {
        path.append(SettingsPages.settings)
    }

    func navigateToSettingsScreen2() {
        path.append(SettingsPages.settingsScreen2)
    }

    @MainActor
    func presentSettingsScreen3Sheet() {
        sheet = SharedCompositionRoot.buildSettingsScreen3View(doneButtonDidTap: { [weak self] in
            self?.sheet = nil
        })
    }

    @MainActor
    func presentSettingsScreen3Cover() {
        cover = SharedCompositionRoot.buildSettingsScreen3View(doneButtonDidTap: { [weak self] in
            self?.cover = nil
        })
    }
}
