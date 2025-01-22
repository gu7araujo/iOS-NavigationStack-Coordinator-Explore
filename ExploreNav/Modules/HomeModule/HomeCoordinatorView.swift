//
//  HomeCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct HomeCoordinatorView: View {
    
    @State var coordinator = HomeCoordinator()
    
    var didSendEventClosure: () -> AnyView
    
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
            .navigationDestination(for: HomeCoordinator.Pages.self) { page in
                didSendEventClosure()
            }
        }
    }
}
