//
//  MenuView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI
import Shared

struct MenuView: View {
    
    @State var viewModel: MenuViewModel
    @Environment(Coordinator<MenuRoutes>.self) private var coordinator

    init(viewModel: MenuViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Image(systemName: "graduationcap")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Let's Explore!")
            
            Button("go to Profile") {
//                viewModel.navigateToProfile()
            }
        }
        .padding()
    }
}
