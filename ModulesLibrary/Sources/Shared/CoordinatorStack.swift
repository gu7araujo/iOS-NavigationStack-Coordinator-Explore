//
//  CoordinatorStack.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI

public struct CoordinatorStack<Route: Routable>: View {
    let root: Route
    @State private var coordinator = Coordinator<Route>()

    public init(root: Route) {
        self.root = root
    }

    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            root
                .navigationDestination(for: Route.self) { $0 }
                .sheet(item: $coordinator.sheet) { $0 }
                .fullScreenCover(item: $coordinator.fullscreenCover) { $0 }
        }
        .environment(coordinator)
    }
}
