// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ApMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ApMobileSDK",
            targets: ["ApMobileSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "ApMobileSDK",
            url: "https://github.com/rishh18/ApMobileSDK/releases/download/0.0.1/ApMobileSDK.xcframework.zip",
            checksum: "e5e6c36b9b7977638bc1823680ab672c"
        )
    ]
)
