//
//  MenuView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Image(systemName: "graduationcap")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Let's Explore!")
        }
        .padding()
    }
}

#Preview {
    MenuView()
}
