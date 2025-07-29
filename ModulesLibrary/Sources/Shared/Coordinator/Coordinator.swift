//
//  Coordinator.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI

@Observable
public class Coordinator<Route: RoutableProtocol> {

    var path: NavigationPath = NavigationPath()
    var sheet: Route?
    var fullScreenCover: Route?

    public enum NavigationType {
        case push
        case sheet
        case fullScreenCover
    }

    public enum NavigationPopType {
        case push(last: Int)
        case sheet
        case fullScreenCover
    }

    public func push(_ page: Route, type: NavigationType = .push) {
        switch type {
        case .push:
            path.append(page)
        case .sheet:
            sheet = page
        case .fullScreenCover:
            fullScreenCover = page
        }
    }

    public func pop(_ quantity: Int? = nil) {
        if sheet != nil {
            sheet = nil
        } else if fullScreenCover != nil {
            fullScreenCover = nil
        } else {
            guard !path.isEmpty else { return }

            if let quantity, quantity > path.count {
                reset()
            } else if let quantity, quantity < path.count { // limitação: não conseguir remover uma tela do meio
                path.removeLast(quantity)
            } else {
                path.removeLast()
            }
        }
    }

    public func reset() {
        path.removeLast(path.count)
    }
}
