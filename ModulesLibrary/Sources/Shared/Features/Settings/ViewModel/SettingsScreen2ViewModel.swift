//
//  SettingsScreen2ViewModel.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/3/25.
//

import SwiftUI

@Observable
class SettingsScreen2ViewModel {
    
    private var completeButtonDidTap: () -> Void

    init(completeButtonDidTap: @escaping () -> Void) {
        self.completeButtonDidTap = completeButtonDidTap
    }

    func complete() {
        completeButtonDidTap()
    }
}
