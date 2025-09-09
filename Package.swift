// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "ApMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ApiOSSDK",
            targets: ["ApMobileSDK"]
        ),
    ],
    dependencies: [.package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.13.0")],
    targets: [
        .binaryTarget(
            name: "ApMobileSDK",
            url: "https://github.com/adpushup/ApiOSSDK/releases/download/1.0.5/ApMobileSDK.xcframework.zip",
            checksum: "7f9f67206fa3d270c7933218003fb4702d349b9f4dea8675f8a496f8d2aecb67"
        ),
        .target(
            name: "ApiOSSDK",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                "ApMobileSDK"
            ]
        )
    ]
)
