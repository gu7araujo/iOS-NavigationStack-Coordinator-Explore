//
//  ProfileCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct ProfileCoordinatorView<Coordinator: CoordinatorProtocol>: CoordinatorViewProtocol where Coordinator.Pages == ProfileCoordinator.Pages {
    
    @State var coordinator: Coordinator
    var startCoordinator: ((_ page: Coordinator.Pages) -> AnyView)?
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            VStack {
                Image(systemName: "person")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Profile")
            }
            .padding()
            .navigationTitle("Profile View")
            .navigationDestination(for: Coordinator.Pages.self) { _ in
                EmptyView()
            }
        }
    }
}
