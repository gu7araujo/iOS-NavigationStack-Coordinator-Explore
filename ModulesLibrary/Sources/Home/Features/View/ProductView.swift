//
//  ProductView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI
import Shared

struct ProductView: View {
    
    @State var viewModel: ProductViewModel

    init(viewModel: ProductViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text("Product Screen!")
                .padding()

            Button("go to Settings (push)", action: viewModel.goToSettings)
            Button("back", action: viewModel.goBack)
        }
    }
}
