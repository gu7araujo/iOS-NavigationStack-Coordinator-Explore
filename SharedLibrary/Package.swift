// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharedLibrary",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "Shared", type: .dynamic, targets: ["Shared"]),
    ],
    targets: [
        .target(name: "Shared"), .testTarget(name: "SharedTests", dependencies: ["Shared"]),
    ]
)
