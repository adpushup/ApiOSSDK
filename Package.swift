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
            url: "https://github.com/adpushup/ApiOSSDK/releases/download/1.0.9/ApMobileSDK.xcframework.zip",
            checksum: "40d75dcdf8eeed429cc628c0446a16e0b8ab75b7d92e3864a03e34d37a155fae"
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
