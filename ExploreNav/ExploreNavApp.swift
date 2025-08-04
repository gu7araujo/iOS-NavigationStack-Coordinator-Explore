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
            .debugSheet(isPresented: $isPresentDebugView, onDismiss: { // limitação: sheet sobre sheet
                isPresentDebugView = false
            })
        }
    }
}
