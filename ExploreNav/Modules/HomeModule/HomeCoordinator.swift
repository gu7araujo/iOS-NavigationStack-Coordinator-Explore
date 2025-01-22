//
//  HomeCoordinator.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/22/25.
//

import SwiftUI

@Observable
class HomeCoordinator {
    
    enum Pages {
        case home
        case profile
    }
    
    var path: NavigationPath = NavigationPath()
    
    func push(page: Pages) { path.append(page) }
    
}
