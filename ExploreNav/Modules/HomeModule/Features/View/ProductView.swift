//
//  ProductView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/23/25.
//

import SwiftUI

struct ProductView: View {
    
    @State var viewModel: ProductViewModel
    
    init(viewModel: ProductViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Image(systemName: "car.circle")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Product")
            
            Button("back") {
                viewModel.back()
            }
        }
        .padding()
    }
}
