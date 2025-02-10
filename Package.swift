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
            targets: ["ApiOSSDK"]
        ),
    ],
    dependencies: [.package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.0")],
    targets: [
        .binaryTarget(
            name: "ApMobileSDK",
            url: "https://github.com/adpushup/ApiOSSDK/releases/download/1.1.12/ApMobileSDK.xcframework.zip",
            checksum: "78efcd6aae4af97b8033846e62bae9c8eecfb5cbc988a2dd625601f137e8b305"
        ),
        .target(
          name: "ApiOSSDK",
          dependencies: [.target(name: "ApMobileSDK"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
          ],
          path: "Sources/ApiOSSDK"
        )
    ]
)
