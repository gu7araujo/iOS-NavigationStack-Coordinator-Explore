//
//  CoordinatorViewProtocol.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/22/25.
//

import SwiftUI

protocol CoordinatorViewProtocol: View {
    associatedtype Coordinator: CoordinatorProtocol
    var coordinator: Coordinator { get set }
    
    static var label: String { get }
    static var icon: String { get }
    static var tag: String { get }
}
