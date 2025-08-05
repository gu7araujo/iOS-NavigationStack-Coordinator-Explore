//
//  MenuCoordinator.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI
import Shared

@Observable
class MenuCoordinator: CoordinatorProtocol {
    
    enum Pages: Hashable, Identifiable {
        case menu
        case menuScreen2
        case menuScreen3

        public var id: Self { self }
    }

    var path: NavigationPath = NavigationPath()
    var sheet: (any View)?
    var cover: (any View)?

    func push(page: Pages) {
        path.append(page)
    }

    func pop() {
        path.removeLast()
    }

    func reset() {
        path.removeLast(path.count)
    }

    func navigateToProfile() {
        path.append(ProfilePages.profile)
    }

    func navigateToProfileScreen2() {
        path.append(ProfilePages.profileScreen2)
    }
}
