//
//  HomeCoordinator.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/22/25.
//

import SwiftUI

@Observable
class HomeCoordinator: CoordinatorProtocol {
    
    enum Pages: Hashable {
        case home
        case profile
    }
    
    var root: Pages? = .home
    var path: NavigationPath = NavigationPath()   
    
}
