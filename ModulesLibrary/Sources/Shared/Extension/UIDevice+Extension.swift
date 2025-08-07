//
//  UIDevice+Extension.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/29/25.
//

import SwiftUI

public extension UIDevice {
    static let changeTabNotification = Notification.Name(rawValue: "changeTabNotification")
    static let deviceDidShakeNotification = Notification.Name(rawValue: "deviceDidShakeNotification")
    static let homeLinkNotication = Notification.Name(rawValue: "homeLinkNotication")
}
