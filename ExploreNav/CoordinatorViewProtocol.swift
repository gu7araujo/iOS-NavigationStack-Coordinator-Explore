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
    var startCoordinator: ((_ page: Coordinator.Pages) -> AnyView)? { get set }
}
