//
//  SettingsCoordinatorView.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

@MainActor
struct SettingsCoordinatorView: View {

    @State var coordinator = SettingsCoordinator()
    private let completeButtonDidTap: () -> Void

    init(completeButtonDidTap: @escaping () -> Void) {
        self.completeButtonDidTap = completeButtonDidTap
    }

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            SharedCompositionRoot.buildSettingsView(with: coordinator)
                .navigationTitle("Settings Coordinator")
                .navigationDestination(for: SettingsCoordinator.Pages.self) { page in
                    switch page {
                    case .settingsScreen2:
                        SharedCompositionRoot.buildSettingsScreen2View(completeButtonDidTap: completeButtonDidTap)
                    default:
                        fatalError()
                    }
                }
                .sheet(isPresented: .constant(coordinator.sheet != nil), onDismiss: coordinator.onSheetDismiss, content: {
                    if let sheet = coordinator.sheet {
                        AnyView(sheet)
                            .presentationDetents([.medium])
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
