//
//  HomeRoutes.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI
import Shared

public enum HomeRoutes: RoutableProtocol {
    nonisolated public var id: Self { self }

    case root
    case product
    case profile

    public var body: some View {
        switch self {
        case .root:
            HomeCompositionRoot.buildHomeView()
        case .product:
            HomeCompositionRoot.buildProductView()
        case .profile:
            SharedCompositionRoot.buildProfileView(for: HomeRoutes.self)
        }
    }
}
