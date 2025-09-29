//
//  ProfileScreen2ViewModel.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

@Observable
class ProfileScreen2ViewModel {
    private var nextScreenButtonDidTap: () -> Void

    init(nextScreenButtonDidTap: @escaping () -> Void) {
        self.nextScreenButtonDidTap = nextScreenButtonDidTap
    }

    func navigateToNextScreen() {
        nextScreenButtonDidTap()
    }
}
