// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "DCBOR",
    platforms: [
        .macOS(.v13),
        .iOS(.v14),
        .macCatalyst(.v14)
    ],
    products: [
        .library(
            name: "DCBOR",
            targets: ["DCBOR"]),
    ],
    dependencies: [
        .package(url: "https://github.com/wolfmcnally/swift-collections", from: "1.1.0"),
        .package(url: "https://github.com/wolfmcnally/WolfBase", from: "6.0.0"),
        .package(url: "https://github.com/blockchaincommons/BCSwiftFloat16", from: "1.0.0"),
        .package(url: "https://github.com/BlockchainCommons/BCSwiftTags", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "DCBOR",
            dependencies: [
                .product(name: "BCFloat16", package: "BCSwiftFloat16"),
                .product(name: "Collections", package: "swift-collections"),
                .product(name: "BCTags", package: "BCSwiftTags"),
            ]),
        .testTarget(
            name: "DCBORTests",
            dependencies: [
                "DCBOR",
                "WolfBase",
            ]),
    ]
)
