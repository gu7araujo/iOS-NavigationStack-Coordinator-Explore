//
//  MenuRoutes.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI
import Shared

public enum MenuRoutes: RoutableProtocol {
    nonisolated public var id: Self { self }

    case root
    case profile

    public var body: some View {
        switch self {
        case .root:
            MenuCompositionRoot.buildMenuView()
        case .profile:
            SharedCompositionRoot.buildProfileView(for: MenuRoutes.self)
        }
    }
}
