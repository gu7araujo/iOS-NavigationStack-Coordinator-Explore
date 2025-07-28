//
//  Coordinator.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/28/25.
//

import SwiftUI

@Observable
public class Coordinator<Route: Routable> {

    var path: NavigationPath = NavigationPath()
    var sheet: Route?
    var fullscreenCover: Route?

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
            fullscreenCover = page
        }
    }

    public func pop(_ type: NavigationPopType = .push(last: 1)) {
        switch type {
        case .push(let last):
            path.removeLast(last)
        case .sheet:
            sheet = nil
        case .fullScreenCover:
            fullscreenCover = nil
        }
    }

    public func reset() {
        path.removeLast(path.count)
    }
}
