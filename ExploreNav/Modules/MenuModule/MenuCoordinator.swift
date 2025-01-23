//
//  MenuCoordinator.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@Observable
class MenuCoordinator: CoordinatorProtocol {
    
    enum Pages: Hashable {
        case menu
    }
    
    var root: Pages? = .menu
    var path: NavigationPath = NavigationPath()
       
}
