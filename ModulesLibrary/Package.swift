// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModulesLibrary",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "Shared", targets: ["Shared"]),
        .library(name: "Home", targets: ["Home"]),
        .library(name: "Menu", targets: ["Menu"]),
        .library(name: "Profile", targets: ["Profile"]),
    ],
    targets: [
        .target(name: "Shared"), .testTarget(name: "SharedTests", dependencies: ["Shared"]),
        .target(name: "Home", dependencies: ["Shared"]), .testTarget(name: "HomeTests", dependencies: ["Home"]),
        .target(name: "Menu", dependencies: ["Shared"]), .testTarget(name: "MenuTests", dependencies: ["Menu"]),
        .target(name: "Profile", dependencies: ["Shared"]), .testTarget(name: "ProfileTests", dependencies: ["Profile"]),
    ]
)
