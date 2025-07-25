//
//  HomeCoordinator.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/22/25.
//

import SwiftUI
import Shared

@Observable
public class HomeCoordinator: CoordinatorProtocol {

    public enum Pages: Hashable {
        case home
        case product
        case profile
    }
    
    public var root: Pages? = .home
    public var path: NavigationPath = NavigationPath()
}
