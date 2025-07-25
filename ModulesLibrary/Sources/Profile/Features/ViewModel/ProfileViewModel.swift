//
//  ProfileViewModel.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@Observable
class ProfileViewModel {
    
    private let coordinator: ProfileCoordinator
    
    init(coordinator: ProfileCoordinator) {
        self.coordinator = coordinator
    }
}
