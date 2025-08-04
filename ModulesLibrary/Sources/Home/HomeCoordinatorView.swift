//
//  HomeCoordinatorView.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI
import Shared

@MainActor
struct HomeCoordinatorView: View {

    @State var coordinator = HomeCoordinator()

    init() { }

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            HomeCompositionRoot.buildHomeView(with: coordinator)
                .navigationTitle("Home Coordinator")
                .navigationDestination(for: HomeCoordinator.Pages.self) { page in
                    HomeCompositionRoot.build(page, with: coordinator)
                }
                .navigationDestination(for: SettingsPages.self) { page in
                    switch page {
                    case .settings:
                        SharedCompositionRoot.buildSettingsView(navigateToSettingsScreen2: {
                            coordinator.navigateToSettingsScreen2()
                        }, presentSettingsScreen3Sheet: {
                            coordinator.presentSettingsScreen3Sheet()
                        }, presentSettingsScreen3Cover: {
                            coordinator.presentSettingsScreen3Cover()
                        })
                    case .settingsScreen2:
                        SharedCompositionRoot.buildSettingsScreen2View(completeButtonDidTap: {
                            coordinator.reset()
                        })
                    }
                }
                .sheet(isPresented: .constant(coordinator.sheet != nil), onDismiss: coordinator.onSheetDismiss, content: {
                    if let sheet = coordinator.sheet {
                        AnyView(sheet)
                    }
                })
                .fullScreenCover(isPresented: .constant(coordinator.cover != nil), onDismiss: coordinator.onCoverDismiss, content: {
                    if let cover = coordinator.cover {
                        AnyView(cover)
                    }
                })
        }
    }
}
