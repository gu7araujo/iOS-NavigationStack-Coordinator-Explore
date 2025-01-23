//
//  ProfileCoordinator.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@Observable
class ProfileCoordinator: CoordinatorProtocol {
    
    enum Pages: Hashable {
        case profile
    }
    
    var root: Pages? = .profile
    var path: NavigationPath = NavigationPath()
}
