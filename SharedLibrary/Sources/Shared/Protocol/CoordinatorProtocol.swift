//
//  CoordinatorProtocol.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI

public protocol CoordinatorProtocol {
    associatedtype Page: Hashable, Identifiable

    var path: NavigationPath { get set }
    var sheet: (any View)? { get set }
    var cover: (any View)? { get set }

    func push(page: Page)
    func pop()
    func reset()
}
