//
//  MenuScreen3View.swift
//  ModulesLibrary
//
//  Created by Gustavo Araujo Santos on 8/4/25.
//

import SwiftUI

struct MenuScreen3View: View {

    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            MenuScreen3HomeView() // limitação: tabView dentro de tabView com NavigationStack própria
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)

            Text("Search!")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(1)

            Text("Profile!")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

struct MenuScreen3HomeView: View {

    enum Pages: Hashable {
        case first
        case second
    }

    @State var navigationPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack {
                Text("Menu Screen 3 Home!")
                    .padding()

                Button("go to second screen") {
                    navigationPath.append(Pages.second)
                }
            }
            .navigationDestination(for: Pages.self) { page in
                switch page {
                case .second:
                    VStack {
                        Text("Second screen!")
                    }
                default:
                    fatalError()
                }
            }
        }
    }
}
