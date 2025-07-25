//
//  CoordinatorProtocol.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/25/25.
//

import SwiftUI

public protocol CoordinatorProtocol: ObservableObject {
    associatedtype Pages: Hashable

    var root: Pages? { get set }
    var path: NavigationPath { get set }

    func push(page: Pages)
    func pop()
    func popToRoot()
}

public extension CoordinatorProtocol {
    func push(page: Pages) { path.append(page) }
    func pop() { path.removeLast() }
    func popToRoot() { path.removeLast(path.count) }
}
