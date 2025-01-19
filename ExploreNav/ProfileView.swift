//
//  ProfileView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Profile")
        }
        .padding()
        .navigationTitle("Profile View")
    }
}

#Preview {
    ProfileView()
}
