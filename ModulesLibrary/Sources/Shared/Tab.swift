//
//  Tab.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/25/25.
//

import SwiftUI

@MainActor
public struct Tab {

    @ViewBuilder public let view: () -> any View
    @ViewBuilder public let label: () -> any View

    public let id: Int = UUID().hashValue
    public let tag: String

    public init<Coordinator: CoordinatorViewProtocol>(coordinatorView: Coordinator) {
        self.view = { coordinatorView }
        self.label = { Label(Coordinator.label, systemImage: Coordinator.icon) }
        self.tag = Coordinator.tag
    }
}

extension Tab: Hashable {
    nonisolated public static func == (lhs: Tab, rhs: Tab) -> Bool {
        return lhs.id == rhs.id
    }

    nonisolated public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
