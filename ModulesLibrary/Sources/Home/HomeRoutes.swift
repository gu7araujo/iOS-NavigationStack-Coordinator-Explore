//
//  HomeRoutes.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI
import Shared

public enum HomeRoutes: Routable {
    nonisolated public var id: Self { self }

    case root
    case product

    public var body: some View {
        switch self {
        case .root:
            HomeCompositionRoot.buildHomeView()
        case .product:
            HomeCompositionRoot.buildProductView()
        }
    }
}
