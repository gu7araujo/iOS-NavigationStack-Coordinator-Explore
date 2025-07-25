//
//  MenuView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct MenuView: View {
    
    @State var viewModel: MenuViewModel
    
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
                viewModel.navigateToProfile()
            }
        }
        .padding()
    }
}
