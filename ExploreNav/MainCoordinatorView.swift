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
            HomeCoordinatorView(coordinator: HomeCoordinator()) { page in
                switch page {
                case .profile:
                    startProfileCoordinator()
                default:
                    AnyView(EmptyView())
                }
            }
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "list.bullet")
                }
        }
    }
    
    func startProfileCoordinator() -> AnyView {
        AnyView(
            ProfileView()
                .toolbar(.hidden, for: .tabBar)
        )
    }
}
