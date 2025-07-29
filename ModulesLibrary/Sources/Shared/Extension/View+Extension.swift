//
//  View+Extension.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 7/29/25.
//

import SwiftUI

extension View {
    public func debugSheet(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil) -> some View {
        return sheet(isPresented: isPresented, onDismiss: onDismiss) {
            VStack {
                Text("Debug")
                Button {
                    onDismiss?()
                } label: {
                    Text("Go Back")
                }
            }
        }
    }
}
