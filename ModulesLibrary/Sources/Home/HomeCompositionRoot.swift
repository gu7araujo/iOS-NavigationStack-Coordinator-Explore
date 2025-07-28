//
//  HomeCompositionRoot.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@MainActor
enum HomeCompositionRoot {
    static func buildHomeViewModel() -> HomeViewModel {
        HomeViewModel()
    }

    static func buildHomeView() -> some View {
        HomeView(viewModel: buildHomeViewModel())
    }
    
    static func buildProductViewModel() -> ProductViewModel {
        ProductViewModel()
    }

    static func buildProductView() -> some View {
        ProductView(viewModel: buildProductViewModel())
    }
}
