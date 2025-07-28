//
//  ExploreNavApp.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI
import Shared
import Home
import Menu

@main
struct ExploreNavApp: App {
    @State private var selectedTab = 0

    var body: some Scene {
        WindowGroup {

            TabView(selection: $selectedTab) {
                CoordinatorStack(root: HomeRoutes.root)
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    .tag(0)


                CoordinatorStack(root: MenuRoutes.root)
                    .tabItem {
                        Image(systemName: "person")
                        Text("Menu")
                    }
                    .tag(1)
            }

        }
    }
}
