//
//  CoordinatorViewProtocol.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/25/25.
//

import SwiftUI

public protocol CoordinatorViewProtocol: View {
    associatedtype Coordinator: CoordinatorProtocol
    var coordinator: Coordinator { get set }

    static var label: String { get }
    static var icon: String { get }
    static var tag: String { get }
}
