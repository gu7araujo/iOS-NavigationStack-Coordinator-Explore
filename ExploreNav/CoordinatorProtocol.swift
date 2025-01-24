//
//  CoordinatorProtocol.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/22/25.
//

import SwiftUI

protocol CoordinatorProtocol: ObservableObject {
    associatedtype Pages: Hashable
    
    var root: Pages? { get set }
    var path: NavigationPath { get set }
    
    func push(page: Pages)
    func pop()
    func popToRoot()
}

extension CoordinatorProtocol {
    func push(page: Pages) { path.append(page) }
    func pop() { path.removeLast() }
    func popToRoot() { path.removeLast(path.count) }
}
