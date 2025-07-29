//
//  ProfileView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct ProfileView<Route: RoutableProtocol>: View {

    @State var viewModel: ProfileViewModel
    @Environment(Coordinator<Route>.self) private var coordinator

    init(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Profile")

            Button("go to next screen") {
                // limitação: não conseguir navegar para outra tela de forma abstrata (sem conhecer o RoutableProtocol específico)
            }

            Button("back") {
                coordinator.pop()
            }
        }
        .padding()
        .navigationTitle("Profile View")
    }
}
