//
//  SharedCompositionRoot.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI

@MainActor
public enum SharedCompositionRoot {

    // MARK: - Private

    private static func buildProfileViewModel(navigateToProfileScreen2: @escaping () -> Void) -> ProfileViewModel {
        ProfileViewModel(navigateToProfileScreen2: navigateToProfileScreen2)
    }

    private static func buildProfileScreen2ViewModel(nextScreenButtonDidTap: @escaping () -> Void) -> ProfileScreen2ViewModel {
        ProfileScreen2ViewModel(nextScreenButtonDidTap: nextScreenButtonDidTap)
    }

    private static func buildSettingsViewModel(with coordinator: SettingsCoordinator) -> SettingsViewModel {
        SettingsViewModel(coordinator: coordinator, navigateToSettingsScreen2: nil, presentSettingsScreen3Sheet: nil, presentSettingsScreen3Cover: nil)
    }

    private static func buildSettingsViewModel(navigateToSettingsScreen2: @escaping () -> Void, presentSettingsScreen3Sheet: @escaping () -> Void, presentSettingsScreen3Cover: @escaping () -> Void) -> SettingsViewModel {
        SettingsViewModel(coordinator: nil, navigateToSettingsScreen2: navigateToSettingsScreen2, presentSettingsScreen3Sheet: presentSettingsScreen3Sheet, presentSettingsScreen3Cover: presentSettingsScreen3Cover)
    }

    private static func buildSettingsScreen2ViewModel(completeButtonDidTap: @escaping () -> Void) -> SettingsScreen2ViewModel {
        SettingsScreen2ViewModel(completeButtonDidTap: completeButtonDidTap)
    }

    private static func buildSettingsScreen3ViewModel(with coordinator: SettingsCoordinator) -> SettingsScreen3ViewModel {
        SettingsScreen3ViewModel(coordinator: coordinator, doneButtonDidTap: nil)
    }

    private static func buildSettingsScreen3ViewModel(doneButtonDidTap: @escaping () -> Void) -> SettingsScreen3ViewModel {
        SettingsScreen3ViewModel(coordinator: nil, doneButtonDidTap: doneButtonDidTap)
    }

    // MARK: - Internal

    static func buildSettingsView(with coordinator: SettingsCoordinator) -> some View {
        SettingsView(viewModel: buildSettingsViewModel(with: coordinator))
    }

    static func buildSettingsScreen3View(with coordinator: SettingsCoordinator) -> some View {
        SettingsScreen3View(viewModel: buildSettingsScreen3ViewModel(with: coordinator))
    }

    // MARK: - Public

    public static func buildProfileView(navigateToProfileScreen2: @escaping () -> Void) -> some View {
        ProfileView(viewModel: buildProfileViewModel(navigateToProfileScreen2: navigateToProfileScreen2))
    }

    public static func buildProfileScreen2View(nextScreenButtonDidTap: @escaping () -> Void) -> some View {
        ProfileScreen2View(viewModel: buildProfileScreen2ViewModel(nextScreenButtonDidTap: nextScreenButtonDidTap))
    }

    public static func buildSettingsView(navigateToSettingsScreen2: @escaping () -> Void, presentSettingsScreen3Sheet: @escaping () -> Void, presentSettingsScreen3Cover: @escaping () -> Void) -> some View {
        SettingsView(viewModel: buildSettingsViewModel(navigateToSettingsScreen2: navigateToSettingsScreen2, presentSettingsScreen3Sheet: presentSettingsScreen3Sheet, presentSettingsScreen3Cover: presentSettingsScreen3Cover))
    }

    public static func buildSettingsScreen2View(completeButtonDidTap: @escaping () -> Void) -> some View {
        SettingsScreen2View(viewModel: buildSettingsScreen2ViewModel(completeButtonDidTap: completeButtonDidTap))
    }

    public static func buildSettingsScreen3View(doneButtonDidTap: @escaping () -> Void) -> some View {
        SettingsScreen3View(viewModel: buildSettingsScreen3ViewModel(doneButtonDidTap: doneButtonDidTap))
    }

    public static func buildSettingsCoordinatorView(completeButtonDidTap: @escaping () -> Void) -> some View {
        SettingsCoordinatorView(completeButtonDidTap: completeButtonDidTap)
    }
}
