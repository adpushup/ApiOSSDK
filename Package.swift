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
    dependencies: [.package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.0")],
    targets: [
        .binaryTarget(
            name: "ApMobileSDK",
            url: "https://github.com/adpushup/ApiOSSDK/releases/download/1.0.24/ApMobileSDK.xcframework.zip",
            checksum: "b6ef09b83dc1df35a955669f3818a245610d907eb07ebef756b9a3d53dc6c07f"
        )
    ]
)
