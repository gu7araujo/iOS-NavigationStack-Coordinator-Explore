//
//  MainCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct MainCoordinatorView: View {
    
    enum Pages: Hashable {
        case tab
        case profile
    }
    
    @State var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            TabView {
                HomeCoordinatorView(coordinator: HomeCoordinator(startCoordinator: { page in
                    switch page {
                    case .profile:
                        navigationPath.append(Pages.profile)
                    default:
                        fatalError()
                    }
                }))
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                MenuCoordinatorView(coordinator: MenuCoordinator())
                    .tabItem {
                        Label("Menu", systemImage: "list.bullet")
                    }
            }
            .navigationDestination(for: Pages.self) { page in
                switch page {
                case .profile:
                    let coordinator = ProfileCoordinator()
                    return ProfileCoordinatorView(coordinator: coordinator)
                default:
                    fatalError()
                }
            }
        }
    }
}
