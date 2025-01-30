//
//  MainCoordinatorView.swift
//  ExploreNav
//
//  Created by Gustavo Araujo Santos on 1/19/25.
//

import SwiftUI

struct MainCoordinatorView: View {
    
    @State private var tabSelected: String = HomeCoordinatorView.tag
    
    private let tabs: [Tab] = [
        Tab(coordinatorView: HomeCompositionRoot.buildHomeCoordinatorView()),
        Tab(coordinatorView: MenuCompositionRoot.builMenuCoordinatorView())
    ]
    
    var body: some View {
            TabView(selection: $tabSelected) {
                ForEach(tabs, id: \.self) { tab in
                    AnyView(tab.view())
                        .tabItem { AnyView(tab.label()) }
                        .tag(tab.tag)
                }
        }
    }
}
