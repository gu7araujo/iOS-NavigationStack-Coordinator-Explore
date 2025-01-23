//
//  MenuCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct MenuCoordinatorView<Coordinator: CoordinatorProtocol>: CoordinatorViewProtocol where Coordinator.Pages == MenuCoordinator.Pages {
    
    @State var coordinator: Coordinator
    var getPage: (Coordinator.Pages) -> AnyView
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            VStack {
                Image(systemName: "graduationcap")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Let's Explore!")
            }
            .padding()
            .navigationDestination(for: Coordinator.Pages.self) { _ in
                EmptyView()
            }
        }
    }
}
