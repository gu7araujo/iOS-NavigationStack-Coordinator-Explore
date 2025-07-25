//
//  ProductViewModel.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@Observable
public class ProductViewModel {
    
    private let coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func back() {
        coordinator.pop()
    }
}
