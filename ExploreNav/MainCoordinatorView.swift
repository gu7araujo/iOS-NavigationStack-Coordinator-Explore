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
            HomeCoordinatorView(coordinator: HomeCoordinator(), startCoordinator: fromHomeNavigateTo)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            MenuCoordinatorView(coordinator: MenuCoordinator())
                .tabItem {
                    Label("Menu", systemImage: "list.bullet")
                }
        }
    }
    
    func fromHomeNavigateTo(_ page: HomeCoordinator.Pages) -> AnyView {
        switch page {
        case .profile:
            let coordinator = ProfileCoordinator()
            return ProfileCoordinatorView(coordinator: coordinator).toAnyView()
        default:
            fatalError()
        }
    }
}
