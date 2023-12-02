// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TeamCLibrary",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "TeamCLibrary",
            targets: ["TeamCLibrary"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/yukiny0811/easy-utilities", from: "1.0.7")
    ],
    targets: [
        .target(
            name: "TeamCLibrary",
            dependencies: [
                .product(name: "EasyUtilities", package: "easy-utilities")
            ]
        ),
    ]
)
