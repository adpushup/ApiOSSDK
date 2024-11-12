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
            checksum: "dd04ef1f6cfd32f8885b72474330f417"
        )
    ]
)
