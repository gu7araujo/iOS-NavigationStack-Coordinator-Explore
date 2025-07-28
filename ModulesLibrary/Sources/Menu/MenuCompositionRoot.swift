//
//  MenuCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@MainActor
public enum MenuCompositionRoot {
     
    public static func buildMenuViewmodel() -> MenuViewModel {
        MenuViewModel()
    }

    public static func buildMenuView() -> some View {
        MenuView(viewModel: buildMenuViewmodel())
    }
}
