//
//  MenuCoordinator.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI
import Shared

@Observable
public class MenuCoordinator: CoordinatorProtocol {

    public enum Pages: Hashable {
        case menu
        case profile
    }
    
    public var root: Pages? = .menu
    public var path: NavigationPath = NavigationPath()
       
}
