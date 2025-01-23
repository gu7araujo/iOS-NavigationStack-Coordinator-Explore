//
//  Tab.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct Tab {
    
    @ViewBuilder let view: () -> any View
    @ViewBuilder let label: () -> any View
    
    let id: Int = UUID().hashValue
    let tag: String
    
    init<Coordinator: CoordinatorViewProtocol>(coordinatorView: Coordinator) {
        self.view = { coordinatorView }
        self.label = { Label(Coordinator.label, systemImage: Coordinator.icon) }
        self.tag = Coordinator.tag
    }
}

extension Tab: Hashable {
    static func == (lhs: Tab, rhs: Tab) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
