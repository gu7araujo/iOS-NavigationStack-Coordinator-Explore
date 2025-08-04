//
//  ProfileViewModel.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

@Observable
class ProfileViewModel {
    private var goToProfileScreen2: () -> Void

    init(navigateToProfileScreen2: @escaping () -> Void) {
        self.goToProfileScreen2 = navigateToProfileScreen2
    }

    func navigateToProfileScreen2() {
        goToProfileScreen2()
    }
}
