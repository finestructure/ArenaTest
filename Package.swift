// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ArenaTest",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "ArenaTest",
            targets: ["ArenaTest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/finestructure/Parser", .exact("0.1.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ArenaTest",
            dependencies: ["Parser"]),
        .testTarget(
            name: "ArenaTestTests",
            dependencies: ["ArenaTest"]),
    ]
)
