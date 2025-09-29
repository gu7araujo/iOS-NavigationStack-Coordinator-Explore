// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModulesLibrary",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "Home", targets: ["Home"]),
        .library(name: "Menu", targets: ["Menu"])
    ],
    dependencies: [.package(path: "../SharedLibrary")],
    targets: [
        .target(name: "Home", dependencies: [.product(name: "Shared", package: "SharedLibrary")]), .testTarget(name: "HomeTests", dependencies: ["Home"]),
        .target(name: "Menu", dependencies: [.product(name: "Shared", package: "SharedLibrary")]), .testTarget(name: "MenuTests", dependencies: ["Menu"]),
    ]
)
