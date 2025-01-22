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
            HomeCoordinatorView(didSendEventClosure: {
                AnyView(
                    Text("Event sent!")
                        .toolbar(.hidden, for: .tabBar)
                )
            })
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "list.bullet")
                }
        }
    }
}
