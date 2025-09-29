//
//  SettingsCoordinator.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

@Observable
class SettingsCoordinator: CoordinatorProtocol {
    typealias Pages = SettingsPages

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
    func presentSettingsScreen3Sheet() {
        sheet = SharedCompositionRoot.buildSettingsScreen3View(with: self)
    }

    @MainActor
    func presentSettingsScreen3Cover() {
        cover = SharedCompositionRoot.buildSettingsScreen3View(with: self)
    }
}
