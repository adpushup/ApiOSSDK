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
    dependencies: [.package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "ApMobileSDK",
            url: "https://github.com/adpushup/ApiOSSDK/releases/tag/v1.0.0/ApMobileSDK.xcframework.zip",
            dependencies: [.product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")],
            checksum: "e5e6c36b9b7977638bc1823680ab672c"
        )
    ]
)
