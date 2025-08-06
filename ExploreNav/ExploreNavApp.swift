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
    @State private var isPresentDebugView: Bool = false

    init() {
        let appearance = UITabBarAppearance()

        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.systemBlue

        appearance.stackedLayoutAppearance.selected.iconColor = UIColor.white
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 12)
        ]

        appearance.stackedLayoutAppearance.normal.iconColor = UIColor.lightText
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.lightText,
            .font: UIFont.systemFont(ofSize: 10)
        ]

        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                HomeCompositionRoot.buildHomeCoordinatorView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    .tag(0)


                MenuCompositionRoot.buildMenuCoordinatorView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Menu")
                    }
                    .tag(1)
            }
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.changeTabNotification)) { _ in
                selectedTab = 1
            }
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotification)) { _ in
                isPresentDebugView.toggle()
            }
            .debugSheet(isPresented: $isPresentDebugView, onDismiss: { // limitação: sheet global em cima de outras sheet
                isPresentDebugView = false
            })
        }
    }
}
