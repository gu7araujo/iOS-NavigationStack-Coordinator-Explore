//
//  ProfileView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct ProfileView: View {

    @State var viewModel: ProfileViewModel

    init(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text("Profile Screen!")
                .padding()

            Button("go to Profile Screen 2", action: viewModel.navigateToProfileScreen2)
        }
    }
}
