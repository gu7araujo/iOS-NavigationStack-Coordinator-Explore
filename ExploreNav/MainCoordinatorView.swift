//
//  MainCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct MainCoordinatorView: View {
    
    var body: some View {
        TabView {
            HomeCoordinatorView(coordinator: HomeCoordinator(), getPage: handleHomeCoordinatorPage)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            MenuCoordinatorView(coordinator: MenuCoordinator(), getPage: handleMenuCoordinatorPage)
                .tabItem {
                    Label("Menu", systemImage: "list.bullet")
                }
        }
    }
    
    func handleHomeCoordinatorPage(_ page: HomeCoordinator.Pages) -> AnyView {
        switch page {
        case .profile:
            return ProfileView().toAnyView()
        default:
            fatalError()
        }
    }
    
    func handleMenuCoordinatorPage(_ page: MenuCoordinator.Pages) -> AnyView {
        switch page {
        case .menu:
            return AnyView(Text("Menu"))
        @unknown default:
            fatalError()
        }
    }
}
