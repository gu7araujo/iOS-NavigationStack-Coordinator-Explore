//
//  ProfileRoutes.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI
import Shared

public enum ProfileRoutes: Routable {
    nonisolated public var id: Self { self }

    case root

    public var body: some View {
        switch self {
        case .root:
            ProfileCompositionRoot.buildProfileView()
        }
    }
}
