//
//  UIWindow+Extension.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/29/25.
//

import SwiftUI

extension UIWindow {
     open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotification, object: nil)
        }
     }
}
