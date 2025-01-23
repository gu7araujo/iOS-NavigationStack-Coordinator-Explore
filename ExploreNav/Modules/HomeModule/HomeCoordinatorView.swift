//
//  HomeCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct HomeCoordinatorView<Coordinator: CoordinatorProtocol>: CoordinatorViewProtocol where Coordinator.Pages == HomeCoordinator.Pages {
    
    @State var coordinator: Coordinator
    var getPage: (_ page: Coordinator.Pages) -> AnyView
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                Button("go to Profile") {
                    coordinator.push(page: .profile)
                }
            }
            .padding()
            .navigationDestination(for: Coordinator.Pages.self) { page in
                switch page {
                case .profile:
                    getPage(page)
                default:
                    EmptyView()
                }
            }
        }
    }
}
