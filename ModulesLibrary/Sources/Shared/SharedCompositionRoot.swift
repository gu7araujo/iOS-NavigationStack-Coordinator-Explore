//
//  SharedCompositionRoot.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI

@MainActor
public enum SharedCompositionRoot {
    static func buildProfileViewModel() -> ProfileViewModel {
        ProfileViewModel()
    }

    public static func buildProfileView<Route: RoutableProtocol>(for routeType: Route.Type) -> some View {
        ProfileView<Route>(viewModel: buildProfileViewModel())
    }
}
